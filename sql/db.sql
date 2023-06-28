/*
CREATE DATABASE training_db;
CREATE DATABASE keks;

DROP DATABASE training_db;
DROP DATABASE keks;

*/

CREATE TABLE my_first_table(
    first_column text,
    second_column text
);

DROP TABLE my_first_table;


ALTER TABLE users
ADD COLUMN birthdat date,
ADD COLUMN height numeric(3,2) CHECK (height>0.2),
ADD COLUMN weight smallint CHECK (weight < 1500)


UPDATE users
SET name='Anton Antonovich' WHERE name='test';

UPDATE users
SET height=1.50;

UPDATE users SET weight=75, birthdat='1994-03-03' WHERE id=20;


DELETE FROM users WHERE id>5 AND id<1000;