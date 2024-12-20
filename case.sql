SELECT player_id,rating,
    CASE
        WHEN rating > 90 THEN 'Excellent rating'
        WHEN rating = 90 THEN 'Very Good'
        ELSE 'Good Rating'
    END AS rating_notes
FROM players01;