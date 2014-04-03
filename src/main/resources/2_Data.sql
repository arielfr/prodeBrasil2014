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

INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (4, '2014-06-12', '17:00:00', 1, 1, 2, 3);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (5, '2014-06-13', '13:00:00', 2, 1, 4, 5);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (6, '2014-06-17', '16:00:00', 7, 1, 2, 4);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (7, '2014-06-18', '18:00:00', 8, 1, 5, 3);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (8, '2014-06-23', '17:00:00', 4, 1, 5, 2);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (9, '2014-06-23', '17:00:00', 10, 1, 3, 5);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (10, '2014-06-13', '16:00:00', 12, 2, 6, 7);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (11, '2014-06-13', '18:00:00', 5, 2, 8, 9);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (12, '2014-06-18', '16:00:00', 11, 2, 6, 8);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (13, '2014-06-18', '13:00:00', 9, 2, 9, 7);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (14, '2014-06-23', '13:00:00', 6, 2, 9, 6);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (15, '2014-06-23', '13:00:00', 1, 2, 7, 8);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (16, '2014-06-14', '13:00:00', 3, 3, 10, 11);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (17, '2014-06-14', '22:00:00', 10, 3, 12, 13);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (18, '2014-06-19', '13:00:00', 4, 3, 10, 12);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (19, '2014-06-19', '19:00:00', 2, 3, 13, 11);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (20, '2014-06-24', '16:00:00', 5, 3, 13, 10);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (21, '2014-06-24', '17:00:00', 7, 3, 11, 12);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (22, '2014-06-14', '16:00:00', 7, 4, 14, 15);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (23, '2014-06-14', '18:00:00', 8, 4, 16, 17);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (24, '2014-06-19', '16:00:00', 1, 4, 14, 16);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (25, '2014-06-20', '13:00:00', 10, 4, 17, 15);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (26, '2014-06-24', '13:00:00', 2, 4, 17, 14);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (27, '2014-06-24', '13:00:00', 3, 4, 15, 16);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (28, '2014-06-15', '13:00:00', 4, 5, 18, 19);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (29, '2014-06-15', '16:00:00', 9, 5, 20, 21);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (30, '2014-06-20', '16:00:00', 12, 5, 18, 20);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (31, '2014-06-20', '19:00:00', 6, 5, 21, 19);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (32, '2014-06-25', '16:00:00', 8, 5, 21, 18);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (33, '2014-06-25', '17:00:00', 11, 5, 19, 20);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (34, '2014-06-15', '19:00:00', 11, 6, 1, 22);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (35, '2014-06-16', '16:00:00', 6, 6, 23, 24);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (36, '2014-06-21', '13:00:00', 3, 6, 1, 23);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (37, '2014-06-21', '18:00:00', 5, 6, 24, 22);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (38, '2014-06-25', '13:00:00', 9, 6, 24, 1);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (39, '2014-06-25', '13:00:00', 12, 6, 22, 23);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (40, '2014-06-16', '13:00:00', 12, 7, 25, 26);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (41, '2014-06-16', '19:00:00', 2, 7, 27, 28);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (42, '2014-06-21', '16:00:00', 7, 7, 25, 27);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (43, '2014-06-22', '18:00:00', 8, 7, 28, 26);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (44, '2014-06-26', '13:00:00', 10, 7, 28, 25);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (45, '2014-06-26', '13:00:00', 4, 7, 26, 27);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (46, '2014-06-17', '13:00:00', 3, 8, 29, 30);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (47, '2014-06-17', '18:00:00', 5, 8, 31, 32);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (48, '2014-06-22', '13:00:00', 11, 8, 29, 31);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (49, '2014-06-22', '16:00:00', 9, 8, 32, 30);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (50, '2014-06-26', '17:00:00', 1, 8, 32, 29);
INSERT INTO matches (id, date_match, time_match, id_city, id_group, id_team_a, id_team_b) VALUES (53, '2014-06-26', '17:00:00', 6, 8, 30, 31);


--
-- TOC entry 2278 (class 0 OID 0)
-- Dependencies: 177
-- Name: matches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('matches_id_seq', 53, true);


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

