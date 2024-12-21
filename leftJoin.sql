SELECT players01.player_id,players01.first_name,employees.first_name
FROM players01
left join employees
on players01.player_id=employees.employee_id