--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: courses; Type: TABLE; Schema: public; Owner: madi_gaziz
--

CREATE TABLE public.courses (
    id integer NOT NULL,
    course_name character varying(100) NOT NULL,
    direction_id integer
);


ALTER TABLE public.courses OWNER TO madi_gaziz;

--
-- Name: courses_id_seq; Type: SEQUENCE; Schema: public; Owner: madi_gaziz
--

CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_id_seq OWNER TO madi_gaziz;

--
-- Name: courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: madi_gaziz
--

ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;


--
-- Name: directions; Type: TABLE; Schema: public; Owner: madi_gaziz
--

CREATE TABLE public.directions (
    id integer NOT NULL,
    direction_name character varying(255) NOT NULL
);


ALTER TABLE public.directions OWNER TO madi_gaziz;

--
-- Name: directions_id_seq; Type: SEQUENCE; Schema: public; Owner: madi_gaziz
--

CREATE SEQUENCE public.directions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directions_id_seq OWNER TO madi_gaziz;

--
-- Name: directions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: madi_gaziz
--

ALTER SEQUENCE public.directions_id_seq OWNED BY public.directions.id;


--
-- Name: dropout_students; Type: TABLE; Schema: public; Owner: madi_gaziz
--

CREATE TABLE public.dropout_students (
    id integer NOT NULL,
    student_id integer,
    group_id integer,
    dropout_date date NOT NULL,
    cause character varying(255) NOT NULL
);


ALTER TABLE public.dropout_students OWNER TO madi_gaziz;

--
-- Name: dropout_students_id_seq; Type: SEQUENCE; Schema: public; Owner: madi_gaziz
--

CREATE SEQUENCE public.dropout_students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dropout_students_id_seq OWNER TO madi_gaziz;

--
-- Name: dropout_students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: madi_gaziz
--

ALTER SEQUENCE public.dropout_students_id_seq OWNED BY public.dropout_students.id;


--
-- Name: groups; Type: TABLE; Schema: public; Owner: madi_gaziz
--

CREATE TABLE public.groups (
    id integer NOT NULL,
    group_name character varying(100) NOT NULL,
    course_id integer,
    start_date date NOT NULL,
    end_date date
);


ALTER TABLE public.groups OWNER TO madi_gaziz;

--
-- Name: groups_id_seq; Type: SEQUENCE; Schema: public; Owner: madi_gaziz
--

CREATE SEQUENCE public.groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groups_id_seq OWNER TO madi_gaziz;

--
-- Name: groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: madi_gaziz
--

ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;


--
-- Name: student_group; Type: TABLE; Schema: public; Owner: madi_gaziz
--

CREATE TABLE public.student_group (
    id integer NOT NULL,
    student_id integer,
    group_id integer,
    start_date date NOT NULL,
    end_date date
);


ALTER TABLE public.student_group OWNER TO madi_gaziz;

--
-- Name: student_group_id_seq; Type: SEQUENCE; Schema: public; Owner: madi_gaziz
--

CREATE SEQUENCE public.student_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_group_id_seq OWNER TO madi_gaziz;

--
-- Name: student_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: madi_gaziz
--

ALTER SEQUENCE public.student_group_id_seq OWNED BY public.student_group.id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: madi_gaziz
--

CREATE TABLE public.students (
    id integer NOT NULL,
    full_name character varying(100) NOT NULL
);


ALTER TABLE public.students OWNER TO madi_gaziz;

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: madi_gaziz
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_id_seq OWNER TO madi_gaziz;

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: madi_gaziz
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: teacher_group; Type: TABLE; Schema: public; Owner: madi_gaziz
--

CREATE TABLE public.teacher_group (
    id integer NOT NULL,
    group_id integer
);


ALTER TABLE public.teacher_group OWNER TO madi_gaziz;

--
-- Name: teacher_group_id_seq; Type: SEQUENCE; Schema: public; Owner: madi_gaziz
--

CREATE SEQUENCE public.teacher_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teacher_group_id_seq OWNER TO madi_gaziz;

--
-- Name: teacher_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: madi_gaziz
--

ALTER SEQUENCE public.teacher_group_id_seq OWNED BY public.teacher_group.id;


--
-- Name: teachers; Type: TABLE; Schema: public; Owner: madi_gaziz
--

CREATE TABLE public.teachers (
    id integer NOT NULL,
    full_name character varying(255) NOT NULL
);


ALTER TABLE public.teachers OWNER TO madi_gaziz;

--
-- Name: teachers_id_seq; Type: SEQUENCE; Schema: public; Owner: madi_gaziz
--

CREATE SEQUENCE public.teachers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teachers_id_seq OWNER TO madi_gaziz;

--
-- Name: teachers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: madi_gaziz
--

ALTER SEQUENCE public.teachers_id_seq OWNED BY public.teachers.id;


--
-- Name: courses id; Type: DEFAULT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);


--
-- Name: directions id; Type: DEFAULT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.directions ALTER COLUMN id SET DEFAULT nextval('public.directions_id_seq'::regclass);


--
-- Name: dropout_students id; Type: DEFAULT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.dropout_students ALTER COLUMN id SET DEFAULT nextval('public.dropout_students_id_seq'::regclass);


--
-- Name: groups id; Type: DEFAULT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);


--
-- Name: student_group id; Type: DEFAULT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.student_group ALTER COLUMN id SET DEFAULT nextval('public.student_group_id_seq'::regclass);


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Name: teacher_group id; Type: DEFAULT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.teacher_group ALTER COLUMN id SET DEFAULT nextval('public.teacher_group_id_seq'::regclass);


