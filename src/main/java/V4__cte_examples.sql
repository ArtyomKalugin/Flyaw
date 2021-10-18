/* Когда необходимо обозначить тему статьи перед самой статьей */
WITH t AS (
    UPDATE article SET text = topic_id || text
    RETURNING *
)
SELECT * FROM t;


/* Удаление статьи по номеру какой-то темы */
WITH article_to_delete (id) AS (
    SELECT id, text
    FROM article
    WHERE text LIKE '%2%'
)
DELETE FROM article
WHERE id in (SELECT id FROM article_to_delete)
