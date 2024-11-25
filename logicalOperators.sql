--- AND operator
SELECT player_id,first_name,team
FROM players01
WHERE shirt_number =1 And rating = 90;

SELECT player_id,first_name,team
FROM players01
WHERE shirt_number =1 And rating > 80;

--- OR operator
SELECT player_id,first_name,team,rating
FROM players01
WHERE shirt_number =1 OR rating = 90;