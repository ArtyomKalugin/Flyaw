SELECT airport.name, COUNT(*) FROM airport
    JOIN flight on airport.id = flight.airport_id
WHERE flight.date = '15.10.2001'
GROUP BY airport.name