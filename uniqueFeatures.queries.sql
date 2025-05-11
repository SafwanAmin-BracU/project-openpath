-- Create a view for calculating skill match scores
CREATE VIEW project_skill_matches AS
WITH user_skill_levels AS (
  SELECT 
    us.user_id,
    us.skill_id,
    us.proficiency,
    s.name as skill_name,
    s.category
  FROM user_skills us
  JOIN skills s ON us.skill_id = s.id
),
project_skill_requirements AS (
  SELECT 
    pr.project_id,
    pr.skill_id,
    s.name as skill_name,
    s.category
  FROM project_requirements pr
  JOIN skills s ON pr.skill_id = s.id
)
SELECT 
  usl.user_id,
  psr.project_id,
  COUNT(psr.skill_id) AS total_required_skills,
  SUM(CASE WHEN usl.skill_id IS NOT NULL THEN 1 ELSE 0 END) AS matching_skills,
  SUM(CASE WHEN usl.skill_id IS NOT NULL THEN usl.proficiency ELSE 0 END) AS skill_proficiency_sum,
  ROUND(
    (SUM(CASE WHEN usl.skill_id IS NOT NULL THEN 1 ELSE 0 END)::float / COUNT(psr.skill_id)) * 100
  ) AS match_percentage,
  ROUND(
    (SUM(CASE WHEN usl.skill_id IS NOT NULL THEN usl.proficiency ELSE 0 END)::float / 
    (COUNT(psr.skill_id) * 100)) * 100
  ) AS weighted_match_percentage
FROM project_skill_requirements psr
LEFT JOIN user_skill_levels usl ON psr.skill_id = usl.skill_id
GROUP BY usl.user_id, psr.project_id;

-- Function to get personalized project recommendations
CREATE OR REPLACE FUNCTION get_project_recommendations(user_id UUID, limit_count INTEGER DEFAULT 10)
RETURNS TABLE (
  project_id UUID,
  project_name VARCHAR,
  match_percentage INTEGER,
  weighted_match_percentage INTEGER,
  matching_skills INTEGER,
  total_required_skills INTEGER,
  difficulty VARCHAR,
  community_support INTEGER
) AS $$
BEGIN
  RETURN QUERY
  SELECT 
    p.id as project_id,
    p.name as project_name,
    psm.match_percentage,
    psm.weighted_match_percentage,
    psm.matching_skills,
    psm.total_required_skills,
    p.difficulty,
    p.community_support
  FROM project_skill_matches psm
  JOIN projects p ON psm.project_id = p.id
  WHERE psm.user_id = get_project_recommendations.user_id
  AND psm.match_percentage > 30  -- Only show projects with at least 30% skill match
  ORDER BY 
    psm.weighted_match_percentage DESC,
    p.stars DESC
  LIMIT limit_count;
END;
$$ LANGUAGE plpgsql;


