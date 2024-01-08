-- Postgres database
-- DROP DATABASE IF EXISTS Games;
-- CREATE DATABASE Games;

DROP TABLE IF EXISTS Genre CASCADE;
CREATE TABLE Genre (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE
);

DROP TABLE IF EXISTS Genre_Genre;
CREATE TABLE Genre_Genre (
    id SERIAL PRIMARY KEY,
    genre_id SERIAL references Genre(id),
    upper_genre_id SERIAL references Genre(id)
);

DROP TABLE IF EXISTS Games CASCADE;
CREATE TABLE Games (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    release_date DATE NOT NULL,
    description TEXT
);

DROP TABLE IF EXISTS Expansions;
CREATE TABLE Expansions (
    id SERIAL references Games(id),
    game_id SERIAL references Games(id),
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id, game_id)
);

DROP TABLE IF EXISTS Sequels;
CREATE TABLE Sequels (
    sequel_id SERIAL references Games(id),
    game_id SERIAL references Games(id),
    PRIMARY KEY (sequel_id, game_id)
);

DROP TABLE IF EXISTS Prequels;
CREATE TABLE Prequels (
    prequel_id SERIAL references Games(id),
    game_id SERIAL references Games(id),
    PRIMARY KEY (prequel_id, game_id)
);

DROP TABLE IF EXISTS Platforms CASCADE;
CREATE TABLE Platforms (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    abbreviation VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS Consoles;
CREATE TABLE Consoles (
    id SERIAL PRIMARY KEY,
    platform_id SERIAL references Platforms(id),
    type VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);


DROP TABLE IF EXISTS Stores CASCADE;
CREATE TABLE Stores (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    url VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS Games_Platforms;
CREATE TABLE Games_Platforms (
    id SERIAL PRIMARY KEY,
    game_id SERIAL references Games(id),
    platform_id SERIAL references Platforms(id),
    release_date DATE NOT NULL
);

DROP TABLE IF EXISTS Games_Genre;
CREATE TABLE Games_Genre (
    id SERIAL PRIMARY KEY,
    game_id SERIAL references Games(id),
    genre_id SERIAL references Genre(id)
);

DROP TABLE IF EXISTS Games_Stores;
CREATE TABLE Games_Stores (
    id SERIAL PRIMARY KEY,
    game_id SERIAL references Games(id),
    store_id SERIAL references Stores(id),
    price DECIMAL(10,2) NOT NULL
);

DROP TABLE IF EXISTS Stores_Platforms;
CREATE TABLE Stores_Platforms (
    id SERIAL PRIMARY KEY,
    store_id SERIAL references Stores(id),
    platform_id SERIAL references Platforms(id)
);

DROP TABLE IF EXISTS Users CASCADE;
CREATE TABLE Users (
    id UUID NOT NULL,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS Users_Games;
CREATE TABLE Users_Games (
    id SERIAL PRIMARY KEY,
    user_id UUID references Users(id),
    game_id SERIAL references Games(id)
);




