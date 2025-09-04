-- liquibase formatted sql

-- changeset alisher:1
INSERT INTO students(lastname, firstname)
VALUES ('Gabriloc', 'Nikita'),
       ('Hadidja','Jasmin'),
       ('Kaidyrbekova','Aisulu');

-- changeset alisher:2
INSERT INTO lessons(name)
VALUES ('Algebra'),
       ('History'),
       ('Fizra');