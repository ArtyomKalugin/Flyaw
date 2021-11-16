CREATE TABLE airport (
    id SERIAL PRIMARY KEY,
    name varchar NOT NULL,
    city varchar NOT NULL,
    CONSTRAINT name_length CHECK (char_length(name) > 1)
);

CREATE TABLE airplane (
    id SERIAL PRIMARY KEY,
    name varchar NOT NULL,
    airport_id int references airport(id),
    CONSTRAINT name_length CHECK (char_length(name) > 1)
);

CREATE TABLE crew_member (
    id SERIAL PRIMARY KEY,
    first_name varchar NOT NULL,
    second_name varchar NOT NULL,
    profession varchar NOT NULL,
    airplane_id int references airplane(id),
    CONSTRAINT first_name_length CHECK (char_length(first_name) > 1),
    CONSTRAINT second_name_length CHECK (char_length(second_name) > 1)
);

CREATE TABLE flight (
    id SERIAL PRIMARY KEY,
    date varchar NOT NULL,
    duration_hours int NOT NULL,
    from_city varchar NOT NULL,
    to_city varchar NOT NULL,
    airplane_id int references airplane(id),
    airport_id int references airport(id)
);

CREATE TABLE passenger (
    id SERIAL PRIMARY KEY,
    first_name varchar NOT NULL,
    second_name varchar NOT NULL,
    flight_id int references flight(id),
    CONSTRAINT first_name_length CHECK (char_length(first_name) > 1),
    CONSTRAINT second_name_length CHECK (char_length(second_name) > 1)
)

