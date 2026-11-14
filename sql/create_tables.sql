CREATE TABLE user (
    id INTEGER PRIMARY KEY,
    email TEXT NOT NULL UNIQUE,
    password_hash TEXT NOT NULL,
    role TEXT NOT NULL CHECK(role IN('freelancer','company')),
    created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE freelancer (
    id INTEGER PRIMARY KEY,
    display_name TEXT NOT NULL,
    profile_image TEXT,
    job_title TEXT,
    description TEXT,
    city TEXT,
    country TEXT,
    availability TEXT CHECK (availability IN('available','limited','unavailable')),
    weekly_capacity INTEGER CHECK (weekly_capacity >= 0),
    hourly_rate_cents INTEGER CHECK (hourly_rate_cents >= 0),

    FOREIGN KEY (id) REFERENCES user(id) ON DELETE CASCADE
);

CREATE TABLE company (
    id INTEGER PRIMARY KEY,
    company_name TEXT NOT NULL,
    industry TEXT,
    description TEXT,
    website TEXT,
    city TEXT,
    country TEXT,
    logo TEXT,

    FOREIGN KEY (id) REFERENCES user(id) ON DELETE CASCADE
);

CREATE TABLE project (
    id INTEGER PRIMARY KEY,
    company_id INTEGER NOT NULL,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    start_date TEXT,
    end_date TEXT,
    status TEXT NOT NULL DEFAULT 'open' CHECK (status IN('open','closed','in_progress')),
    full_remote BOOLEAN CHECK (full_remote IN(0,1)),
    city TEXT,
    country TEXT,
    compensation_type TEXT CHECK (compensation_type IN('hourly','fixed')),
    budget_min_cents INTEGER CHECK (budget_min_cents >= 0),
    budget_max_cents INTEGER CHECK (budget_max_cents >= 0),
    created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CHECK(end_date >= start_date),
    CHECK(budget_max_cents >= budget_min_cents),

    FOREIGN KEY (company_id) REFERENCES company(id) ON DELETE CASCADE
);

CREATE TABLE skill (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    group_id INTEGER NOT NULL,

    FOREIGN KEY (group_id) REFERENCES skill_group(id)
);

CREATE TABLE skill_group (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE freelancer_skill (
    freelancer_id INTEGER NOT NULL,
    skill_id INTEGER NOT NULL,
    experience_level TEXT CHECK (experience_level IN('beginner','intermediate','expert')),

    PRIMARY KEY (freelancer_id, skill_id),

    FOREIGN KEY (freelancer_id) REFERENCES freelancer(id) ON DELETE CASCADE,
    FOREIGN KEY (skill_id) REFERENCES skill(id) ON DELETE CASCADE
);

CREATE TABLE project_skill (
    project_id INTEGER NOT NULL,
    skill_id INTEGER NOT NULL,
    is_required BOOLEAN NOT NULL DEFAULT 0 CHECK(is_required IN(0,1)),

    PRIMARY KEY (project_id, skill_id),

    FOREIGN KEY (project_id) REFERENCES project(id) ON DELETE CASCADE,
    FOREIGN KEY (skill_id) REFERENCES skill(id) ON DELETE CASCADE
);

CREATE TABLE application (
    id INTEGER PRIMARY KEY,
    freelancer_id INTEGER NOT NULL,
    project_id INTEGER NOT NULL,
    cover_letter TEXT,
    cv_file TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'pending' CHECK(status IN('pending','accepted','rejected','withdrawn')),
    created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,

    UNIQUE (freelancer_id, project_id),

    FOREIGN KEY (freelancer_id) REFERENCES freelancer(id),
    FOREIGN KEY (project_id) REFERENCES project(id)
);

CREATE TABLE education (
    id INTEGER PRIMARY KEY,
    freelancer_id INTEGER NOT NULL,
    institution TEXT NOT NULL,
    degree TEXT NOT NULL,
    field_of_study TEXT NOT NULL,
    start_date TEXT NOT NULL,
    end_date TEXT,

    CHECK (end_date >= start_date),

    FOREIGN KEY (freelancer_id) REFERENCES freelancer(id) ON DELETE CASCADE
);

CREATE TABLE work_experience (
    id INTEGER PRIMARY KEY,
    freelancer_id INTEGER NOT NULL,
    job_title TEXT NOT NULL,
    company_name TEXT NOT NULL,
    description TEXT,
    start_date TEXT NOT NULL,
    end_date TEXT,

    CHECK (end_date >= start_date),

    FOREIGN KEY (freelancer_id) REFERENCES freelancer(id) ON DELETE CASCADE
);

CREATE TABLE conversation (
    id INTEGER PRIMARY KEY,
    company_id INTEGER,
    freelancer_id INTEGER,
    project_id INTEGER,
    created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (company_id) REFERENCES company(id) ON DELETE SET NULL,
    FOREIGN KEY (freelancer_id) REFERENCES freelancer(id) ON DELETE SET NULL,
    FOREIGN KEY (project_id) REFERENCES project(id) ON DELETE SET NULL
);

CREATE TABLE message (
    id INTEGER PRIMARY KEY,
    conversation_id INTEGER NOT NULL,
    sender_id INTEGER,
    body TEXT NOT NULL,
    created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (conversation_id) REFERENCES conversation(id) ON DELETE CASCADE,
    FOREIGN KEY (sender_id) REFERENCES user(id) ON DELETE SET NULL
);