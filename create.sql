CREATE TABLE leagues (id INTEGER PRIMARY KEY, name TEXT);
CREATE TABLE teams (id INTEGER PRIMARY KEY, name TEXT, league_id INTEGER);
-- FOREIGN KEY (league_id) REFERENCES leagues(id));
CREATE TABLE players (id INTEGER PRIMARY KEY, name TEXT, team_id INTEGER);
-- FOREIGN KEY (team_id) REFERENCES (teams.id);
CREATE TABLE games (id INTEGER PRIMARY KEY, date DATE, location TEXT);

CREATE TABLE team_games(id INTEGER PRIMARY KEY, team_id INTEGER, game_id INTEGER, score INTEGER);
-- FOREIGN KEY (team_id) REFERENCES (teams.id)
-- FOREIGN KEY (game_id) REFERENCES (games.id);


-- CREATE TABLE team_leagues(id INTEGER PRIMARY KEY, team_id INTEGER, league_id INTEGER)
-- FOREIGN KEY (team_id) REFERENCES (teams.id)
-- FOREIGN KEY (league_id) REFERENCES (leagues.id);
--
-- CREATE TABLE team_players(id INTEGER PRIMARY KEY, player_id INTEGER, team_id INTEGER)
-- FOREIGN KEY (player_id) REFERENCES (players.id)
-- FOREIGN KEY (team_id) REFERENCES (teams.id);
