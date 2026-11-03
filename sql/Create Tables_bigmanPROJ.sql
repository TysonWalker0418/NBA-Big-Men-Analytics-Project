CREATE DATABASE nba_bigs;
USE nba_bigs;
SHOW TABLES;

CREATE TABLE team_season (
season INT NOT NULL,
team VARCHAR(50),
abbreviation VARCHAR(5) NOT NULL,
w INT,
l INT,
games INT,
pace DECIMAL(5,1),
o_rtg DECIMAL(5,1),
e_fg_percent DECIMAL(4,3),
x3p_ar DECIMAL(4,3),
total_ast INT,
ast_per_game DECIMAL(5,2),
team_3pa INT,
big_3pa INT,
big_3pa_share DECIMAL(5,4),
big_3pa_per_game DECIMAL(5,2),
PRIMARY KEY (season, abbreviation));

USE nba_bigs;
SHOW TABLES;
DESCRIBE team_season;

USE nba_bigs;

CREATE TABLE player_season (
season INT NOT NULL,
player_id VARCHAR(20) NOT NULL,
player VARCHAR(60),
pos VARCHAR(5),
team VARCHAR(5),
g INT,
mp INT,
x3pa INT,
threepa_per_game DECIMAL(5,2),
ast INT,
is_big BOOLEAN,
qualified BOOLEAN,
PRIMARY KEY (season, player_id));
CREATE TABLE player_team_season (
season INT NOT NULL,
player_id VARCHAR(20) NOT NULL,
player VARCHAR(60),
pos VARCHAR(5),
team VARCHAR(5) NOT NULL,
g INT,
mp INT,
x3pa INT,
threepa_per_game DECIMAL(5,2),
ast INT,
is_big BOOLEAN,
PRIMARY KEY (season, player_id, team));
CREATE TABLE big_season_summary (
season INT NOT NULL,
num_bigs INT,
avg_3pa_per_game DECIMAL(4,3),
pct_three DECIMAL(4,3),
PRIMARY KEY (season));

SHOW TABLES;    

USE nba_bigs;
SELECT COUNT(*) FROM big_season_summary;
SELECT COUNT(*) FROM player_season;
SELECT COUNT(*) FROM player_team_season;
SELECT COUNT(*) FROM team_season;
