SELECT players01.player_id,players01.first_name as player_firstName,employees.first_name as employees_firstName
    FROM players01
    INNER JOIN employees
    on players01.player_id=employees.employee_id