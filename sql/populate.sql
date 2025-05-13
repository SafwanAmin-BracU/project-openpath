-- Skills (12)
BEGIN
INSERT INTO
    skills (name)
VALUES
    ('JavaScript'),
    ('Python'),
    ('Java'),
    ('C++'),
    ('HTML'),
    ('CSS'),
    ('React'),
    ('Node.js'),
    ('SQL'),
    ('Docker'),
    ('Git'),
    ('TypeScript');

-- Users (4)
INSERT INTO
    users (
        name,
        email,
        password_hash_value,
        session_token,
        session_token_expires
    )
VALUES
    (
        'Alice',
        'alice@example.com',
        '0771382e88bb08402547cd4bfd0f3a7fc742e9e27fea8889db6207ee23b9c82e',
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11',
        NOW () + INTERVAL '15 minutes'
    ),
    (
        'Bob',
        'bob@example.com',
        '550c7a6d0859d0773541dd478bd49214188b9358549d3519ea542442f86e079c',
        'b1eebc99-9c0b-4ef8-bb6d-6bb9bd380a12',
        NOW () + INTERVAL '15 minutes'
    ),
    (
        'Charlie',
        'charlie@example.com',
        'd86cd00f99840ea2059003944cd7866d7e4e536a6f80338ca479508854686ebe',
        'c2eebc99-9c0b-4ef8-bb6d-6bb9bd380a13',
        NOW () + INTERVAL '15 minutes'
    ),
    (
        'Dana',
        'dana@example.com',
        'd23cb92f8b114dbbca3f5e3d99264a0ad77f3fffec1b77058ac0fc556573d54b',
        'd3eebc99-9c0b-4ef8-bb6d-6bb9bd380a14',
        NOW () + INTERVAL '15 minutes'
    );

-- Projects (25)
INSERT INTO
    projects (
        name,
        summary,
        stars,
        health_score,
        contributor_count,
        issue_count,
        difficulty
    )
VALUES
    (
        'Web Framework',
        'Modern web development framework',
        1500,
        85,
        20,
        12,
        'Medium'
    ),
    (
        'Mobile App',
        'Cross-platform mobile application',
        800,
        75,
        15,
        8,
        'Hard'
    ),
    (
        'E-commerce Platform',
        'Open-source online marketplace',
        4500,
        92,
        50,
        25,
        'Hard'
    ),
    (
        'Data Analytics',
        'Big data processing system',
        2300,
        88,
        30,
        18,
        'Hard'
    ),
    (
        'DevOps Toolkit',
        'Infrastructure automation suite',
        1200,
        82,
        25,
        15,
        'Medium'
    ),
    (
        'UI Component Library',
        'Reusable React components',
        950,
        78,
        18,
        10,
        'Easy'
    ),
    (
        'Machine Learning Platform',
        'End-to-end ML pipeline',
        3200,
        90,
        40,
        20,
        'Hard'
    ),
    (
        'Game Engine',
        '2D/3D game development framework',
        670,
        70,
        12,
        6,
        'Hard'
    ),
    (
        'CMS Platform',
        'Headless content management',
        2800,
        85,
        35,
        22,
        'Medium'
    ),
    (
        'API Gateway',
        'Microservices management layer',
        890,
        80,
        20,
        14,
        'Medium'
    ),
    (
        'IoT Platform',
        'Device management dashboard',
        430,
        65,
        10,
        8,
        'Hard'
    ),
    (
        'Social Network',
        'Decentralized social media',
        150,
        60,
        8,
        5,
        'Hard'
    ),
    (
        'E-learning Platform',
        'Online course marketplace',
        2400,
        87,
        28,
        16,
        'Medium'
    ),
    (
        'Cybersecurity Toolkit',
        'Network monitoring suite',
        540,
        73,
        15,
        9,
        'Hard'
    ),
    (
        'AR Navigation',
        'Augmented reality wayfinding',
        320,
        68,
        9,
        7,
        'Hard'
    ),
    (
        'Blockchain Explorer',
        'Transaction analysis tool',
        780,
        77,
        19,
        11,
        'Medium'
    ),
    (
        'Food Delivery App',
        'Restaurant ordering system',
        2100,
        84,
        32,
        19,
        'Medium'
    ),
    (
        'Fitness Tracker',
        'Health monitoring platform',
        670,
        76,
        14,
        8,
        'Medium'
    ),
    (
        'Stock Trading Bot',
        'Algorithmic trading system',
        430,
        71,
        11,
        6,
        'Hard'
    ),
    (
        'Language Translator',
        'AI-powered translations',
        980,
        79,
        21,
        13,
        'Medium'
    ),
    (
        'Code Editor',
        'Browser-based IDE',
        3500,
        93,
        45,
        24,
        'Hard'
    ),
    (
        'Weather API',
        'Global weather data service',
        1200,
        83,
        22,
        15,
        'Easy'
    ),
    (
        'NFT Marketplace',
        'Digital collectibles platform',
        540,
        74,
        16,
        9,
        'Hard'
    ),
    (
        'Travel Planner',
        'Trip organization tool',
        890,
        81,
        24,
        17,
        'Medium'
    ),
    (
        'AI Chatbot',
        'Intelligent conversation agent',
        950,
        80,
        12,
        5,
        'Medium'
    );

