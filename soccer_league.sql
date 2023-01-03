DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league

CREATE TABLE teams (id SERIAL PRIMARY KEY, name TEXT, rank INTEGER);
CREATE TABLE seasons (id SERIAL PRIMARY KEY, season_name TEXT, start_date INTEGER, end_date INTEGER);
CREATE TABLE matches (id SERIAL PRIMARY KEY, mdate INTEGER, team1 INTEGER REFERENCES teams(id), team2 INTEGER REFERENCES teams(id), season_id INTEGER REFERENCES seasons (id));
CREATE TABLE players (id SERIAL PRIMARY KEY, first_name TEXT, last_name TEXT, team_id INTEGER REFERENCES teams (id));
CREATE TABLE goals (id SERIAL PRIMARY KEY, player_id INTEGER REFERENCES players (id), team_id INTEGER REFERENCES teams (id), match_id INTEGER REFERENCES matches (id));
CREATE TABLE referees (id SERIAL PRIMARY KEY, first_name TEXT, last_name TEXT, game_id INTEGER REFERENCES matches (id));



INSERT INTO teams (name, rank) 
VALUES 
('Red Team', 1),
('Blue Team', 4),
('Green Team', 5),
('Yellow Team', 2),
('Orange Team', 3);

INSERT INTO seasons (season_name, start_date, end_date) 
VALUES 
('Fall 2020', 08-05-2020, 11-20-2020),
('Fall 2021', 08-05-2021, 11-20-2021),
('Fall 2022', 08-05-2022, 11-20-2022);

INSERT INTO matches (mdate, team1, team2, season_id) 
VALUES 
(2022-03-14, 1, 2, 3),
(2022-03-14, 3, 4, 3),
(2022-03-14, 1, 5, 3),
(2022-03-14, 2, 3, 3),
(2021-03-14, 1, 3, 2),
(2021-03-14, 3, 2, 2),
(2021-03-14, 5, 2, 2),
(2021-03-14, 4, 1, 2),
(2020-03-14, 5, 4, 1),
(2020-03-14, 3, 1, 1),
(2020-03-14, 2, 1, 1),
(2020-03-14, 3, 5, 1);

INSERT INTO players (first_name, last_name, team_id) 
VALUES 
('John', 'Smith', 1),
('Bob', 'Smith', 2),
('Tim', 'Smith', 3),
('Josh', 'Smith', 4),
('Adam', 'Smith', 5),
('Kevin', 'Smith', 1),
('Ryan', 'Smith', 2),
('Jason', 'Smith', 3),
('Brayden', 'Smith', 4),
('Charlie', 'Smith', 5),
('Jim', 'Smith', 1),
('Jeff', 'Smith', 2),
('Dan', 'Smith', 3),
('Henry', 'Smith', 4),
('David', 'Smith', 5),
('Matt', 'Smith', 1),
('Max', 'Smith', 3),
('Scott', 'Smith', 2),
('Shaun', 'Smith', 4),
('Rob', 'Smith', 5),
('Andrew', 'Smith', 1),
('Bryan', 'Smith', 2),
('Mauricio', 'Smith', 3),
('Jose', 'Smith', 4),
('Pedro', 'Smith', 5);

INSERT INTO goals (player_id, team_id, match_id) 
VALUES 
(1, 1, 1),
(2, 2, 1),
(4, 4, 2),
(5, 3, 4),
(7, 3, 3),
(10, 1, 2),
(20, 1, 6),
(14, 1, 2),
(7, 3, 7),
(3, 1, 5),
(1, 1, 8),
(5, 3, 4),
(5, 3, 4);

INSERT INTO referees (first_name, last_name, game_id) 
VALUES 
('Steve', 'Robbins', 1),
('Ben', 'Smith', 2),
('Charlie', 'Smith', 3),
('Tom', 'Smith', 4),
('George', 'Smith', 5),
('Juan', 'Smith', 6),
('Johnny', 'Smith', 7),
('Tim', 'Smith', 8),
('Jace', 'Smith', 9),
('Hunter', 'Smith', 10),
('Braden', 'Smith', 11),
('Ethan', 'Smith', 12);





