CREATE TABLE matches (
    id bigint NOT NULL,
    date_match date NOT NULL,
    time_match time without time zone NOT NULL,
    id_city bigint NOT NULL,
    id_group bigint NOT NULL,
    id_team_a bigint NOT NULL,
    id_team_b bigint NOT NULL
);


ALTER TABLE public.matches OWNER TO postgres;

--
-- TOC entry 179 (class 1259 OID 53004)
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
-- TOC entry 1967 (class 0 OID 0)
-- Dependencies: 179
-- Name: matches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE matches_id_seq OWNED BY matches.id;


--
-- TOC entry 1845 (class 2604 OID 53006)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matches ALTER COLUMN id SET DEFAULT nextval('matches_id_seq'::regclass);


--
-- TOC entry 1961 (class 0 OID 52981)
-- Dependencies: 178
-- Data for Name: matches; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (4, '2014-06-12', '17:00:00', 1, 3, 2, 3);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (5, '2014-06-13', '13:00:00', 2, 3, 4, 5);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (6, '2014-06-17', '16:00:00', 7, 3, 2, 4);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (7, '2014-06-18', '18:00:00', 8, 3, 5, 3);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (8, '2014-06-23', '17:00:00', 4, 3, 5, 2);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (9, '2014-06-23', '17:00:00', 10, 3, 3, 5);


--
-- TOC entry 1968 (class 0 OID 0)
-- Dependencies: 179
-- Name: matches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('matches_id_seq', 9, true);


--
-- TOC entry 1847 (class 2606 OID 53008)
-- Name: id_pk_matches; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT id_pk_matches PRIMARY KEY (id);


--
-- TOC entry 1849 (class 2606 OID 53010)
-- Name: id_unique_matches; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT id_unique_matches UNIQUE (id);


--
-- TOC entry 1850 (class 2606 OID 52984)
-- Name: fk_city; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_city FOREIGN KEY (id_city) REFERENCES cities(id);


--
-- TOC entry 1851 (class 2606 OID 52989)
-- Name: fk_group; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_group FOREIGN KEY (id_group) REFERENCES groups(id);


--
-- TOC entry 1852 (class 2606 OID 52994)
-- Name: fk_team_a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_team_a FOREIGN KEY (id_team_a) REFERENCES teams(id);


--
-- TOC entry 1853 (class 2606 OID 52999)
-- Name: fk_team_b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY matches
    ADD CONSTRAINT fk_team_b FOREIGN KEY (id_team_b) REFERENCES teams(id);


-- Completed on 2014-04-02 02:59:17

--
-- PostgreSQL database dump complete
--

