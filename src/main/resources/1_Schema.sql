--
-- PostgreSQL database dump
--

--
-- TOC entry 170 (class 1259 OID 172137)
-- Name: city_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.city_id_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 171 (class 1259 OID 172139)
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cities (
    id integer DEFAULT nextval('city_id_seq'::regclass) NOT NULL,
    name character varying(255)
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 172143)
-- Name: groups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE groups (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.groups OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 172146)
-- Name: groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groups_id_seq OWNER TO postgres;

--
-- TOC entry 2001 (class 0 OID 0)
-- Dependencies: 173
-- Name: groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE groups_id_seq OWNED BY groups.id;


--
-- TOC entry 174 (class 1259 OID 172148)
-- Name: groups_teams; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE groups_teams (
    id bigint NOT NULL,
    id_group bigint NOT NULL,
    id_team bigint NOT NULL
);


ALTER TABLE public.groups_teams OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 172151)
-- Name: groups_teams_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE groups_teams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groups_teams_id_seq OWNER TO postgres;

--
-- TOC entry 2002 (class 0 OID 0)
-- Dependencies: 175
-- Name: groups_teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE groups_teams_id_seq OWNED BY groups_teams.id;


--
-- TOC entry 176 (class 1259 OID 172153)
-- Name: matches; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE matches (
    id bigint NOT NULL,
    date_match timestamp without time zone NOT NULL,
    id_city bigint NOT NULL,
    id_group bigint NOT NULL,
    id_team_a bigint NOT NULL,
    id_team_b bigint NOT NULL
);


ALTER TABLE public.matches OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 172156)
-- Name: matches_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE matches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.matches_id_seq OWNER TO postgres;

--
-- TOC entry 2003 (class 0 OID 0)
-- Dependencies: 177
-- Name: matches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE matches_id_seq OWNED BY matches.id;


--
-- TOC entry 178 (class 1259 OID 172158)
-- Name: person; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE person (
    id bigint NOT NULL,
    firstname character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    email character varying(255) NOT NULL
);


ALTER TABLE public.person OWNER TO postgres;

--
-- TOC entry 179 (class 1259 OID 172164)
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_id_seq OWNER TO postgres;

--
-- TOC entry 2004 (class 0 OID 0)
-- Dependencies: 179
-- Name: person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE person_id_seq OWNED BY person.id;


--
-- TOC entry 180 (class 1259 OID 172166)
-- Name: team_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE team_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_id_seq OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 172168)
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE teams (
    id integer DEFAULT nextval('team_id_seq'::regclass) NOT NULL,
    name character varying(255),
    flag character varying(255)
);


ALTER TABLE public.teams OWNER TO postgres;

--
-- TOC entry 1856 (class 2604 OID 172175)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY groups_teams ALTER COLUMN id SET DEFAULT nextval('groups_teams_id_seq'::regclass);


--
-- TOC entry 1857 (class 2604 OID 172176)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matches ALTER COLUMN id SET DEFAULT nextval('matches_id_seq'::regclass);


--
-- TOC entry 1858 (class 2604 OID 172177)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY person ALTER COLUMN id SET DEFAULT nextval('person_id_seq'::regclass);


--
-- TOC entry 1875 (class 2606 OID 172179)
-- Name: id_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY person
    ADD CONSTRAINT id_pk PRIMARY KEY (id);


--
-- TOC entry 1863 (class 2606 OID 172181)
-- Name: id_pk_groups; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY groups
    ADD CONSTRAINT id_pk_groups PRIMARY KEY (id);


--
-- TOC entry 1867 (class 2606 OID 172183)
-- Name: id_pk_groups_teams; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY groups_teams
    ADD CONSTRAINT id_pk_groups_teams PRIMARY KEY (id);


--
-- TOC entry 1871 (class 2606 OID 172185)
-- Name: id_pk_matches; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT id_pk_matches PRIMARY KEY (id);


--
-- TOC entry 1877 (class 2606 OID 172187)
-- Name: id_unique; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY person
    ADD CONSTRAINT id_unique UNIQUE (id);


--
-- TOC entry 1865 (class 2606 OID 172189)
-- Name: id_unique_groups; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY groups
    ADD CONSTRAINT id_unique_groups UNIQUE (id);


--
-- TOC entry 1869 (class 2606 OID 172191)
-- Name: id_unique_groups_teams; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY groups_teams
    ADD CONSTRAINT id_unique_groups_teams UNIQUE (id);


--
-- TOC entry 1873 (class 2606 OID 172193)
-- Name: id_unique_matches; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT id_unique_matches UNIQUE (id);


--
-- TOC entry 1879 (class 2606 OID 172195)
-- Name: pk_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY teams
    ADD CONSTRAINT pk_id PRIMARY KEY (id);


--
-- TOC entry 1861 (class 2606 OID 172197)
-- Name: pk_id_cities; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cities
    ADD CONSTRAINT pk_id_cities PRIMARY KEY (id);

--
-- TOC entry 1999 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2014-04-03 19:44:24

--
-- PostgreSQL database dump complete
--