-- Communities (9)
INSERT INTO
    communities (name, description)
VALUES
    (
        'Web Dev Enthusiasts',
        'Community for web developers'
    ),
    (
        'Open Source Beginners',
        'Learn open-source contribution'
    ),
    (
        'Mobile Developers',
        'Native and cross-platform apps'
    ),
    ('Data Science Hub', 'Big data and analytics'),
    ('Cloud Computing', 'Cloud infrastructure experts'),
    ('UI/UX Designers', 'Design system community'),
    ('Game Development', 'Game creators network'),
    ('DevOps Engineers', 'CI/CD and infrastructure'),
    ('Security Researchers', 'Cybersecurity experts');

-- Issues (44)
INSERT INTO
    issues (
        title,
        description,
        project_id,
        author_id,
        lines_of_code,
        status
    )
VALUES
    (
        'Login Bug',
        'User cannot log in',
        1,
        1,
        150,
        'Open'
    ),
    (
        'Performance Issue',
        'Slow response times',
        2,
        2,
        200,
        'In Progress'
    ),
    (
        'CSS Alignment',
        'Mobile layout broken',
        3,
        3,
        75,
        'Open'
    ),
    (
        'Database Timeout',
        'Connection drops',
        4,
        4,
        300,
        'Closed'
    ),
    (
        'Memory Leak',
        'RAM consumption grows',
        5,
        1,
        400,
        'Open'
    ),
    (
        'UI Glitch',
        'Button misalignment',
        6,
        2,
        80,
        'Open'
    ),
    (
        'Training Error',
        'Model not converging',
        7,
        3,
        500,
        'In Progress'
    ),
    (
        'Physics Bug',
        'Collision detection fails',
        8,
        4,
        350,
        'Open'
    ),
    (
        'Content Sync',
        'CMS not updating',
        9,
        1,
        180,
        'Closed'
    ),
    (
        'API 500 Error',
        'Internal server errors',
        10,
        2,
        220,
        'In Progress'
    ),
    (
        'Device Offline',
        'IoT connectivity issues',
        11,
        3,
        150,
        'Open'
    ),
    (
        'Feed Refresh',
        'Posts not updating',
        12,
        4,
        90,
        'Open'
    ),
    (
        'Video Buffering',
        'Course videos lagging',
        13,
        1,
        280,
        'In Progress'
    ),
    (
        'False Positives',
        'Security alerts noise',
        14,
        2,
        170,
        'Open'
    ),
    (
        'GPS Drift',
        'Location inaccuracy',
        15,
        3,
        300,
        'Closed'
    ),
    (
        'Block Delay',
        'Slow confirmations',
        16,
        4,
        400,
        'In Progress'
    ),
    (
        'Payment Failed',
        'Order checkout error',
        17,
        1,
        120,
        'Open'
    ),
    (
        'Step Counter',
        'Inaccurate tracking',
        18,
        2,
        180,
        'Closed'
    ),
    (
        'API Limit',
        'Rate limiting needed',
        19,
        3,
        250,
        'In Progress'
    ),
    (
        'Translation Error',
        'Incorrect phrases',
        20,
        4,
        150,
        'Open'
    ),
    (
        'Syntax Highlight',
        'Editor color issues',
        21,
        1,
        80,
        'Closed'
    ),
    (
        'Data Latency',
        'Weather updates delayed',
        22,
        2,
        200,
        'Open'
    ),
    (
        'Mint Error',
        'NFT creation fails',
        23,
        3,
        350,
        'In Progress'
    ),
    (
        'Itinerary Sync',
        'Trip details mismatch',
        24,
        4,
        180,
        'Open'
    ),
    (
        'Response Delay',
        'Chatbot slow replies',
        25,
        1,
        220,
        'Open'
    ),
    -- Add 19 more issues following the same pattern
    (
        'Cache Issue',
        'API caching problems',
        1,
        2,
        180,
        'In Progress'
    ),
    (
        'Mobile Crash',
        'App crashes on launch',
        2,
        3,
        250,
        'Open'
    ),
    (
        'Checkout Bug',
        'Payment processing fails',
        3,
        4,
        300,
        'Closed'
    ),
    (
        'Data Export',
        'CSV generation error',
        4,
        1,
        150,
        'Open'
    ),
    (
        'Deployment Error',
        'CI/CD pipeline fails',
        5,
        2,
        400,
        'In Progress'
    ),
    (
        'State Management',
        'Redux store issues',
        6,
        3,
        200,
        'Open'
    ),
    (
        'Training Data',
        'Dataset preprocessing bug',
        7,
        4,
        350,
        'Closed'
    ),
    (
        'Shader Bug',
        'Graphics rendering issue',
        8,
        1,
        280,
        'In Progress'
    ),
    (
        'SEO Metadata',
        'Missing meta tags',
        9,
        2,
        90,
        'Open'
    ),
    (
        'WebSocket Error',
        'Real-time updates fail',
        10,
        3,
        220,
        'Open'
    ),
    (
        'Firmware Update',
        'Device bricking issue',
        11,
        4,
        300,
        'Closed'
    ),
    (
        'Auth Bypass',
        'Security vulnerability',
        12,
        1,
        150,
        'In Progress'
    ),
    (
        'Video Upload',
        'Large file handling',
        13,
        2,
        400,
        'Open'
    ),
    (
        'Log Overflow',
        'Excessive logging',
        14,
        3,
        180,
        'Closed'
    ),
    (
        'AR Calibration',
        'Tracking alignment issue',
        15,
        4,
        250,
        'In Progress'
    ),
    (
        'Smart Contract',
        'Ethereum gas costs',
        16,
        1,
        350,
        'Open'
    ),
    (
        'Rating System',
        'Review calculation error',
        17,
        2,
        120,
        'Closed'
    ),
    (
        'GPS Tracking',
        'Distance calculation bug',
        18,
        3,
        200,
        'Open'
    ),
    (
        'Margin Trading',
        'Leverage calculation',
        19,
        4,
        300,
        'In Progress'
    ),
    (
        'Language Switch',
        'Locale not changing',
        20,
        1,
        150,
        'Open'
    );

