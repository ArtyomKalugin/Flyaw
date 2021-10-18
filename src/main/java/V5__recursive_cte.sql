/* Список всех тем, на которые есть статья */
WITH RECURSIVE t(topics) AS (
    SELECT id
    FROM article

    UNION ALL

    SELECT topic_id
    FROM article INNER JOIN t ON t.topics = article.topic_id
)
SELECT * FROM t;

/* Список всех тем, на которые когда-либо писал автор */
WITH RECURSIVE s(topics) AS (
    SELECT id
    FROM article
    WHERE author_id = 1

    UNION ALL

    SELECT topic_id
    FROM article INNER JOIN s ON s.topics = article.topic_id
)
SELECT * FROM s;