SELECT employees_id as union_employee
FROM employees01
UNION
SELECT player_id
FROM players01

SELECT employees_id as union_employee
FROM employees01
UNION All
SELECT player_id
FROM players01

