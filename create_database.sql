-- Cleanup in case of reruns
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS logins;

CREATE TABLE IF NOT EXISTS users (
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    surname TEXT NOT NULL,
    middle_initials TEXT,
    dob DATE,
    age_last_birthday INTEGER,
    favourite_colour TEXT,
    favourite_animal TEXT,
    favourite_food TEXT,
    gender TEXT,
    password TEXT NOT NULL,
    city TEXT,
    county TEXT,
    postcode TEXT,
    email TEXT UNIQUE NOT NULL,
    phone TEXT,
    mobile TEXT,
    rqf TEXT,
    salary REAL,
    website_visits_last_30_days INTEGER
);

CREATE TABLE IF NOT EXISTS logins (
    login_id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT,
    login_timestamp DATETIME,
    FOREIGN KEY (login_id) REFERENCES users(user_uid)
);