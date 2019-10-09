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
  levels VARCHAR NOT NULL
);

CREATE TABLE questions (
  id SERIAL PRIMARY KEY,
  category_id INT REFERENCES category(id),
  difficulty_id INT REFERENCES difficulty(id),
  question TEXT NOT NULL,
  correctAnswer VARCHAR NOT NULL,
  incorrectAnswers TEXT []
);

INSERT INTO users (email, token, questionsAnswered) VALUES
('user1@gmail.com', 'token1', ARRAY[""]),
('user2@gmail.com', 'token2', ARRAY[""]),
('user3@gmail.com', 'token3', ARRAY[""]);

INSERT INTO categories (title) VALUES
('season 1')
('season 2')
('season 3')

INSERT INTO difficulty (title) VALUES
('easy')
('moderate')
('difficult')

INSERT INTO questions (category_id, difficulty_id, question, correctAnswer, incorrectAnswers) VALUES
('1', '1', "Who was Pam engaged to when the show first aired?", "Roy", ARRAY["Kevin", "Jim", "Madge"])
('2', '2', "What is Dwight's middle name?", "Kurt", ARRAY["Kevin", "Kean", "Karl"])
('1', '3', "How did Dwight dispose of Sprikles' body?", "placed in the freezer", ARRAY["buried in the backyard", "placed in Angela's desk drawer", "burned on the farm"])