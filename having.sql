SELECT player_id, rating
FROM players01
GROUP by player_id,rating
HAVING rating >90
ORDER BY player_id DESC


SELECT COUNT (player_id) ,team
FROM players01
GROUP BY team
HAVING COUNT (player_id)>1