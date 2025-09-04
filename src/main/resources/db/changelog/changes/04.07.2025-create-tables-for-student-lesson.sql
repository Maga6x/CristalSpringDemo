-- liquibase formatted sql

-- changeset alisher:1
CREATE TABLE if not exists students(
    ID BIGSERIAL PRIMARY KEY ,
    lastName VARCHAR(100),
    firstName VARCHAR(100)
);

-- changeset alisher:2
CREATE TABLE if not exists lessons(
    ID BIGSERIAL primary key ,
    NAME VARCHAR(200)
);

-- changeset alisher:3
CREATE TABLE student_lessons(
    student_id BIGINT NOT NULL ,
    lesson_id BIGINT NOT NULL ,
    primary key (student_id, lesson_id),
    FOREIGN KEY (student_id) REFERENCES students(ID) ON DELETE CASCADE ,
    FOREIGN KEY (lesson_id) REFERENCES lessons(ID) ON DELETE CASCADE
);