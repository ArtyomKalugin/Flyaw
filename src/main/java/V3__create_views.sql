CREATE VIEW check_all_author_articles
AS SELECT * FROM article
WHERE author_id = 1
WITH LOCAL CHECK OPTION;

INSERT INTO check_all_author_articles(topic_id, author_id, text) VALUES (1, 1, 'COMING SOON...');


CREATE VIEW search_article
AS SELECT * FROM article
WHERE text LIKE '%Цель%'
WITH LOCAL CHECK OPTION;

INSERT INTO search_article(topic_id, author_id, text) VALUES (1, 1, 'ARTICLE WITH WORD Цель');
