DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS difficulty CASCADE;
DROP TABLE IF EXISTS questions CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR NOT NULL,
  token TEXT NOT NULL,
  questionsAnswered TEXT []
);

CREATE TABLE categories (
  id SERIAL PRIMARY KEY,
  title VARCHAR NOT NULL
);

CREATE TABLE difficulty (
  id SERIAL PRIMARY KEY,
  title VARCHAR NOT NULL
);

CREATE TABLE questions (
  id SERIAL PRIMARY KEY,
  category_id INT REFERENCES category(id),
  difficulty_id INT REFERENCES difficulty(id),
  question TEXT NOT NULL,
  correctAnswer VARCHAR NOT NULL,
  incorrectAnswers TEXT []
);