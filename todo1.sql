--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 9.6.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: todos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE todos (
    userid integer NOT NULL,
    title character varying(255) NOT NULL,
    details character varying(1000),
    priority integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    completed_at timestamp without time zone
);


--
-- Name: todos_userid_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE todos_userid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: todos_userid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE todos_userid_seq OWNED BY todos.userid;


--
-- Name: todos userid; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY todos ALTER COLUMN userid SET DEFAULT nextval('todos_userid_seq'::regclass);


--
-- Data for Name: todos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY todos (userid, title, details, priority, created_at, completed_at) FROM stdin;
1	Dishes	Wash all the dishes in the sink	10	2017-09-05 13:43:33.735089	\N
2	Laundry	Wash all the laundry in the hamper	7	2017-09-05 13:47:31.207652	\N
4	Mop the floors	Make sure the floors are spotless	3	2017-09-05 13:49:47.091113	\N
5	Sweep the Floors	Get all the dust/trash off the floor	6	2017-09-05 14:05:50.275141	\N
3	Mow the lawn	Cut the grass, rake the leaves	1	2017-09-05 13:48:26.067582	2017-09-05 14:18:57.636055
\.


--
-- Name: todos_userid_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('todos_userid_seq', 5, true);


--
-- Name: todos todos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY todos
    ADD CONSTRAINT todos_pkey PRIMARY KEY (userid);


--
-- PostgreSQL database dump complete
--

