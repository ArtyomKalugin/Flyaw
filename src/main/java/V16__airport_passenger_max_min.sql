-- наибольшое кол-во времени в полетах
WITH t AS (
    SELECT passenger.first_name || ' ' || passenger.second_name as name, SUM(duration_hours) as total
    FROM passenger JOIN flight f on passenger.flight_id = f.id GROUP BY name
)
SELECT name, total as max FROM t WHERE total = (SELECT Max(total) FROM t);

-- наименьшее кол-во времени в полетах
WITH t AS (
    SELECT passenger.first_name || ' ' || passenger.second_name as name, SUM(duration_hours) as total
    FROM passenger JOIN flight f on passenger.flight_id = f.id GROUP BY name
)
SELECT name, total as min FROM t WHERE total = (SELECT Min(total) FROM t);