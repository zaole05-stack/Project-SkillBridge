CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    email TEXT NOT NULL UNIQUE,
    password_hash TEXT NOT NULL,
    role TEXT NOT NULL CHECK(role IN('freelancer','company')),
    created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);