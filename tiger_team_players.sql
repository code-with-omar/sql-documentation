CREATE TABLE tiger_team_players
as(
SELECT *
  FROM players01
  WHERE team='Tiger Team'
)