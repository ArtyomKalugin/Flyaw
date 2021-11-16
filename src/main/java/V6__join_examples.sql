-- статьи с их темами, inner
SELECT article.topic_id, article.author_id, topic.id
FROM article JOIN topic ON topic.id = article.topic_id;

-- юзеры, которые являются авторами, left
SELECT users.id, users.nickname
FROM users LEFT JOIN author ON author.id = users.id;

-- то же самое, right
SELECT author.id, author.nickname
FROM author RIGHT JOIN users ON author.id = users.id;

-- статьи с их комментариями, full
SELECT * FROM article FULL JOIN comment ON article.id = comment.article_id;

-- все статьи со всевозможными комментариями, cross
SELECT * FROM article CROSS JOIN comment;

-- авторы и их статьи, natural
SELECT * FROM author NATURAL JOIN article;

-- self join
SELECT c.text, x.id
FROM comment c
JOIN comment x ON c.user_id = c.article_id;

-- semi join, темы, на которые есть статьи
SELECT t.topic
FROM topic t
WHERE EXISTS(SELECT 1
    FROM article a
    WHERE a.topic_id = t.id);

-- anti join, темы, на которые нет статей
SELECT t.topic
FROM topic t
WHERE NOT EXISTS(SELECT 1
             FROM article a
             WHERE a.topic_id = t.id);





