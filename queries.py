def select_name_of_player_with_shortest_name():
    return """SELECT name from players ORDER BY LENGTH(name) ASC LIMIT 1;"""

def select_all_new_york_players_names():
    return """SELECT players.name from players
    JOIN teams ON players.team_id = teams.id
    JOIN team_games ON teams.id = team_games.team_id
    JOIN games ON team_games.game_id = games.id
    GROUP BY players.id
    HAVING teams.name LIKE "%New York%";"""

def select_team_name_and_total_goals_scored_for_new_york_rangers():
    return """SELECT teams.name, sum(team_games.score) from teams
    JOIN team_games ON teams.id = team_games.team_id
    JOIN games ON team_games.game_id = games.id
    GROUP BY teams.id
    HAVING teams.name LIKE '%New York Rangers%';"""

def select_all_games_date_and_info_teams_name_and_score_for_teams_in_nhl():
    return """SELECT games.date, games.info, teams.name, team_games.score from players
    JOIN teams ON players.team_id = teams.id
    JOIN team_games ON teams.id = team_games.team_id
    JOIN games ON team_games.game_id = games.id
    JOIN leagues ON teams.league_id = leagues.id
    GROUP BY games.id, teams.id
    HAVING leagues.id = 1;"""

def select_date_info_and_total_points_for_highest_scoring_nba_game():
    return """SELECT games.date, games.info, sum(team_games.score) total_score from teams
    JOIN team_games ON teams.id = team_games.team_id
    JOIN games ON team_games.game_id = games.id
    JOIN leagues ON teams.league_id = leagues.id
    GROUP BY games.id
    HAVING leagues.name LIKE '%NBA%'
    ORDER BY total_score DESC
    LIMIT 1;"""
