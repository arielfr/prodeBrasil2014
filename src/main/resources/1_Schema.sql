--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.1
-- Dumped by pg_dump version 9.3.1
-- Started on 2014-04-11 11:35:01

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 190 (class 3079 OID 11750)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2042 (class 0 OID 0)
-- Dependencies: 190
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 170 (class 1259 OID 172137)
-- Name: city_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 171 (class 1259 OID 172139)
-- Name: cities; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE cities (
    id integer DEFAULT nextval('city_id_seq'::regclass) NOT NULL,
    name character varying(255)
);


--
-- TOC entry 186 (class 1259 OID 172347)
-- Name: country_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 187 (class 1259 OID 172349)
-- Name: countries; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE countries (
    id integer DEFAULT nextval('country_id_seq'::regclass) NOT NULL,
    name character varying(255),
    timezone character varying(255)
);


--
-- TOC entry 172 (class 1259 OID 172143)
-- Name: groups; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE groups (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


--
-- TOC entry 173 (class 1259 OID 172146)
-- Name: groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2043 (class 0 OID 0)
-- Dependencies: 173
-- Name: groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE groups_id_seq OWNED BY groups.id;


--
-- TOC entry 174 (class 1259 OID 172148)
-- Name: groups_teams; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE groups_teams (
    id bigint NOT NULL,
    id_group bigint NOT NULL,
    id_team bigint NOT NULL
);


--
-- TOC entry 175 (class 1259 OID 172151)
-- Name: groups_teams_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE groups_teams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2044 (class 0 OID 0)
-- Dependencies: 175
-- Name: groups_teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE groups_teams_id_seq OWNED BY groups_teams.id;


--
-- TOC entry 176 (class 1259 OID 172153)
-- Name: matches; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE matches (
    id bigint NOT NULL,
    date_match timestamp with time zone NOT NULL,
    id_city bigint NOT NULL,
    id_group bigint NOT NULL,
    id_team_a bigint NOT NULL,
    id_team_b bigint NOT NULL
);


--
-- TOC entry 177 (class 1259 OID 172156)
-- Name: matches_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE matches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2045 (class 0 OID 0)
-- Dependencies: 177
-- Name: matches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE matches_id_seq OWNED BY matches.id;


--
-- TOC entry 178 (class 1259 OID 172158)
-- Name: person; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE person (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    register boolean DEFAULT false NOT NULL,
    saved boolean DEFAULT false NOT NULL,
    id_sector bigint,
    id_country bigint,
    photo character varying(255),
    score bigint DEFAULT 0
);


--
-- TOC entry 179 (class 1259 OID 172164)
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2046 (class 0 OID 0)
-- Dependencies: 179
-- Name: person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE person_id_seq OWNED BY person.id;


--
-- TOC entry 182 (class 1259 OID 172297)
-- Name: prode; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE prode (
    id bigint NOT NULL,
    id_person bigint NOT NULL,
    id_match bigint NOT NULL,
    id_team bigint NOT NULL,
    gol bigint NOT NULL
);


--
-- TOC entry 183 (class 1259 OID 172300)
-- Name: prode_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE prode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2047 (class 0 OID 0)
-- Dependencies: 183
-- Name: prode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE prode_id_seq OWNED BY prode.id;


--
-- TOC entry 185 (class 1259 OID 172331)
-- Name: result_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE result_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 184 (class 1259 OID 172317)
-- Name: results; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE results (
    id bigint DEFAULT nextval('result_id_seq'::regclass) NOT NULL,
    id_match bigint NOT NULL,
    id_team bigint NOT NULL,
    gol bigint NOT NULL
);


--
-- TOC entry 188 (class 1259 OID 172355)
-- Name: sector_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE sector_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 189 (class 1259 OID 172357)
-- Name: sectors; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sectors (
    id bigint DEFAULT nextval('sector_id_seq'::regclass) NOT NULL,
    id_country bigint NOT NULL,
    name character varying(255) NOT NULL
);


--
-- TOC entry 180 (class 1259 OID 172166)
-- Name: team_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE team_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 181 (class 1259 OID 172168)
-- Name: teams; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE teams (
    id integer DEFAULT nextval('team_id_seq'::regclass) NOT NULL,
    name character varying(255),
    flag character varying(255)
);


--
-- TOC entry 1880 (class 2604 OID 172175)
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY groups_teams ALTER COLUMN id SET DEFAULT nextval('groups_teams_id_seq'::regclass);


--
-- TOC entry 1881 (class 2604 OID 172176)
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY matches ALTER COLUMN id SET DEFAULT nextval('matches_id_seq'::regclass);


--
-- TOC entry 1882 (class 2604 OID 172177)
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY person ALTER COLUMN id SET DEFAULT nextval('person_id_seq'::regclass);


--
-- TOC entry 1886 (class 2604 OID 172330)
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY prode ALTER COLUMN id SET DEFAULT nextval('prode_id_seq'::regclass);


--
-- TOC entry 1905 (class 2606 OID 172179)
-- Name: id_pk; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY person
    ADD CONSTRAINT id_pk PRIMARY KEY (id);


--
-- TOC entry 1911 (class 2606 OID 172354)
-- Name: id_pk_countries; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY countries
    ADD CONSTRAINT id_pk_countries PRIMARY KEY (id);


--
-- TOC entry 1893 (class 2606 OID 172181)
-- Name: id_pk_groups; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY groups
    ADD CONSTRAINT id_pk_groups PRIMARY KEY (id);


--
-- TOC entry 1897 (class 2606 OID 172183)
-- Name: id_pk_groups_teams; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY groups_teams
    ADD CONSTRAINT id_pk_groups_teams PRIMARY KEY (id);


--
-- TOC entry 1901 (class 2606 OID 172185)
-- Name: id_pk_matches; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT id_pk_matches PRIMARY KEY (id);


--
-- TOC entry 1913 (class 2606 OID 172378)
-- Name: id_sector; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sectors
    ADD CONSTRAINT id_sector PRIMARY KEY (id);


--
-- TOC entry 1907 (class 2606 OID 172187)
-- Name: id_unique; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY person
    ADD CONSTRAINT id_unique UNIQUE (id);


--
-- TOC entry 1895 (class 2606 OID 172189)
-- Name: id_unique_groups; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY groups
    ADD CONSTRAINT id_unique_groups UNIQUE (id);


--
-- TOC entry 1899 (class 2606 OID 172191)
-- Name: id_unique_groups_teams; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY groups_teams
    ADD CONSTRAINT id_unique_groups_teams UNIQUE (id);


--
-- TOC entry 1903 (class 2606 OID 172193)
-- Name: id_unique_matches; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT id_unique_matches UNIQUE (id);


--
-- TOC entry 1909 (class 2606 OID 172195)
-- Name: pk_id; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY teams
    ADD CONSTRAINT pk_id PRIMARY KEY (id);


--
-- TOC entry 1891 (class 2606 OID 172197)
-- Name: pk_id_cities; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY cities
    ADD CONSTRAINT pk_id_cities PRIMARY KEY (id);


--
-- TOC entry 2041 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2014-04-11 11:35:01

--
-- PostgreSQL database dump complete
--

