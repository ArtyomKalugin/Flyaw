WITH RECURSIVE graph_cte (to_node2, path, cycle, weight, way) AS
                   (
                       SELECT DISTINCT from_node, array [from_node], FALSE, 0, 'S'
                       FROM graph
                       WHERE from_node = 'S'

                       UNION ALL

                       SELECT arrival.to_node,
                              departure.path || arrival.to_node,
                              arrival.to_node = ANY (departure.path),
                              arrival.weight + departure.weight,
                              departure.way || ', ' || arrival.to_node
                       FROM graph as arrival
                                INNER JOIN graph_cte as departure ON (departure.to_node2 = arrival.from_node) AND NOT cycle),
     short_way (weight) AS
         (
             SELECT MIN(weight) FROM graph_cte WHERE to_node2 = 'Y'
         )

SELECT to_node2, way, g.weight FROM graph_cte g INNER JOIN short_way s ON g.weight = s.weight WHERE cycle IS FALSE