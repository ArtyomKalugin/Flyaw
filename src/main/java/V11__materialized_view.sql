-- кол-во статей, написанных на какую-то тему
CREATE MATERIALIZED VIEW check_articles_topic_count AS
    SELECT count(*), topic_id FROM article
        JOIN topic t on article.topic_id = t.id GROUP BY topic_id;

CREATE MATERIALIZED VIEW search_article AS
    SELECT * FROM article WHERE text ILIKE '%Цель%';