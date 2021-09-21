CREATE TABLE source
(
    id   int primary key,
    name varchar(255)
);

CREATE TABLE topic
(
    id        int primary key,
    source_id int references source (id),
    topic     varchar(255)
);

CREATE TABLE article
(
    id   int primary key,
    text varchar
);

CREATE TABLE author
(
    id          int primary key,
    nickname    varchar(255),
    first_name  varchar(255),
    second_name varchar(255)
);

CREATE TABLE source_author
(
    source_id int references source (id),
    author_id int references author (id)
);

CREATE TABLE article_author
(
    article_id int references article (id),
    author_id  int references author (id)
);

CREATE TABLE users
(
    id       int primary key,
    nickname varchar(255),
    admin    boolean
);

CREATE TABLE comment
(
    id         int primary key,
    article_id int references article (id),
    user_id    int references users (id),
    text       varchar
);