--
-- Name: teachers id; Type: DEFAULT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.teachers ALTER COLUMN id SET DEFAULT nextval('public.teachers_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: madi_gaziz
--

COPY public.courses (id, course_name, direction_id) FROM stdin;
1	HTML & CSS	1
2	JavaScript	1
3	Python	2
4	SQL	2
5	iOS Development	3
6	Android Development	3
\.


--
-- Data for Name: directions; Type: TABLE DATA; Schema: public; Owner: madi_gaziz
--

COPY public.directions (id, direction_name) FROM stdin;
1	Web Development
2	Data Science
3	Mobile Development
\.


--
-- Data for Name: dropout_students; Type: TABLE DATA; Schema: public; Owner: madi_gaziz
--

COPY public.dropout_students (id, student_id, group_id, dropout_date, cause) FROM stdin;
1	1	1	2022-01-20	Personal reasons
2	2	1	2022-01-25	Health issues
3	3	2	2022-01-15	Job offer
4	4	3	2022-01-10	Changed course
\.


--
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: madi_gaziz
--

COPY public.groups (id, group_name, course_id, start_date, end_date) FROM stdin;
1	Group A1	1	2022-01-01	2022-01-31
2	Group A2	1	2022-02-01	2022-02-28
3	Group B1	2	2022-01-01	2022-01-31
4	Group C1	3	2022-01-01	2022-01-31
5	Group C2	3	2022-02-01	2022-02-28
\.


--
-- Data for Name: student_group; Type: TABLE DATA; Schema: public; Owner: madi_gaziz
--

COPY public.student_group (id, student_id, group_id, start_date, end_date) FROM stdin;
1	1	1	2022-01-01	2022-01-31
2	2	1	2022-01-01	2022-01-31
3	3	2	2022-01-01	2022-01-31
4	4	3	2022-01-01	2022-01-31
5	5	3	2022-01-01	2022-01-31
6	6	4	2022-02-01	2022-02-28
7	7	4	2022-02-01	2022-02-28
8	8	4	2022-02-01	2022-02-28
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: madi_gaziz
--

COPY public.students (id, full_name) FROM stdin;
1	John Doe
2	Jane Smith
3	Alice Johnson
4	Bob Brown
5	Charlie Davis
6	Eva Green
7	Mike White
8	Linda Clark
\.


--
-- Data for Name: teacher_group; Type: TABLE DATA; Schema: public; Owner: madi_gaziz
--

COPY public.teacher_group (id, group_id) FROM stdin;
1	1
2	2
3	3
4	4
5	5
\.


--
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: madi_gaziz
--

COPY public.teachers (id, full_name) FROM stdin;
1	Tom Martin
2	Emma Thompson
3	Lucas Turner
4	Sophia Taylor
5	Oliver Lee
6	Charlotte Wilson
7	William Jackson
\.


--
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: madi_gaziz
--

SELECT pg_catalog.setval('public.courses_id_seq', 6, true);


--
-- Name: directions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: madi_gaziz
--

SELECT pg_catalog.setval('public.directions_id_seq', 3, true);


--
-- Name: dropout_students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: madi_gaziz
--

SELECT pg_catalog.setval('public.dropout_students_id_seq', 4, true);


--
-- Name: groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: madi_gaziz
--

SELECT pg_catalog.setval('public.groups_id_seq', 5, true);


--
-- Name: student_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: madi_gaziz
--

SELECT pg_catalog.setval('public.student_group_id_seq', 8, true);


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: madi_gaziz
--

SELECT pg_catalog.setval('public.students_id_seq', 8, true);


--
-- Name: teacher_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: madi_gaziz
--

SELECT pg_catalog.setval('public.teacher_group_id_seq', 1, false);


--
-- Name: teachers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: madi_gaziz
--

SELECT pg_catalog.setval('public.teachers_id_seq', 7, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);


--
-- Name: directions directions_pkey; Type: CONSTRAINT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.directions
    ADD CONSTRAINT directions_pkey PRIMARY KEY (id);


--
-- Name: dropout_students dropout_students_pkey; Type: CONSTRAINT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.dropout_students
    ADD CONSTRAINT dropout_students_pkey PRIMARY KEY (id);


--
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);


--
-- Name: student_group student_group_pkey; Type: CONSTRAINT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.student_group
    ADD CONSTRAINT student_group_pkey PRIMARY KEY (id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: teacher_group teacher_group_pkey; Type: CONSTRAINT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.teacher_group
    ADD CONSTRAINT teacher_group_pkey PRIMARY KEY (id);


--
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);


--
-- Name: courses courses_direction_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_direction_id_fkey FOREIGN KEY (direction_id) REFERENCES public.directions(id);


--
-- Name: dropout_students dropout_students_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.dropout_students
    ADD CONSTRAINT dropout_students_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.groups(id);


--
-- Name: dropout_students dropout_students_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.dropout_students
    ADD CONSTRAINT dropout_students_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id);


--
-- Name: groups groups_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id);


--
-- Name: student_group student_group_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.student_group
    ADD CONSTRAINT student_group_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.groups(id);


--
-- Name: student_group student_group_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.student_group
    ADD CONSTRAINT student_group_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id);


--
-- Name: teacher_group teacher_group_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: madi_gaziz
--

ALTER TABLE ONLY public.teacher_group
    ADD CONSTRAINT teacher_group_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.groups(id);


--
-- PostgreSQL database dump complete
--

