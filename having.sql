SELECT player_id, rating
FROM players01
GROUP by player_id,rating
HAVING rating >90
ORDER BY player_id DESC
