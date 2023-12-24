CREATE TABLE user_data(
    id UUID PRIMARY KEY UNIQUE NOT NULL,
    name VARCHAR(300),
    birth_date TIMESTAMP,
    avatar_url VARCHAR(300),
    cover_url VARCHAR(300),
    bio VARCHAR(500)
);

CREATE TABLE user_relation(
    id INT PRIMARY KEY UNIQUE GENERATED ALWAYS AS IDENTITY NOT NULL,
    first_user UUID NOT NULL REFERENCES user_data(id),
    second_user UUID NOT NULL REFERENCES user_data(id),
    status VARCHAR(20) NOT NULL
);