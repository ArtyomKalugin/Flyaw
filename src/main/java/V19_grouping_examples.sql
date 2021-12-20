-- кол-во статей, которое написал автор
CREATE VIEW articles_count
AS SELECT count(*) as count, author.id FROM article JOIN author ON article.author_id = author.id GROUP BY author.id;
SELECT * FROM articles_count;

-- самая длинная статья
SELECT max(char_length(text)) as max, a.id FROM article JOIN author a on article.author_id = a.id GROUP BY a.id
ORDER BY max DESC;


