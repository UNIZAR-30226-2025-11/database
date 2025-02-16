CREATE TABLE IF NOT EXISTS users (
    id uuid UNIQUE PRIMARY KEY,
    username varchar(128) UNIQUE,
    password varchar(128)
)
