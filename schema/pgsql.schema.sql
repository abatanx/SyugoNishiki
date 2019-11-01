--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.15
-- Dumped by pg_dump version 9.6.15

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: base; Type: TABLE; Schema: public; Owner: 
--

CREATE TABLE public.base (
    usercd integer NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    deny boolean DEFAULT false NOT NULL,
    initymd timestamp without time zone NOT NULL,
    updymd timestamp without time zone NOT NULL
);


ALTER TABLE public.base OWNER TO ;

--
-- Name: basetoken; Type: TABLE; Schema: public; Owner: 
--

CREATE TABLE public.basetoken (
    token character varying NOT NULL,
    usercd integer NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    deny boolean DEFAULT false NOT NULL,
    initymd timestamp without time zone NOT NULL,
    updymd timestamp without time zone NOT NULL
);


ALTER TABLE public.basetoken OWNER TO ;

--
-- Name: chat; Type: TABLE; Schema: public; Owner: 
--

CREATE TABLE public.chat (
    id integer NOT NULL,
    ts timestamp without time zone NOT NULL,
    message text NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    deny boolean DEFAULT false NOT NULL,
    initymd timestamp without time zone NOT NULL,
    updymd timestamp without time zone NOT NULL
);


ALTER TABLE public.chat OWNER TO ;

--
-- Name: owner; Type: TABLE; Schema: public; Owner: 
--

CREATE TABLE public.owner (
    id integer NOT NULL,
    usercd integer NOT NULL
);


ALTER TABLE public.owner OWNER TO ;

--
-- Data for Name: base; Type: TABLE DATA; Schema: public; Owner: 
--

COPY public.base (usercd, enabled, deny, initymd, updymd) FROM stdin;
\.


--
-- Data for Name: basetoken; Type: TABLE DATA; Schema: public; Owner: 
--

COPY public.basetoken (token, usercd, enabled, deny, initymd, updymd) FROM stdin;
\.


--
-- Data for Name: chat; Type: TABLE DATA; Schema: public; Owner: 
--

COPY public.chat (id, ts, message, enabled, deny, initymd, updymd) FROM stdin;
\.


--
-- Data for Name: owner; Type: TABLE DATA; Schema: public; Owner: 
--

COPY public.owner (id, usercd) FROM stdin;
\.


--
-- Name: base base_pkey; Type: CONSTRAINT; Schema: public; Owner: 
--

ALTER TABLE ONLY public.base
    ADD CONSTRAINT base_pkey PRIMARY KEY (usercd);


--
-- Name: basetoken basetoken_pkey; Type: CONSTRAINT; Schema: public; Owner: 
--

ALTER TABLE ONLY public.basetoken
    ADD CONSTRAINT basetoken_pkey PRIMARY KEY (token);


--
-- Name: chat chat_pkey; Type: CONSTRAINT; Schema: public; Owner: 
--

ALTER TABLE ONLY public.chat
    ADD CONSTRAINT chat_pkey PRIMARY KEY (id);


--
-- Name: owner owner_pkey; Type: CONSTRAINT; Schema: public; Owner: 
--

ALTER TABLE ONLY public.owner
    ADD CONSTRAINT owner_pkey PRIMARY KEY (id, usercd);


--
-- Name: basetoken_key1; Type: INDEX; Schema: public; Owner: 
--

CREATE INDEX basetoken_key1 ON public.basetoken USING btree (usercd);


--
-- Name: chat_key1; Type: INDEX; Schema: public; Owner: 
--

CREATE INDEX chat_key1 ON public.chat USING btree (ts);


--
-- PostgreSQL database dump complete
--

