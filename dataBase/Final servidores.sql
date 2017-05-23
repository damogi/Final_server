--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
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


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: activecar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE activecar (
    playerid character varying(2044) NOT NULL,
    carid character varying(2044) NOT NULL
);


ALTER TABLE activecar OWNER TO postgres;

--
-- Name: cars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cars (
    card_id character varying(2044) NOT NULL,
    top_speed integer NOT NULL,
    accel integer NOT NULL,
    handling integer NOT NULL,
    price integer NOT NULL,
    name character varying(2044)
);


ALTER TABLE cars OWNER TO postgres;

--
-- Name: playercar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE playercar (
    playerid character varying(2044) NOT NULL,
    carid character varying(2044) NOT NULL,
    top_speed integer NOT NULL,
    accel integer NOT NULL,
    handling integer NOT NULL
);


ALTER TABLE playercar OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE users (
    name character varying(2044) NOT NULL,
    experience integer NOT NULL,
    gold integer NOT NULL,
    id integer
);


ALTER TABLE users OWNER TO postgres;

--
-- Data for Name: activecar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO activecar VALUES ('1', '3');
INSERT INTO activecar VALUES ('2', '2');
INSERT INTO activecar VALUES ('3', '1');


--
-- Data for Name: cars; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cars VALUES ('1', 30, 3, 1, 0, 'car1');
INSERT INTO cars VALUES ('2', 50, 6, 2, 100, 'car3');
INSERT INTO cars VALUES ('3', 70, 7, 4, 500, 'car2');
INSERT INTO cars VALUES ('4', 100, 10, 5, 2000, 'car4');


--
-- Data for Name: playercar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO playercar VALUES ('1', '1', 30, 3, 1);
INSERT INTO playercar VALUES ('2', '1', 30, 3, 1);
INSERT INTO playercar VALUES ('1', '3', 70, 7, 4);
INSERT INTO playercar VALUES ('2', '2', 50, 6, 2);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO users VALUES ('halazate', 22, 1000, 1);
INSERT INTO users VALUES ('yolo', 10, 700, 2);
INSERT INTO users VALUES ('gus', 5, 500, 3);


--
-- Name: activecar activecar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activecar
    ADD CONSTRAINT activecar_pkey PRIMARY KEY (playerid);


--
-- Name: playercar playercar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY playercar
    ADD CONSTRAINT playercar_pkey PRIMARY KEY (playerid, carid);


--
-- Name: index_Accel; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_Accel" ON cars USING btree (accel);


--
-- Name: index_Handling; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_Handling" ON cars USING btree (handling);


--
-- Name: index_Price; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_Price" ON cars USING btree (price);


--
-- Name: index_Top_speed; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "index_Top_speed" ON cars USING btree (top_speed);


--
-- Name: index_accel; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_accel ON playercar USING btree (accel);


--
-- Name: index_card_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_card_id ON cars USING btree (card_id);


--
-- Name: index_carid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_carid ON playercar USING btree (carid);


--
-- Name: index_carid1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_carid1 ON activecar USING btree (carid);


--
-- Name: index_handling; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_handling ON playercar USING btree (handling);


--
-- Name: index_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_name ON users USING btree (name);


--
-- Name: index_name1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_name1 ON cars USING btree (name);


--
-- Name: index_playerid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_playerid ON playercar USING btree (playerid);


--
-- Name: index_playerid1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_playerid1 ON activecar USING btree (playerid);


--
-- Name: index_top_speed; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_top_speed ON playercar USING btree (top_speed);


--
-- Name: users_experience_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_experience_idx ON users USING btree (experience);


--
-- Name: users_gold_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_gold_idx ON users USING btree (gold);


--
-- PostgreSQL database dump complete
--

