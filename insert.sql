INSERT INTO leagues (name) VALUES ('League_1'), ('League_2');
INSERT INTO teams (name, league_id) VALUES ('Team_11', 1),('Team_21', 1),('Team_12', 2),('Team_22', 2);
INSERT INTO players (name, team_id) VALUES ('Player_1', 1),('Player_2', 2),('Player_3', 3),('Player_4', 4);
INSERT INTO games (date, location) VALUES (2018-02-01,"loc_1"),(2018-02-02,"loc_2"),(2018-02-03,"loc_3");
INSERT INTO team_games (team_id, game_id, score) VALUES (1,1,4), (2,1,3),
                                                       (3,2,4), (2,2,1),
                                                       (4,3,1), (1,3,0);
