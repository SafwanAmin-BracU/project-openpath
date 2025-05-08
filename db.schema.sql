-- Users table
CREATE TABLE users (
    id UUID PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    name VARCHAR(100),
    bio TEXT,
    avatar_url VARCHAR(255),
    location VARCHAR(100),
    company VARCHAR(100),
    website VARCHAR(255),
    github_username VARCHAR(50),
    twitter_username VARCHAR(50),
    linkedin_username VARCHAR(50),
    join_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- User settings
CREATE TABLE user_settings (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    theme VARCHAR(20) DEFAULT 'system',
    email_notifications BOOLEAN DEFAULT TRUE,
    push_notifications BOOLEAN DEFAULT TRUE,
    profile_visibility VARCHAR(20) DEFAULT 'public',
    weekly_digest BOOLEAN DEFAULT TRUE,
    monthly_insights BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Projects table
CREATE TABLE projects (
    id UUID PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    repository_url VARCHAR(255),
    stars INTEGER DEFAULT 0,
    health_score DECIMAL(3, 1),
    difficulty VARCHAR(20),
    maintainer_response VARCHAR(50),
    good_first_issues INTEGER DEFAULT 0,
    open_issues INTEGER DEFAULT 0,
    contributors_count INTEGER DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Project tags
CREATE TABLE project_tags (
    id UUID PRIMARY KEY,
    project_id UUID NOT NULL REFERENCES projects (id) ON DELETE CASCADE,
    tag VARCHAR(50) NOT NULL,
    UNIQUE (project_id, tag)
);

-- User-Project relationship
CREATE TABLE user_projects (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    project_id UUID NOT NULL REFERENCES projects (id) ON DELETE CASCADE,
    skill_match INTEGER,
    saved BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (user_id, project_id)
);

-- Contributions
CREATE TABLE contributions (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    project_id UUID NOT NULL REFERENCES projects (id) ON DELETE CASCADE,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    pr_number VARCHAR(20),
    type VARCHAR(50) NOT NULL,
    status VARCHAR(20) NOT NULL,
    url VARCHAR(255),
    lines_of_code INTEGER DEFAULT 0,
    submitted_at TIMESTAMP NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Skills
CREATE TABLE skills (
    id UUID PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    category VARCHAR(50),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- User skills
CREATE TABLE user_skills (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    skill_id UUID NOT NULL REFERENCES skills (id) ON DELETE CASCADE,
    level INTEGER NOT NULL DEFAULT 0,
    progress INTEGER NOT NULL DEFAULT 0,
    growth INTEGER DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (user_id, skill_id)
);

-- Communities
CREATE TABLE communities (
    id UUID PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    image_url VARCHAR(255),
    members_count INTEGER DEFAULT 0,
    activity_level VARCHAR(20),
    events_count INTEGER DEFAULT 0,
    discussions_count INTEGER DEFAULT 0,
    projects_count INTEGER DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Community topics
CREATE TABLE community_topics (
    id UUID PRIMARY KEY,
    community_id UUID NOT NULL REFERENCES communities (id) ON DELETE CASCADE,
    topic VARCHAR(50) NOT NULL,
    UNIQUE (community_id, topic)
);

-- User-Community relationship
CREATE TABLE user_communities (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    community_id UUID NOT NULL REFERENCES communities (id) ON DELETE CASCADE,
    joined_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (user_id, community_id)
);

-- Mentors
CREATE TABLE mentors (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    role VARCHAR(100),
    bio TEXT,
    availability VARCHAR(50),
    rating DECIMAL(2, 1) DEFAULT 0.0,
    reviews_count INTEGER DEFAULT 0,
    projects_count INTEGER DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (user_id)
);

-- Mentor expertise
CREATE TABLE mentor_expertise (
    id UUID PRIMARY KEY,
    mentor_id UUID NOT NULL REFERENCES mentors (id) ON DELETE CASCADE,
    expertise VARCHAR(50) NOT NULL,
    UNIQUE (mentor_id, expertise)
);

-- Events
CREATE TABLE events (
    id UUID PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    location VARCHAR(100),
    type VARCHAR(20) NOT NULL,
    organizer VARCHAR(100),
    attendees_count INTEGER DEFAULT 0,
    image_url VARCHAR(255),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Event tags
CREATE TABLE event_tags (
    id UUID PRIMARY KEY,
    event_id UUID NOT NULL REFERENCES events (id) ON DELETE CASCADE,
    tag VARCHAR(50) NOT NULL,
    UNIQUE (event_id, tag)
);

-- User-Event relationship
CREATE TABLE user_events (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    event_id UUID NOT NULL REFERENCES events (id) ON DELETE CASCADE,
    saved BOOLEAN DEFAULT FALSE,
    registered BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (user_id, event_id)
);

-- Discussions
CREATE TABLE discussions (
    id UUID PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    community_id UUID NOT NULL REFERENCES communities (id) ON DELETE CASCADE,
    author_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    replies_count INTEGER DEFAULT 0,
    views_count INTEGER DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Discussion tags
CREATE TABLE discussion_tags (
    id UUID PRIMARY KEY,
    discussion_id UUID NOT NULL REFERENCES discussions (id) ON DELETE CASCADE,
    tag VARCHAR(50) NOT NULL,
    UNIQUE (discussion_id, tag)
);

-- Learning paths
CREATE TABLE learning_paths (
    id UUID PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    level VARCHAR(20) NOT NULL,
    estimated_time VARCHAR(50),
    image_url VARCHAR(255),
    modules_count INTEGER DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Learning path skills
CREATE TABLE learning_path_skills (
    id UUID PRIMARY KEY,
    learning_path_id UUID NOT NULL REFERENCES learning_paths (id) ON DELETE CASCADE,
    skill_id UUID NOT NULL REFERENCES skills (id) ON DELETE CASCADE,
    UNIQUE (learning_path_id, skill_id)
);

-- User-Learning path relationship
CREATE TABLE user_learning_paths (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    learning_path_id UUID NOT NULL REFERENCES learning_paths (id) ON DELETE CASCADE,
    progress INTEGER DEFAULT 0,
    completed_modules INTEGER DEFAULT 0,
    started_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (user_id, learning_path_id)
);

-- Tutorials
CREATE TABLE tutorials (
    id UUID PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    duration VARCHAR(20),
    type VARCHAR(20) NOT NULL,
    author VARCHAR(100),
    level VARCHAR(20) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Tutorial tags
CREATE TABLE tutorial_tags (
    id UUID PRIMARY KEY,
    tutorial_id UUID NOT NULL REFERENCES tutorials (id) ON DELETE CASCADE,
    tag VARCHAR(50) NOT NULL,
    UNIQUE (tutorial_id, tag)
);

-- User-Tutorial relationship
CREATE TABLE user_tutorials (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    tutorial_id UUID NOT NULL REFERENCES tutorials (id) ON DELETE CASCADE,
    saved BOOLEAN DEFAULT FALSE,
    progress INTEGER DEFAULT 0,
    completed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (user_id, tutorial_id)
);

-- Challenges
CREATE TABLE challenges (
    id UUID PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    difficulty VARCHAR(20) NOT NULL,
    estimated_time VARCHAR(20),
    participants_count INTEGER DEFAULT 0,
    completion_rate INTEGER DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Challenge skills
CREATE TABLE challenge_skills (
    id UUID PRIMARY KEY,
    challenge_id UUID NOT NULL REFERENCES challenges (id) ON DELETE CASCADE,
    skill VARCHAR(50) NOT NULL,
    UNIQUE (challenge_id, skill)
);

-- User-Challenge relationship
CREATE TABLE user_challenges (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    challenge_id UUID NOT NULL REFERENCES challenges (id) ON DELETE CASCADE,
    status VARCHAR(20) DEFAULT 'not_started',
    started_at TIMESTAMP,
    completed_at TIMESTAMP,
    UNIQUE (user_id, challenge_id)
);

-- Achievements
CREATE TABLE achievements (
    id UUID PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    icon VARCHAR(20),
    total_steps INTEGER DEFAULT 1,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- User-Achievement relationship
CREATE TABLE user_achievements (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    achievement_id UUID NOT NULL REFERENCES achievements (id) ON DELETE CASCADE,
    earned BOOLEAN DEFAULT FALSE,
    progress INTEGER DEFAULT 0,
    earned_at TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (user_id, achievement_id)
);

-- Analytics
CREATE TABLE analytics (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    total_contributions INTEGER DEFAULT 0,
    projects_contributed INTEGER DEFAULT 0,
    lines_of_code INTEGER DEFAULT 0,
    issues_closed INTEGER DEFAULT 0,
    avg_response_time DECIMAL(3, 1),
    avg_completion_time DECIMAL(3, 1),
    contribution_streak INTEGER DEFAULT 0,
    most_active_day VARCHAR(20),
    most_active_time VARCHAR(20),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (user_id)
);

-- Contribution by type
CREATE TABLE contribution_by_type (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    type VARCHAR(50) NOT NULL,
    count INTEGER DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (user_id, type)
);

-- Contribution by project
CREATE TABLE contribution_by_project (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    project_id UUID NOT NULL REFERENCES projects (id) ON DELETE CASCADE,
    count INTEGER DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (user_id, project_id)
);

-- Activity
CREATE TABLE activities (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    type VARCHAR(50) NOT NULL,
    title VARCHAR(255) NOT NULL,
    project VARCHAR(100),
    status VARCHAR(20),
    performed_at TIMESTAMP NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes for performance
CREATE INDEX idx_user_projects_user_id ON user_projects (user_id);

CREATE INDEX idx_user_projects_project_id ON user_projects (project_id);

CREATE INDEX idx_contributions_user_id ON contributions (user_id);

CREATE INDEX idx_contributions_project_id ON contributions (project_id);

CREATE INDEX idx_user_skills_user_id ON user_skills (user_id);

CREATE INDEX idx_user_communities_user_id ON user_communities (user_id);

CREATE INDEX idx_user_events_user_id ON user_events (user_id);

CREATE INDEX idx_discussions_author_id ON discussions (author_id);

CREATE INDEX idx_discussions_community_id ON discussions (community_id);

CREATE INDEX idx_user_learning_paths_user_id ON user_learning_paths (user_id);

CREATE INDEX idx_user_tutorials_user_id ON user_tutorials (user_id);

CREATE INDEX idx_user_challenges_user_id ON user_challenges (user_id);

CREATE INDEX idx_user_achievements_user_id ON user_achievements (user_id);

CREATE INDEX idx_activities_user_id ON activities (user_id);

CREATE INDEX idx_activities_performed_at ON activities (performed_at);