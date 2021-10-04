CREATE TABLE source
(
    id   serial primary key,
    name varchar(127)
);

CREATE TABLE topic
(
    id        serial primary key,
    source_id int references source (id),
    topic     varchar(127)
);

CREATE TABLE author
(
    id          serial primary key,
    nickname    varchar(127),
    first_name  varchar(127),
    second_name varchar(127)
);

CREATE TABLE article
(
    id   serial primary key,
    topic_id int references topic (id),
    author_id int references author (id),
    text varchar
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
    id       serial primary key,
    nickname varchar(127),
    admin    boolean
);

CREATE TABLE comment
(
    id         serial primary key,
    article_id int references article (id),
    user_id    int references users (id),
    text       varchar
);