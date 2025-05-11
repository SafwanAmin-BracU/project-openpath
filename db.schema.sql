-- Users table (student in the ERD)
CREATE TABLE users (
    id UUID PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    name VARCHAR(100),
    github_username VARCHAR(50),
    phone VARCHAR(20),
    city VARCHAR(100),
    state VARCHAR(50),
    postal_code VARCHAR(20),
    address_line1 VARCHAR(255),
    address_line2 VARCHAR(255),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Projects table
CREATE TABLE projects (
    id UUID PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    repository_url VARCHAR(255),
    community_support INTEGER DEFAULT 0,
    maintainer_engagement VARCHAR(50),
    difficulty VARCHAR(20),
    stars INTEGER DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Skills table
CREATE TABLE skills (
    id UUID PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    category VARCHAR(50),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Communities table
CREATE TABLE communities (
    id UUID PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    image_url VARCHAR(255),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Posts table
CREATE TABLE posts (
    id UUID PRIMARY KEY,
    user_id UUID REFERENCES users (id) ON DELETE CASCADE,
    community_id UUID REFERENCES communities (id) ON DELETE SET NULL,
    category VARCHAR(50),
    title VARCHAR(255),
    content TEXT NOT NULL,
    posted_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Comments table (for post comments)
CREATE TABLE comments (
    id UUID PRIMARY KEY,
    post_id UUID NOT NULL REFERENCES posts (id) ON DELETE CASCADE,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    content TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- User-Community relationship (part of)
CREATE TABLE user_communities (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    community_id UUID NOT NULL REFERENCES communities (id) ON DELETE CASCADE,
    joined_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (user_id, community_id)
);

-- Community moderation
CREATE TABLE community_moderators (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    community_id UUID NOT NULL REFERENCES communities (id) ON DELETE CASCADE,
    appointed_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (user_id, community_id)
);

-- Project issues
CREATE TABLE project_issues (
    id UUID PRIMARY KEY,
    project_id UUID NOT NULL REFERENCES projects (id) ON DELETE CASCADE,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(20) DEFAULT 'open',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Project languages
CREATE TABLE project_languages (
    id UUID PRIMARY KEY,
    project_id UUID NOT NULL REFERENCES projects (id) ON DELETE CASCADE,
    language VARCHAR(50) NOT NULL,
    UNIQUE (project_id, language)
);

-- Project requirements (skills needed)
CREATE TABLE project_requirements (
    id UUID PRIMARY KEY,
    project_id UUID NOT NULL REFERENCES projects (id) ON DELETE CASCADE,
    skill_id UUID NOT NULL REFERENCES skills (id) ON DELETE CASCADE,
    UNIQUE (project_id, skill_id)
);

-- Pull requests
CREATE TABLE pull_requests (
    id UUID PRIMARY KEY,
    project_id UUID NOT NULL REFERENCES projects (id) ON DELETE CASCADE,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    lines_added INTEGER DEFAULT 0,
    lines_removed INTEGER DEFAULT 0,
    status VARCHAR(20) DEFAULT 'open',
    submitted_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Contributions (belong to)
CREATE TABLE contributions (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    project_id UUID NOT NULL REFERENCES projects (id) ON DELETE CASCADE,
    description TEXT,
    type VARCHAR(50),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- User skills (acquire)
CREATE TABLE user_skills (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    skill_id UUID NOT NULL REFERENCES skills (id) ON DELETE CASCADE,
    proficiency INTEGER DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (user_id, skill_id)
);

-- Milestones
CREATE TABLE milestones (
    id UUID PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Milestone criteria
CREATE TABLE milestone_criteria (
    id UUID PRIMARY KEY,
    milestone_id UUID NOT NULL REFERENCES milestones (id) ON DELETE CASCADE,
    criteria TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- User achievements
CREATE TABLE user_achievements (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    milestone_id UUID NOT NULL REFERENCES milestones (id) ON DELETE CASCADE,
    score INTEGER DEFAULT 0,
    earned_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (user_id, milestone_id)
);

-- Project milestones
CREATE TABLE project_milestones (
    id UUID PRIMARY KEY,
    project_id UUID NOT NULL REFERENCES projects (id) ON DELETE CASCADE,
    milestone_id UUID NOT NULL REFERENCES milestones (id) ON DELETE CASCADE,
    UNIQUE (project_id, milestone_id)
);

-- Tutorials
CREATE TABLE tutorials (
    id UUID PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    content TEXT,
    description TEXT,
    type VARCHAR(50),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Tutorial steps
CREATE TABLE tutorial_steps (
    id UUID PRIMARY KEY,
    tutorial_id UUID NOT NULL REFERENCES tutorials (id) ON DELETE CASCADE,
    step_number INTEGER NOT NULL,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (tutorial_id, step_number)
);

-- User follows (for feed)
CREATE TABLE user_follows (
    id UUID PRIMARY KEY,
    follower_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    followed_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (follower_id, followed_id)
);

-- Feed items (personalized feed)
CREATE TABLE feed_items (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    post_id UUID REFERENCES posts (id) ON DELETE CASCADE,
    contribution_id UUID REFERENCES contributions (id) ON DELETE CASCADE,
    pull_request_id UUID REFERENCES pull_requests (id) ON DELETE CASCADE,
    achievement_id UUID REFERENCES user_achievements (id) ON DELETE CASCADE,
    item_type VARCHAR(50) NOT NULL,
    is_read BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CHECK (
        (
            post_id IS NOT NULL
            AND contribution_id IS NULL
            AND pull_request_id IS NULL
            AND achievement_id IS NULL
        )
        OR (
            post_id IS NULL
            AND contribution_id IS NOT NULL
            AND pull_request_id IS NULL
            AND achievement_id IS NULL
        )
        OR (
            post_id IS NULL
            AND contribution_id IS NULL
            AND pull_request_id IS NOT NULL
            AND achievement_id IS NULL
        )
        OR (
            post_id IS NULL
            AND contribution_id IS NULL
            AND pull_request_id IS NULL
            AND achievement_id IS NOT NULL
        )
    )
);

-- Indexes for performance
CREATE INDEX idx_posts_user_id ON posts (user_id);

CREATE INDEX idx_posts_community_id ON posts (community_id);

CREATE INDEX idx_posts_posted_at ON posts (posted_at);

CREATE INDEX idx_user_communities_user_id ON user_communities (user_id);

CREATE INDEX idx_contributions_user_id ON contributions (user_id);

CREATE INDEX idx_contributions_project_id ON contributions (project_id);

CREATE INDEX idx_user_skills_user_id ON user_skills (user_id);

CREATE INDEX idx_pull_requests_user_id ON pull_requests (user_id);

CREATE INDEX idx_pull_requests_project_id ON pull_requests (project_id);

CREATE INDEX idx_feed_items_user_id ON feed_items (user_id);

CREATE INDEX idx_feed_items_created_at ON feed_items (created_at);

CREATE INDEX idx_user_follows_follower_id ON user_follows (follower_id);