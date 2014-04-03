--
-- PostgreSQL database dump
--

--
-- TOC entry 2262 (class 0 OID 16474)
-- Dependencies: 173
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cities VALUES (1, 'Sao Paulo');
INSERT INTO cities VALUES (2, 'Natal');
INSERT INTO cities VALUES (3, 'Belo Horizonte');
INSERT INTO cities VALUES (4, 'Brasilia');
INSERT INTO cities VALUES (5, 'Cuiaba');
INSERT INTO cities VALUES (6, 'Curitiba');
INSERT INTO cities VALUES (7, 'Fortaleza');
INSERT INTO cities VALUES (8, 'Manaus');
INSERT INTO cities VALUES (9, 'Porto Alegre');
INSERT INTO cities VALUES (10, 'Recife');
INSERT INTO cities VALUES (11, 'Rio De Janeiro');
INSERT INTO cities VALUES (12, 'Salvador');


--
-- TOC entry 2275 (class 0 OID 0)
-- Dependencies: 180
-- Name: city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('city_id_seq', 12, true);


--
-- TOC entry 2263 (class 0 OID 16497)
-- Dependencies: 174
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO groups VALUES (1, 'A');
INSERT INTO groups VALUES (3, 'C');
INSERT INTO groups VALUES (2, 'B');
INSERT INTO groups VALUES (4, 'D');
INSERT INTO groups VALUES (5, 'E');
INSERT INTO groups VALUES (6, 'F');
INSERT INTO groups VALUES (7, 'G');
INSERT INTO groups VALUES (8, 'H');
INSERT INTO groups VALUES (9, 'OCTAVOS');
INSERT INTO groups VALUES (10, 'CUARTOS');
INSERT INTO groups VALUES (11, 'SEMI');
INSERT INTO groups VALUES (12, 'TERCERO');
INSERT INTO groups VALUES (13, 'FINAL');


--
-- TOC entry 2276 (class 0 OID 0)
-- Dependencies: 175
-- Name: groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('groups_id_seq', 13, true);


--
-- TOC entry 2261 (class 0 OID 16466)
-- Dependencies: 172
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO teams VALUES (1, 'Argentina', 'arg');
INSERT INTO teams VALUES (2, 'Brazil', 'bra');
INSERT INTO teams VALUES (3, 'Croacia', 'cro');
INSERT INTO teams VALUES (4, 'Mexico', 'mex');
INSERT INTO teams VALUES (5, 'Camerun', 'cam');
INSERT INTO teams VALUES (6, 'España', 'esp');
INSERT INTO teams VALUES (7, 'Holanda', 'hol');
INSERT INTO teams VALUES (8, 'Chile', 'chi');
INSERT INTO teams VALUES (9, 'Australia', 'aus');
INSERT INTO teams VALUES (10, 'Colombia', 'col');
INSERT INTO teams VALUES (11, 'Grecia', 'gre');
INSERT INTO teams VALUES (12, 'Costa de Marfil', 'mar');
INSERT INTO teams VALUES (13, 'Japon', 'jap');
INSERT INTO teams VALUES (14, 'Uruguay', 'uru');
INSERT INTO teams VALUES (15, 'Costa Rica', 'cos');
INSERT INTO teams VALUES (16, 'Inglaterra', 'ing');
INSERT INTO teams VALUES (17, 'Italia', 'ita');
INSERT INTO teams VALUES (18, 'Suiza', 'sui');
INSERT INTO teams VALUES (19, 'Ecuador', 'ecu');
INSERT INTO teams VALUES (20, 'Francia', 'fra');
INSERT INTO teams VALUES (21, 'Honduras', 'hon');
INSERT INTO teams VALUES (22, 'Bosnia', 'bos');
INSERT INTO teams VALUES (23, 'Iran', 'ira');
INSERT INTO teams VALUES (24, 'Nigeria', 'nig');
INSERT INTO teams VALUES (25, 'Alemania', 'ale');
INSERT INTO teams VALUES (26, 'Portugal', 'por');
INSERT INTO teams VALUES (27, 'Ghana', 'gha');
INSERT INTO teams VALUES (28, 'USA', 'usa');
INSERT INTO teams VALUES (29, 'Belgica', 'bel');
INSERT INTO teams VALUES (30, 'Argelia', 'arl');
INSERT INTO teams VALUES (31, 'Rusia', 'rus');
INSERT INTO teams VALUES (32, 'Corea del Sur', 'cor');


