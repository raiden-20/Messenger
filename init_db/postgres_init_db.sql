CREATE DATABASE auth_db;

\c auth_db;

CREATE TABLE user_credentials(
    id UUID PRIMARY KEY UNIQUE NOT NULL,
    email VARCHAR(300) UNIQUE NOT NULL,
    nickname VARCHAR(300) UNIQUE NOT NULL,
    hash_password VARCHAR(300) NOT NULL,
    account_status BOOLEAN NOT NULL DEFAULT FALSE,
    password_date TIMESTAMP NOT NULL
);

CREATE TABLE service_data(
    user_id UUID PRIMARY KEY UNIQUE NOT NULL,
    key INT NOT NULL,
    date TIMESTAMP NOT NULL
);

CREATE DATABASE social_db;

\c social_db;

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

CREATE DATABASE blog_db;

\c blog_db;

CREATE TABLE user_data(
    id UUID PRIMARY KEY UNIQUE NOT NULL
);

CREATE TABLE post(
    id INT PRIMARY KEY UNIQUE GENERATED ALWAYS AS IDENTITY NOT NULL,
    user_id UUID NOT NULL REFERENCES user_data(id),
    body VARCHAR(1000),
    created_at TIMESTAMP NOT NULL
);

CREATE TABLE post_like(
    id INT PRIMARY KEY UNIQUE GENERATED ALWAYS AS IDENTITY NOT NULL,
    user_id UUID NOT NULL REFERENCES user_data(id),
    post_id INT NOT NULL REFERENCES post(id)
);

CREATE TABLE post_photo(
    id INT PRIMARY KEY UNIQUE GENERATED ALWAYS AS IDENTITY NOT NULL,
    post_id INT NOT NULL REFERENCES post(id),
    photo_url VARCHAR(300) NOT NULL
);

CREATE TABLE comment(
    id INT PRIMARY KEY UNIQUE GENERATED ALWAYS AS IDENTITY NOT NULL,
    user_id UUID NOT NULL REFERENCES user_data(id),
    post_id INT NOT NULL REFERENCES post(id),
    body VARCHAR(400) NOT NULL,
    created_at TIMESTAMP,
    changed BOOLEAN
);

CREATE TABLE comment_like(
    id INT PRIMARY KEY UNIQUE GENERATED ALWAYS AS IDENTITY NOT NULL,
    user_id UUID NOT NULL REFERENCES user_data(id),
    comment_id INT NOT NULL REFERENCES comment(id)
);