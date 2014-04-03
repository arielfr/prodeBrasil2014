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
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (10, '2014-06-13', '16:00:00', 12, 4, 6, 7);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (11, '2014-06-13', '18:00:00', 5, 4, 8, 9);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (12, '2014-06-18', '16:00:00', 11, 4, 6, 8);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (13, '2014-06-18', '13:00:00', 9, 4, 9, 7);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (14, '2014-06-23', '13:00:00', 6, 4, 9, 6);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (15, '2014-06-23', '13:00:00', 1, 4, 7, 8);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (16, '2014-06-14', '13:00:00', 3, 5, 10, 11);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (17, '2014-06-14', '22:00:00', 10, 5, 12, 13);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (18, '2014-06-19', '13:00:00', 4, 5, 10, 12);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (19, '2014-06-19', '19:00:00', 2, 5, 13, 11);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (20, '2014-06-24', '16:00:00', 5, 5, 13, 10);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (21, '2014-06-24', '17:00:00', 7, 5, 11, 12);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (22, '2014-06-14', '16:00:00', 7, 6, 14, 15);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (23, '2014-06-14', '18:00:00', 8, 6, 16, 17);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (24, '2014-06-19', '16:00:00', 1, 6, 14, 16);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (25, '2014-06-20', '13:00:00', 10, 6, 17, 15);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (26, '2014-06-24', '13:00:00', 2, 6, 17, 14);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (27, '2014-06-24', '13:00:00', 3, 6, 15, 16);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (28, '2014-06-15', '13:00:00', 4, 7, 18, 19);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (29, '2014-06-15', '16:00:00', 9, 7, 20, 21);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (30, '2014-06-20', '16:00:00', 12, 7, 18, 20);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (31, '2014-06-20', '19:00:00', 6, 7, 21, 19);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (32, '2014-06-25', '16:00:00', 8, 7, 21, 18);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (33, '2014-06-25', '17:00:00', 11, 7, 19, 20);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (34, '2014-06-15', '19:00:00', 11, 8, 1, 22);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (35, '2014-06-16', '16:00:00', 6, 8, 23, 24);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (36, '2014-06-21', '13:00:00', 3, 8, 1, 23);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (37, '2014-06-21', '18:00:00', 5, 8, 24, 22);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (38, '2014-06-25', '13:00:00', 9, 8, 24, 1);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (39, '2014-06-25', '13:00:00', 12, 8, 22, 23);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (40, '2014-06-16', '13:00:00', 12, 9, 25, 26);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (41, '2014-06-16', '19:00:00', 2, 9, 27, 28);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (42, '2014-06-21', '16:00:00', 7, 9, 25, 27);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (43, '2014-06-22', '18:00:00', 8, 9, 28, 26);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (44, '2014-06-26', '13:00:00', 10, 9, 28, 25);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (45, '2014-06-26', '13:00:00', 4, 9, 26, 27);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (46, '2014-06-17', '13:00:00', 3, 10, 29, 30);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (47, '2014-06-17', '18:00:00', 5, 10, 31, 32);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (48, '2014-06-22', '13:00:00', 11, 10, 29, 31);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (49, '2014-06-22', '16:00:00', 9, 10, 32, 30);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (50, '2014-06-26', '17:00:00', 1, 10, 32, 29);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (53, '2014-06-26', '17:00:00', 6, 10, 30, 31);


--
-- TOC entry 1968 (class 0 OID 0)
-- Dependencies: 179
-- Name: matches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('matches_id_seq', 53, true);


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


-- Completed on 2014-04-03 10:27:47

--
-- PostgreSQL database dump complete
--

-- Some utils queries.
/*
	select groups.id, groups.name, teams.id, teams.name from groups_teams
	inner join groups on groups_teams.id_group = groups.id
	inner join teams on groups_teams.id_team = teams.id
	where id_group=10
	
	select date_match, time_match, cities.name, groups.name, locales.name, visitante.name  from matches
	inner join groups on matches.id_group = groups.id
	inner join teams locales on matches.id_team_a = locales.id
	inner join teams visitante on matches.id_team_b = visitante.id
	inner join cities on matches.id_city = cities.id
	where groups.name = 'H'
*/   
    