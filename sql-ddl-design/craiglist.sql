CREATE DATABASE craiglist;

CREATE TABLE regions(
    id SERIAL PRIMARY key,
    name TEXT NOT NULL
);

CREATE TABLE posts(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    text TEXT NOT NULL,
    location VARCHAR(20) NOT NULL,
    user_id INTEGER REFERENCES users(id)
    region_id INTEGER REFERENCES regions(id)
    category_id INTEGER REFERENCES categories(id)
);

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    username VARCHAR(15)
    preferred_region_id INTEGER REFERENCES regions(id)
);

CREATE TABLE categories(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);