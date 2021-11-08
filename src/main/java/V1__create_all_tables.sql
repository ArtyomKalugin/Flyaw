CREATE TABLE source
(
    id   serial primary key,
    name varchar(127) NOT NULL,
    CONSTRAINT name_length CHECK (char_length(name) > 1)
);

CREATE TABLE topic
(
    id        serial primary key,
    source_id int references source (id) ON DELETE CASCADE ON UPDATE CASCADE,
    topic     varchar(127) NOT NULL,
    CONSTRAINT topic_length CHECK (char_length(topic) > 1)
);

CREATE TABLE author
(
    id          serial primary key,
    nickname    varchar(127) NOT NULL,
    first_name  varchar(127) NOT NULL,
    second_name varchar(127) NOT NULL,
    CONSTRAINT nickname_length CHECK (char_length(nickname) > 4),
    CONSTRAINT first_name_length CHECK (char_length(first_name) > 1),
    CONSTRAINT second_name_length CHECK (char_length(second_name) > 1),
    CONSTRAINT unique_fields UNIQUE (nickname)
);

CREATE TABLE article
(
    id   serial primary key,
    topic_id int references topic (id) ON DELETE CASCADE ON UPDATE CASCADE,
    author_id int references author (id) ON DELETE CASCADE ON UPDATE CASCADE,
    text varchar NOT NULL,
    CONSTRAINT text_length CHECK (char_length(text) > 10)
);


CREATE TABLE source_author
(
    source_id int references source (id) ON DELETE CASCADE ON UPDATE CASCADE,
    author_id int references author (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE article_author
(
    article_id int references article (id) ON DELETE CASCADE ON UPDATE CASCADE,
    author_id  int references author (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE users
(
    id       serial primary key,
    nickname varchar(127) NOT NULL,
    admin    boolean NOT NULL,
    CONSTRAINT unique_fields UNIQUE (nickname)
);

CREATE TABLE comment
(
    id         serial primary key,
    article_id int references article (id) ON DELETE CASCADE ON UPDATE CASCADE,
    user_id    int references users (id) ON DELETE CASCADE ON UPDATE CASCADE,
    text       varchar NOT NULL,
    CONSTRAINT text_length CHECK (char_length(text) > 1)
);