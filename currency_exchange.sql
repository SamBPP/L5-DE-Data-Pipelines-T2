DROP TABLE IF EXISTS currency_exchange;

CREATE TABLE IF NOT EXISTS currency_exchange (
    entry_id INTEGER PRIMARY KEY AUTOINCREMENT,
    currency TEXT,
    rate_to_gdp REAL,
    timestamp DATETIME
);