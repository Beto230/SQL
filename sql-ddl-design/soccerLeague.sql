CREATE DATABASE soccer_league;

CREATE TABLE teams(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    city VARCHAR(20) NOT NULL
);

CREATE TABLE players(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    birthday DATE NOT NULL,
    height INTEGER NOT,
    current_team INTEGER REFERENCES teams(id)
);

CREATE TABLE goals(
    id SERIAL PRIMARY KEY,
    player_id INTEGER REFERENCES players(id),
    match_id INTEGER REFERENCES matches(id)
);

CREATE TABLE referees(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE lineups(
    id SERIAL PRIMARY KEY,
    player_id INTEGER REFERENCES players(id),
    match_id INTEGER REFERENCES matches(id),
    team_id INTEGER REFERENCES teams(id)
);

CREATE TABLE results(
    id SERIAL PRIMARY KEY,
    team_id INTEGER REFERENCES teams(id),
    match_id INTEGER REFERENCES matches(id),
    results VARCHAR(4) NOT NULL
);

CREATE TABLE matches(
    id SERIAL PRIMARY KEY,
    home_team_id SERIAL PRIMARY KEY,
    away_team_id SERIAL PRIMARY KEY,
    location VARCHAR(20),
    date DATE NOT NULL,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL,
    season_id INTEGER REFERENCES season(id),
    head_referee_id SERIAL PRIMARY KEY,
    assistent_referee1_id SERIAL PRIMARY KEY,
    assistent_referee2_id SERIAL PRIMARY KEY,
);

CREATE TABLE season(
    id SERIAL PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
);
