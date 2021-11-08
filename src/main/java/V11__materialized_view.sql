CREATE MATERIALIZED VIEW check_all_author_articles AS
    SELECT * FROM article WHERE author_id = 10;

CREATE MATERIALIZED VIEW search_article AS
    SELECT * FROM article WHERE text ILIKE '%Цель%';

INSERT INTO article(topic_id, author_id, text) VALUES (10, 9, 'COMING SOON...');

SELECT * FROM check_all_author_articles;
SELECT * FROM search_article;

REFRESH MATERIALIZED VIEW check_all_author_articles;
REFRESH MATERIALIZED VIEW search_article;

SELECT * FROM check_all_author_articles;
SELECT * FROM search_article;