USE nba_bigs;

SELECT season,
ROUND(avg(CASE WHEN pos = 'PF' THEN threepa_per_game END), 2) AS pf_avg_3pa,
ROUND(avg(CASE WHEN pos = 'C' THEN threepa_per_game END), 2) AS c_avg_3pa
FROM player_season
WHERE qualified = 1 AND pos IN ('C','PF')
GROUP BY season
ORDER BY season;

SELECT season, pos, COUNT(*) AS num_players, ROUND(AVG(threepa_per_game), 2) AS avg_3pa_per_game
FROM player_season
WHERE qualified = 1
AND pos IN ('PF', 'C')
GROUP BY season, pos
ORDER BY season, pos;

SELECT season,
ROUND(AVG(CASE WHEN pos = 'PF' THEN (threepa_per_game >= 1) END), 3) AS pf_pct_shooting,
ROUND(AVG(CASE WHEN pos = 'C' THEN (threepa_per_game >= 1) END), 3) AS c_pct_shooting
FROM player_season 
WHERE qualified = 1
AND pos IN ('PF', 'C')
GROUP BY season 
ORDER BY season;

SELECT season,
ROUND(AVG(pace), 1) AS avg_pace,
ROUND(AVG(o_rtg), 1) AS avg_ortg,
ROUND(AVG(big_3pa_share), 3) AS avg_big_3pashare
FROM team_season GROUP BY season ORDER BY season;

SELECT season, team, big_3pa_share, pace, o_rtg
FROM team_season
ORDER BY big_3pa_share DESC
LIMIT 15;

SELECT player, team, g, mp, threepa_per_game
FROM player_season
WHERE season = 2026
AND is_big = 1
AND qualified = 1
ORDER BY threepa_per_game DESC
LIMIT 15;

SELECT t.season, t.team, t.big_3pa_share, b.pct_three
FROM team_season t
JOIN big_season_summary b
ON t.season = b.season
WHERE t.season = 2026
ORDER BY t.big_3pa_share DESC
LIMIT 10;

SELECT pos, MAX(season) + 1 AS stays_above_from FROM (
SELECT season, pos, AVG(threepa_per_game) AS avg3
FROM player_season
WHERE qualified = 1
AND pos IN ('PF', 'C')
GROUP BY season, pos )
AS yearly WHERE avg3 < 1.0 GROUP BY pos;
