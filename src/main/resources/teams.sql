SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 170 (class 1259 OID 52916)
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE teams (
    id integer NOT NULL,
    name character varying(255),
    flag character varying(255)
);


ALTER TABLE public.teams OWNER TO postgres;

--
-- TOC entry 1936 (class 0 OID 52916)
-- Dependencies: 170
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO teams (id, name, flag) VALUES (1, 'Argentina', 'arg');
INSERT INTO teams (id, name, flag) VALUES (2, 'Brazil', 'bra');
INSERT INTO teams (id, name, flag) VALUES (3, 'Croacia', 'cro');
INSERT INTO teams (id, name, flag) VALUES (4, 'Mexico', 'mex');
INSERT INTO teams (id, name, flag) VALUES (5, 'Camerun', 'cam');
INSERT INTO teams (id, name, flag) VALUES (6, 'España', 'esp');
INSERT INTO teams (id, name, flag) VALUES (7, 'Holanda', 'hol');
INSERT INTO teams (id, name, flag) VALUES (8, 'Chile', 'chi');
INSERT INTO teams (id, name, flag) VALUES (9, 'Australia', 'aus');
INSERT INTO teams (id, name, flag) VALUES (10, 'Colombia', 'col');
INSERT INTO teams (id, name, flag) VALUES (11, 'Grecia', 'gre');
INSERT INTO teams (id, name, flag) VALUES (12, 'Costa de Marfil', 'mar');
INSERT INTO teams (id, name, flag) VALUES (13, 'Japon', 'jap');
INSERT INTO teams (id, name, flag) VALUES (14, 'Uruguay', 'uru');
INSERT INTO teams (id, name, flag) VALUES (15, 'Costa Rica', 'cos');
INSERT INTO teams (id, name, flag) VALUES (16, 'Inglaterra', 'ing');
INSERT INTO teams (id, name, flag) VALUES (17, 'Italia', 'ita');
INSERT INTO teams (id, name, flag) VALUES (18, 'Suiza', 'sui');
INSERT INTO teams (id, name, flag) VALUES (19, 'Ecuador', 'ecu');
INSERT INTO teams (id, name, flag) VALUES (20, 'Francia', 'fra');
INSERT INTO teams (id, name, flag) VALUES (21, 'Honduras', 'hon');
INSERT INTO teams (id, name, flag) VALUES (22, 'Bosnia', 'bos');
INSERT INTO teams (id, name, flag) VALUES (23, 'Iran', 'ira');
INSERT INTO teams (id, name, flag) VALUES (24, 'Nigeria', 'nig');
INSERT INTO teams (id, name, flag) VALUES (25, 'Alemania', 'ale');
INSERT INTO teams (id, name, flag) VALUES (26, 'Portugal', 'por');
INSERT INTO teams (id, name, flag) VALUES (27, 'Ghana', 'gha');
INSERT INTO teams (id, name, flag) VALUES (28, 'USA', 'usa');
INSERT INTO teams (id, name, flag) VALUES (29, 'Belgica', 'bel');
INSERT INTO teams (id, name, flag) VALUES (30, 'Argelia', 'arl');
INSERT INTO teams (id, name, flag) VALUES (31, 'Rusia', 'rus');
INSERT INTO teams (id, name, flag) VALUES (32, 'Corea del Sur', 'cor');


--
-- TOC entry 1828 (class 2606 OID 52920)
-- Name: pk_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY teams
    ADD CONSTRAINT pk_id PRIMARY KEY (id);


-- Completed on 2014-04-01 17:11:31

--
-- PostgreSQL database dump complete
--