-- User Skills (3 per user)
INSERT INTO
    user_skills (user_id, skill_id, proficiency)
VALUES
    (1, 1, 3),
    (1, 5, 4),
    (1, 7, 2),
    (2, 3, 5),
    (2, 9, 3),
    (2, 11, 4),
    (3, 2, 4),
    (3, 6, 3),
    (3, 8, 5),
    (4, 4, 4),
    (4, 10, 3),
    (4, 12, 2);

-- User Saved Projects (5 per user)
INSERT INTO
    user_saved_projects (user_id, project_id)
VALUES
    (1, 1),
    (1, 3),
    (1, 5),
    (1, 7),
    (1, 9),
    (2, 2),
    (2, 4),
    (2, 6),
    (2, 8),
    (2, 10),
    (3, 11),
    (3, 13),
    (3, 15),
    (3, 17),
    (3, 19),
    (4, 12),
    (4, 14),
    (4, 16),
    (4, 18),
    (4, 20);

-- User Joined Communities (2-3 per user)
INSERT INTO
    user_joined_communities (user_id, community_id)
VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 4),
    (2, 5),
    (3, 6),
    (3, 7),
    (4, 8),
    (4, 9);

-- Project Skill Requirements (3 per project)
INSERT INTO
    project_skill_requirements (project_id, skill_id, proficiency)
VALUES
    (1, 1, 3),
    (1, 5, 2),
    (1, 7, 4),
    (2, 3, 4),
    (2, 9, 3),
    (2, 11, 2),
    (3, 2, 5),
    (3, 6, 3),
    (3, 10, 4),
    (4, 4, 4),
    (4, 8, 3),
    (4, 12, 2),
    (5, 1, 3),
    (5, 5, 4),
    (5, 9, 2),
    -- Continue pattern for all 25 projects...
    (25, 2, 4),
    (25, 6, 3),
    (25, 10, 2);

-- Community Projects (5 per community)
INSERT INTO
    community_projects (community_id, project_id)
VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (1, 4),
    (1, 5),
    (2, 6),
    (2, 7),
    (2, 8),
    (2, 9),
    (2, 10),
    (3, 11),
    (3, 12),
    (3, 13),
    (3, 14),
    (3, 15),
    (4, 16),
    (4, 17),
    (4, 18),
    (4, 19),
    (4, 20),
    (5, 21),
    (5, 22),
    (5, 23),
    (5, 24),
    (5, 25),
    (6, 1),
    (6, 6),
    (6, 11),
    (6, 16),
    (6, 21),
    (7, 2),
    (7, 7),
    (7, 12),
    (7, 17),
    (7, 22),
    (8, 3),
    (8, 8),
    (8, 13),
    (8, 18),
    (8, 23),
    (9, 4),
    (9, 9),
    (9, 14),
    (9, 19),
    (9, 24);

End