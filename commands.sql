create table directions (
    id serial primary key,
    direction_name varchar(255) not null
);

create table courses (
    id serial primary key,
    course_name varchar(100) not null,
    direction_id int references directions(id)
);

create table students (
    id serial primary key,
    full_name varchar(100) not null
);

create table teachers(
    id serial primary key,
    full_name varchar(255) not null
);

create table groups (
    id serial primary key,
    group_name varchar(100) not null,
    course_id int references courses(id),
    start_date date not null,
    end_date date
);

create table teacher_group (
    id serial primary key,
    group_id int references groups(id)
);

create table student_group (
    id serial primary key,
    student_id int references students(id),
    group_id int references groups(id),
    start_date date not null,
    end_date date
);

CREATE TABLE dropout_students (
    id serial primary key,
    student_id int references students(id),
    group_id int references groups(id),
    dropout_date date not null,
    cause varchar(255) not null
);