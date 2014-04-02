--
-- TOC entry 176 (class 1259 OID 52961)
-- Name: groups_teams; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE groups_teams (
    id bigint NOT NULL,
    id_group bigint NOT NULL,
    id_team bigint NOT NULL
);


ALTER TABLE public.groups_teams OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 52974)
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
-- TOC entry 1960 (class 0 OID 0)
-- Dependencies: 177
-- Name: groups_teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE groups_teams_id_seq OWNED BY groups_teams.id;


--
-- TOC entry 1840 (class 2604 OID 52976)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY groups_teams ALTER COLUMN id SET DEFAULT nextval('groups_teams_id_seq'::regclass);


--
-- TOC entry 1954 (class 0 OID 52961)
-- Dependencies: 176
-- Data for Name: groups_teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO groups_teams (id, id_group, id_team) VALUES (3, 3, 2);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (4, 3, 3);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (5, 3, 4);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (6, 3, 5);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (7, 4, 7);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (8, 4, 8);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (9, 4, 9);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (10, 4, 6);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (11, 5, 12);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (12, 5, 11);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (13, 5, 13);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (14, 5, 10);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (15, 6, 15);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (16, 6, 16);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (17, 6, 17);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (18, 6, 14);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (19, 7, 19);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (20, 7, 18);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (21, 7, 20);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (22, 7, 21);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (23, 8, 22);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (24, 8, 23);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (25, 8, 1);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (26, 8, 24);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (27, 9, 27);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (28, 9, 25);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (29, 9, 26);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (30, 9, 28);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (31, 10, 30);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (32, 10, 29);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (33, 10, 32);
INSERT INTO groups_teams (id, id_group, id_team) VALUES (34, 10, 31);


--
-- TOC entry 1961 (class 0 OID 0)
-- Dependencies: 177
-- Name: groups_teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('groups_teams_id_seq', 34, true);


--
-- TOC entry 1842 (class 2606 OID 52978)
-- Name: id_pk_groups_teams; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY groups_teams
    ADD CONSTRAINT id_pk_groups_teams PRIMARY KEY (id);


--
-- TOC entry 1844 (class 2606 OID 52980)
-- Name: id_unique_groups_teams; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY groups_teams
    ADD CONSTRAINT id_unique_groups_teams UNIQUE (id);


--
-- TOC entry 1845 (class 2606 OID 52964)
-- Name: fk_group; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY groups_teams
    ADD CONSTRAINT fk_group FOREIGN KEY (id_group) REFERENCES groups(id);


--
-- TOC entry 1846 (class 2606 OID 52969)
-- Name: fk_team; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY groups_teams
    ADD CONSTRAINT fk_team FOREIGN KEY (id_team) REFERENCES teams(id);


-- Completed on 2014-04-02 01:48:26

--
-- PostgreSQL database dump complete
--

