DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS teams;

CREATE TABLE teams(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE players(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    second_name VARCHAR(255),
    age INT,
    position VARCHAR(255),
    team_id INT REFERENCES teams(id)
);