-- Create tables for tracking contribution impact
CREATE TABLE contribution_metrics (
  id UUID PRIMARY KEY,
  contribution_id UUID NOT NULL REFERENCES contributions(id) ON DELETE CASCADE,
  lines_added INTEGER DEFAULT 0,
  lines_removed INTEGER DEFAULT 0,
  files_changed INTEGER DEFAULT 0,
  complexity_score INTEGER DEFAULT 0,  -- Higher means more complex changes
  review_time_hours DECIMAL(5,2) DEFAULT 0,
  discussion_count INTEGER DEFAULT 0,
  merge_time_hours DECIMAL(5,2) DEFAULT 0,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Create a view for aggregated impact metrics
CREATE VIEW user_impact_metrics AS
SELECT 
  u.id as user_id,
  u.username,
  COUNT(DISTINCT c.id) AS total_contributions,
  COUNT(DISTINCT c.project_id) AS projects_contributed,
  SUM(cm.lines_added) AS total_lines_added,
  SUM(cm.lines_removed) AS total_lines_removed,
  SUM(cm.files_changed) AS total_files_changed,
  ROUND(AVG(cm.complexity_score), 2) AS avg_complexity,
  ROUND(AVG(cm.review_time_hours), 2) AS avg_review_time,
  ROUND(AVG(cm.merge_time_hours), 2) AS avg_merge_time,
  COUNT(DISTINCT CASE WHEN c.type = 'code' THEN c.id END) AS code_contributions,
  COUNT(DISTINCT CASE WHEN c.type = 'documentation' THEN c.id END) AS documentation_contributions,
  COUNT(DISTINCT CASE WHEN c.type = 'bug_fix' THEN c.id END) AS bug_fix_contributions,
  COUNT(DISTINCT CASE WHEN c.type = 'feature' THEN c.id END) AS feature_contributions
FROM users u
LEFT JOIN contributions c ON u.id = c.user_id
LEFT JOIN contribution_metrics cm ON c.id = cm.contribution_id
GROUP BY u.id, u.username;

-- Function to calculate a user's impact score
CREATE OR REPLACE FUNCTION calculate_impact_score(user_id UUID)
RETURNS INTEGER AS $$
DECLARE
  impact_score INTEGER;
BEGIN
  SELECT 
    (total_contributions * 5) +
    (projects_contributed * 10) +
    (total_lines_added * 0.01) +
    (total_files_changed * 0.5) +
    (avg_complexity * 2) +
    (code_contributions * 3) +
    (documentation_contributions * 4) +
    (bug_fix_contributions * 5) +
    (feature_contributions * 7)
  INTO impact_score
  FROM user_impact_metrics
  WHERE user_id = calculate_impact_score.user_id;
  
  RETURN COALESCE(impact_score, 0);
END;
$$ LANGUAGE plpgsql;

-- Trigger to update impact metrics when contributions change
CREATE OR REPLACE FUNCTION update_contribution_impact()
RETURNS TRIGGER AS $$
BEGIN
  -- Update the contribution metrics
  INSERT INTO contribution_metrics (
    id, 
    contribution_id, 
    lines_added, 
    lines_removed,
    files_changed,
    complexity_score
  )
  VALUES (
    gen_random_uuid(),
    NEW.id,
    NEW.lines_added,
    NEW.lines_removed,
    NEW.files_changed,
    CASE 
      WHEN NEW.type = 'feature' THEN 8
      WHEN NEW.type = 'bug_fix' THEN 5
      WHEN NEW.type = 'documentation' THEN 3
      ELSE 4
    END
  )
  ON CONFLICT (contribution_id) 
  DO UPDATE SET
    lines_added = EXCLUDED.lines_added,
    lines_removed = EXCLUDED.lines_removed,
    files_changed = EXCLUDED.files_changed,
    complexity_score = EXCLUDED.complexity_score;
    
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER contribution_impact_trigger
AFTER INSERT OR UPDATE ON contributions
FOR EACH ROW EXECUTE FUNCTION update_contribution_impact();

-- Create tables for the reputation system
CREATE TABLE reputation_events (
  id UUID PRIMARY KEY,
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  event_type VARCHAR(50) NOT NULL,
  points INTEGER NOT NULL,
  source_id UUID,  -- Can reference various entities (contributions, reviews, etc.)
  source_type VARCHAR(50),
  description TEXT,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE skill_endorsements (
  id UUID PRIMARY KEY,
  endorsed_user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  endorser_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  skill_id UUID NOT NULL REFERENCES skills(id) ON DELETE CASCADE,
  level INTEGER NOT NULL CHECK (level BETWEEN 1 AND 5),
  comment TEXT,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE(endorsed_user_id, endorser_id, skill_id)
);

CREATE TABLE trust_relationships (
  id UUID PRIMARY KEY,
  truster_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  trusted_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  trust_level INTEGER NOT NULL CHECK (trust_level BETWEEN 1 AND 5),
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE(truster_id, trusted_id)
);

-- Create views for reputation calculations
CREATE VIEW user_reputation AS
SELECT 
  user_id,
  SUM(points) AS total_reputation,
  SUM(CASE WHEN event_type = 'contribution_accepted' THEN points ELSE 0 END) AS contribution_points,
  SUM(CASE WHEN event_type = 'review_completed' THEN points ELSE 0 END) AS review_points,
  SUM(CASE WHEN event_type = 'question_answered' THEN points ELSE 0 END) AS help_points,
  SUM(CASE WHEN event_type = 'endorsed' THEN points ELSE 0 END) AS endorsement_points,
  COUNT(DISTINCT CASE WHEN event_type = 'contribution_accepted' THEN source_id END) AS accepted_contributions,
  COUNT(DISTINCT CASE WHEN event_type = 'review_completed' THEN source_id END) AS completed_reviews
FROM reputation_events
GROUP BY user_id;

CREATE VIEW user_skill_endorsements AS
SELECT 
  se.endorsed_user_id,
  se.skill_id,
  s.name AS skill_name,
  COUNT(se.id) AS endorsement_count,
  ROUND(AVG(se.level), 1) AS average_endorsement_level,
  array_agg(DISTINCT se.endorser_id) AS endorsers
FROM skill_endorsements se
JOIN skills s ON se.skill_id = s.id
GROUP BY se.endorsed_user_id, se.skill_id, s.name;

-- Function to calculate trust score between users
CREATE OR REPLACE FUNCTION calculate_trust_score(user1_id UUID, user2_id UUID)
RETURNS INTEGER AS $$
DECLARE
  direct_trust INTEGER;
  network_trust DECIMAL;
  contribution_overlap INTEGER;
  skill_similarity DECIMAL;
  final_score INTEGER;
BEGIN
  -- Check for direct trust relationship
  SELECT trust_level INTO direct_trust
  FROM trust_relationships
  WHERE truster_id = user1_id AND trusted_id = user2_id;
  
  -- Calculate network trust (mutual connections)
  SELECT COUNT(*) INTO network_trust
  FROM trust_relationships tr1
  JOIN trust_relationships tr2 ON tr1.trusted_id = tr2.truster_id
  WHERE tr1.truster_id = user1_id AND tr2.trusted_id = user2_id;
  
  -- Calculate contribution overlap (contributions to same projects)
  SELECT COUNT(DISTINCT c1.project_id) INTO contribution_overlap
  FROM contributions c1
  JOIN contributions c2 ON c1.project_id = c2.project_id
  WHERE c1.user_id = user1_id AND c2.user_id = user2_id;
  
  -- Calculate skill similarity
  SELECT 
    COUNT(us1.skill_id)::decimal / 
    (SELECT COUNT(*) FROM user_skills WHERE user_id IN (user1_id, user2_id))
  INTO skill_similarity
  FROM user_skills us1
  JOIN user_skills us2 ON us1.skill_id = us2.skill_id
  WHERE us1.user_id = user1_id AND us2.user_id = user2_id;
  
  -- Calculate final trust score
  final_score := COALESCE(direct_trust * 20, 0) + 
                 (network_trust * 5) + 
                 (contribution_overlap * 10) + 
                 (skill_similarity * 50);
                 
  RETURN LEAST(100, final_score);  -- Cap at 100
END;
$$ LANGUAGE plpgsql;

-- Function to add reputation points
CREATE OR REPLACE FUNCTION add_reputation_event(
  user_id UUID,
  event_type VARCHAR,
  points INTEGER,
  source_id UUID DEFAULT NULL,
  source_type VARCHAR DEFAULT NULL,
  description TEXT DEFAULT NULL
)
RETURNS UUID AS $$
DECLARE
  event_id UUID;
BEGIN
  event_id := gen_random_uuid();
  
  INSERT INTO reputation_events (
    id, user_id, event_type, points, source_id, source_type, description
  ) VALUES (
    event_id, user_id, event_type, points, source_id, source_type, description
  );
  
  RETURN event_id;
END;
$$ LANGUAGE plpgsql;

-- Trigger to add reputation when contributions are accepted
CREATE OR REPLACE FUNCTION contribution_reputation_trigger()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.status = 'merged' AND (OLD.status IS NULL OR OLD.status <> 'merged') THEN
    -- Calculate points based on contribution type and complexity
    DECLARE
      points INTEGER;
    BEGIN
      SELECT 
        CASE 
          WHEN NEW.type = 'feature' THEN 20
          WHEN NEW.type = 'bug_fix' THEN 15
          WHEN NEW.type = 'documentation' THEN 10
          ELSE 5
        END
      INTO points;
      
      -- Add reputation event
      PERFORM add_reputation_event(
        NEW.user_id,
        'contribution_accepted',
        points,
        NEW.id,
        'contribution',
        'Contribution merged: ' || NEW.title
      );
    END;
  END IF;
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER contribution_reputation_trigger
AFTER UPDATE ON contributions
FOR EACH ROW EXECUTE FUNCTION contribution_reputation_trigger();