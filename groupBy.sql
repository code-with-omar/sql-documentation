SELECT team, COUNT(*) AS T_number
FROM players01
GROUP BY team;

SELECT team, MAX(rating) AS max_rating
from players01
GROUP by team;