--
-- TOC entry 2267 (class 0 OID 16539)
-- Dependencies: 178
-- Data for Name: groups_teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO groups_teams VALUES (3, 1, 2);
INSERT INTO groups_teams VALUES (4, 1, 3);
INSERT INTO groups_teams VALUES (5, 1, 4);
INSERT INTO groups_teams VALUES (6, 1, 5);
INSERT INTO groups_teams VALUES (11, 3, 12);
INSERT INTO groups_teams VALUES (12, 3, 11);
INSERT INTO groups_teams VALUES (13, 3, 13);
INSERT INTO groups_teams VALUES (14, 3, 10);
INSERT INTO groups_teams VALUES (7, 2, 7);
INSERT INTO groups_teams VALUES (8, 2, 8);
INSERT INTO groups_teams VALUES (9, 2, 9);
INSERT INTO groups_teams VALUES (10, 2, 6);
INSERT INTO groups_teams VALUES (15, 4, 15);
INSERT INTO groups_teams VALUES (16, 4, 16);
INSERT INTO groups_teams VALUES (17, 4, 17);
INSERT INTO groups_teams VALUES (18, 4, 14);
INSERT INTO groups_teams VALUES (19, 5, 19);
INSERT INTO groups_teams VALUES (20, 5, 18);
INSERT INTO groups_teams VALUES (21, 5, 20);
INSERT INTO groups_teams VALUES (22, 5, 21);
INSERT INTO groups_teams VALUES (23, 6, 22);
INSERT INTO groups_teams VALUES (24, 6, 23);
INSERT INTO groups_teams VALUES (25, 6, 1);
INSERT INTO groups_teams VALUES (26, 6, 24);
INSERT INTO groups_teams VALUES (27, 7, 27);
INSERT INTO groups_teams VALUES (28, 7, 25);
INSERT INTO groups_teams VALUES (29, 7, 26);
INSERT INTO groups_teams VALUES (30, 7, 28);
INSERT INTO groups_teams VALUES (31, 8, 30);
INSERT INTO groups_teams VALUES (32, 8, 29);
INSERT INTO groups_teams VALUES (33, 8, 32);
INSERT INTO groups_teams VALUES (34, 8, 31);


--
-- TOC entry 2277 (class 0 OID 0)
-- Dependencies: 179
-- Name: groups_teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('groups_teams_id_seq', 34, true);


--
-- TOC entry 2265 (class 0 OID 16509)
-- Dependencies: 176
-- Data for Name: matches; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO matches VALUES (1, '2014-06-12', '17:00:00', 1, 1, 2, 3);
INSERT INTO matches VALUES (2, '2014-06-13', '13:00:00', 2, 1, 4, 5);
INSERT INTO matches VALUES (3, '2014-06-17', '16:00:00', 7, 1, 2, 4);
INSERT INTO matches VALUES (4, '2014-06-18', '18:00:00', 8, 1, 5, 3);
INSERT INTO matches VALUES (5, '2014-06-23', '17:00:00', 4, 1, 5, 2);
INSERT INTO matches VALUES (6, '2014-06-23', '17:00:00', 10, 1, 3, 5);


--
-- TOC entry 2278 (class 0 OID 0)
-- Dependencies: 177
-- Name: matches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('matches_id_seq', 6, true);


--
-- TOC entry 2259 (class 0 OID 16398)
-- Dependencies: 170
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO person VALUES (5, 'Ariel', 'Rey', 'ariel.rey@openenglish.com');


--
-- TOC entry 2279 (class 0 OID 0)
-- Dependencies: 171
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('person_id_seq', 3, true);


--
-- TOC entry 2280 (class 0 OID 0)
-- Dependencies: 181
-- Name: team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('team_id_seq', 32, true);


-- Completed on 2014-04-03 00:54:56 ART

--
-- PostgreSQL database dump complete
--

