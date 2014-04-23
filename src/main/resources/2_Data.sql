--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.1
-- Dumped by pg_dump version 9.3.1
-- Started on 2014-04-11 11:34:44

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- TOC entry 2036 (class 0 OID 172139)
-- Dependencies: 171
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
-- TOC entry 2059 (class 0 OID 0)
-- Dependencies: 170
-- Name: city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('city_id_seq', 12, true);


--
-- TOC entry 2052 (class 0 OID 172349)
-- Dependencies: 187
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO countries VALUES (1, 'Argentina', 'America/Argentina/Buenos_Aires');
INSERT INTO countries VALUES (2, 'Brasil', 'America/Sao_Paulo');
INSERT INTO countries VALUES (3, 'Venezuela', 'America/Caracas');
INSERT INTO countries VALUES (4, 'Usa', 'America/St_Vincent');


--
-- TOC entry 2060 (class 0 OID 0)
-- Dependencies: 186
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('country_id_seq', 1, false);


--
-- TOC entry 2037 (class 0 OID 172143)
-- Dependencies: 172
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO groups VALUES (9, 'OCTAVOS');
INSERT INTO groups VALUES (10, 'CUARTOS');
INSERT INTO groups VALUES (11, 'SEMI');
INSERT INTO groups VALUES (12, 'TERCERO');
INSERT INTO groups VALUES (13, 'FINAL');
INSERT INTO groups VALUES (1, 'Group A');
INSERT INTO groups VALUES (2, 'Group B');
INSERT INTO groups VALUES (3, 'Group C');
INSERT INTO groups VALUES (4, 'Group D');
INSERT INTO groups VALUES (5, 'Group E');
INSERT INTO groups VALUES (6, 'Group F');
INSERT INTO groups VALUES (7, 'Group G');
INSERT INTO groups VALUES (8, 'Group H');


--
-- TOC entry 2061 (class 0 OID 0)
-- Dependencies: 173
-- Name: groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('groups_id_seq', 13, true);


--
-- TOC entry 2046 (class 0 OID 172168)
-- Dependencies: 181
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO teams VALUES (1, 'Argentina', 'arg');
INSERT INTO teams VALUES (2, 'Brazil', 'bra');
INSERT INTO teams VALUES (4, 'Mexico', 'mex');
INSERT INTO teams VALUES (8, 'Chile', 'chi');
INSERT INTO teams VALUES (9, 'Australia', 'aus');
INSERT INTO teams VALUES (10, 'Colombia', 'col');
INSERT INTO teams VALUES (14, 'Uruguay', 'uru');
INSERT INTO teams VALUES (15, 'Costa Rica', 'cos');
INSERT INTO teams VALUES (19, 'Ecuador', 'ecu');
INSERT INTO teams VALUES (21, 'Honduras', 'hon');
INSERT INTO teams VALUES (22, 'Bosnia', 'bos');
INSERT INTO teams VALUES (23, 'Iran', 'ira');
INSERT INTO teams VALUES (24, 'Nigeria', 'nig');
INSERT INTO teams VALUES (26, 'Portugal', 'por');
INSERT INTO teams VALUES (27, 'Ghana', 'gha');
INSERT INTO teams VALUES (25, 'Germany', 'ale');
INSERT INTO teams VALUES (29, 'Belgium', 'bel');
INSERT INTO teams VALUES (30, 'Algeria', 'arl');
INSERT INTO teams VALUES (5, 'Cameroon', 'cam');
INSERT INTO teams VALUES (32, 'South Korea', 'cor');
INSERT INTO teams VALUES (12, 'Ivory Coast', 'mar');
INSERT INTO teams VALUES (3, 'Croatia', 'cro');
INSERT INTO teams VALUES (6, 'Spain', 'esp');
INSERT INTO teams VALUES (20, 'France', 'fra');
INSERT INTO teams VALUES (11, 'Greece', 'gre');
INSERT INTO teams VALUES (7, 'Netherlands', 'hol');
INSERT INTO teams VALUES (16, 'England', 'ing');
INSERT INTO teams VALUES (17, 'Italy', 'ita');
INSERT INTO teams VALUES (13, 'Japan', 'jap');
INSERT INTO teams VALUES (31, 'Russia', 'rus');
INSERT INTO teams VALUES (18, 'Switzerland', 'sui');
INSERT INTO teams VALUES (28, 'USA', 'usa');


--
-- TOC entry 2039 (class 0 OID 172148)
-- Dependencies: 174
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
-- TOC entry 2062 (class 0 OID 0)
-- Dependencies: 175
-- Name: groups_teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('groups_teams_id_seq', 35, true);


--
-- TOC entry 2041 (class 0 OID 172153)
-- Dependencies: 176
-- Data for Name: matches; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO matches VALUES (4, '2014-06-12 17:00:00-03', 1, 1, 2, 3);
INSERT INTO matches VALUES (5, '2014-06-13 13:00:00-03', 2, 1, 4, 5);
INSERT INTO matches VALUES (6, '2014-06-17 16:00:00-03', 7, 1, 2, 4);
INSERT INTO matches VALUES (7, '2014-06-18 18:00:00-03', 8, 1, 5, 3);
INSERT INTO matches VALUES (8, '2014-06-23 17:00:00-03', 4, 1, 5, 2);
INSERT INTO matches VALUES (9, '2014-06-23 17:00:00-03', 10, 1, 3, 5);
INSERT INTO matches VALUES (10, '2014-06-13 16:00:00-03', 12, 2, 6, 7);
INSERT INTO matches VALUES (11, '2014-06-13 18:00:00-03', 5, 2, 8, 9);
INSERT INTO matches VALUES (12, '2014-06-18 16:00:00-03', 11, 2, 6, 8);
INSERT INTO matches VALUES (13, '2014-06-18 13:00:00-03', 9, 2, 9, 7);
INSERT INTO matches VALUES (14, '2014-06-23 13:00:00-03', 6, 2, 9, 6);
INSERT INTO matches VALUES (15, '2014-06-23 13:00:00-03', 1, 2, 7, 8);
INSERT INTO matches VALUES (16, '2014-06-14 13:00:00-03', 3, 3, 10, 11);
INSERT INTO matches VALUES (17, '2014-06-14 22:00:00-03', 10, 3, 12, 13);
INSERT INTO matches VALUES (18, '2014-06-19 13:00:00-03', 4, 3, 10, 12);
INSERT INTO matches VALUES (19, '2014-06-19 19:00:00-03', 2, 3, 13, 11);
INSERT INTO matches VALUES (20, '2014-06-24 16:00:00-03', 5, 3, 13, 10);
INSERT INTO matches VALUES (21, '2014-06-24 17:00:00-03', 7, 3, 11, 12);
INSERT INTO matches VALUES (22, '2014-06-14 16:00:00-03', 7, 4, 14, 15);
INSERT INTO matches VALUES (23, '2014-06-14 18:00:00-03', 8, 4, 16, 17);
INSERT INTO matches VALUES (24, '2014-06-19 16:00:00-03', 1, 4, 14, 16);
INSERT INTO matches VALUES (25, '2014-06-20 13:00:00-03', 10, 4, 17, 15);
INSERT INTO matches VALUES (26, '2014-06-24 13:00:00-03', 2, 4, 17, 14);
INSERT INTO matches VALUES (27, '2014-06-24 13:00:00-03', 3, 4, 15, 16);
INSERT INTO matches VALUES (28, '2014-06-15 13:00:00-03', 4, 5, 18, 19);
INSERT INTO matches VALUES (29, '2014-06-15 16:00:00-03', 9, 5, 20, 21);
INSERT INTO matches VALUES (30, '2014-06-20 16:00:00-03', 12, 5, 18, 20);
INSERT INTO matches VALUES (31, '2014-06-20 19:00:00-03', 6, 5, 21, 19);
INSERT INTO matches VALUES (32, '2014-06-25 16:00:00-03', 8, 5, 21, 18);
INSERT INTO matches VALUES (33, '2014-06-25 17:00:00-03', 11, 5, 19, 20);
INSERT INTO matches VALUES (34, '2014-06-15 19:00:00-03', 11, 6, 1, 22);
INSERT INTO matches VALUES (35, '2014-06-16 16:00:00-03', 6, 6, 23, 24);
INSERT INTO matches VALUES (36, '2014-06-21 13:00:00-03', 3, 6, 1, 23);
INSERT INTO matches VALUES (37, '2014-06-21 18:00:00-03', 5, 6, 24, 22);
INSERT INTO matches VALUES (38, '2014-06-25 13:00:00-03', 9, 6, 24, 1);
INSERT INTO matches VALUES (39, '2014-06-25 13:00:00-03', 12, 6, 22, 23);
INSERT INTO matches VALUES (40, '2014-06-16 13:00:00-03', 12, 7, 25, 26);
INSERT INTO matches VALUES (41, '2014-06-16 19:00:00-03', 2, 7, 27, 28);
INSERT INTO matches VALUES (42, '2014-06-21 16:00:00-03', 7, 7, 25, 27);
INSERT INTO matches VALUES (43, '2014-06-22 18:00:00-03', 8, 7, 28, 26);
INSERT INTO matches VALUES (44, '2014-06-26 13:00:00-03', 10, 7, 28, 25);
INSERT INTO matches VALUES (45, '2014-06-26 13:00:00-03', 4, 7, 26, 27);
INSERT INTO matches VALUES (46, '2014-06-17 13:00:00-03', 3, 8, 29, 30);
INSERT INTO matches VALUES (47, '2014-06-17 18:00:00-03', 5, 8, 31, 32);
INSERT INTO matches VALUES (48, '2014-06-22 13:00:00-03', 11, 8, 29, 31);
INSERT INTO matches VALUES (49, '2014-06-22 16:00:00-03', 9, 8, 32, 30);
INSERT INTO matches VALUES (50, '2014-06-26 17:00:00-03', 1, 8, 32, 29);
INSERT INTO matches VALUES (53, '2014-06-26 17:00:00-03', 6, 8, 30, 31);


--
-- TOC entry 2063 (class 0 OID 0)
-- Dependencies: 177
-- Name: matches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('matches_id_seq', 54, true);


--
-- TOC entry 2054 (class 0 OID 172357)
-- Dependencies: 189
-- Data for Name: sectors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sectors VALUES (1, 1, 'Learning Platform');
INSERT INTO sectors VALUES (2, 1, 'Business Intelligence');
INSERT INTO sectors VALUES (3, 1, 'Automation');
INSERT INTO sectors VALUES (4, 1, 'Management');


--
-- TOC entry 2043 (class 0 OID 172158)
-- Dependencies: 178
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO person VALUES (2, 'Ariel Rey', 'ariel.rey@openenglish.com', true, true, 1, 1, NULL, 0);


--
-- TOC entry 2064 (class 0 OID 0)
-- Dependencies: 179
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('person_id_seq', 2, true);


--
-- TOC entry 2047 (class 0 OID 172297)
-- Dependencies: 182
-- Data for Name: prode; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO prode VALUES (2, 2, 4, 2, 1);
INSERT INTO prode VALUES (3, 2, 4, 3, 2);
INSERT INTO prode VALUES (4, 2, 5, 4, 3);
INSERT INTO prode VALUES (5, 2, 5, 5, 4);
INSERT INTO prode VALUES (8, 2, 6, 2, 4);
INSERT INTO prode VALUES (9, 2, 6, 4, 4);
INSERT INTO prode VALUES (10, 2, 7, 5, 5);
INSERT INTO prode VALUES (11, 2, 7, 3, 6);
INSERT INTO prode VALUES (12, 2, 8, 5, 1);
INSERT INTO prode VALUES (13, 2, 8, 2, 1);
INSERT INTO prode VALUES (14, 2, 9, 3, 2);
INSERT INTO prode VALUES (15, 2, 9, 5, 2);
INSERT INTO prode VALUES (16, 2, 10, 6, 3);
INSERT INTO prode VALUES (17, 2, 10, 7, 3);
INSERT INTO prode VALUES (18, 2, 11, 8, 6);
INSERT INTO prode VALUES (19, 2, 11, 9, 5);
INSERT INTO prode VALUES (20, 2, 13, 9, 2);
INSERT INTO prode VALUES (21, 2, 13, 7, 1);
INSERT INTO prode VALUES (22, 2, 12, 6, 6);
INSERT INTO prode VALUES (23, 2, 12, 8, 8);
INSERT INTO prode VALUES (24, 2, 14, 9, 1);
INSERT INTO prode VALUES (25, 2, 14, 6, 4);
INSERT INTO prode VALUES (26, 2, 15, 7, 4);
INSERT INTO prode VALUES (27, 2, 15, 8, 4);
INSERT INTO prode VALUES (28, 2, 16, 10, 0);
INSERT INTO prode VALUES (29, 2, 16, 11, 0);
INSERT INTO prode VALUES (30, 2, 17, 12, 1);
INSERT INTO prode VALUES (31, 2, 17, 13, 2);
INSERT INTO prode VALUES (32, 2, 18, 10, 3);
INSERT INTO prode VALUES (33, 2, 18, 12, 4);
INSERT INTO prode VALUES (34, 2, 19, 13, 5);
INSERT INTO prode VALUES (35, 2, 19, 11, 6);
INSERT INTO prode VALUES (36, 2, 20, 13, 4);
INSERT INTO prode VALUES (37, 2, 20, 10, 3);
INSERT INTO prode VALUES (38, 2, 21, 11, 1);
INSERT INTO prode VALUES (39, 2, 21, 12, 3);
INSERT INTO prode VALUES (40, 2, 22, 14, 5);
INSERT INTO prode VALUES (41, 2, 22, 15, 5);
INSERT INTO prode VALUES (42, 2, 23, 16, 6);
INSERT INTO prode VALUES (43, 2, 23, 17, 4);
INSERT INTO prode VALUES (44, 2, 24, 14, 0);
INSERT INTO prode VALUES (45, 2, 24, 16, 0);
INSERT INTO prode VALUES (46, 2, 25, 17, 0);
INSERT INTO prode VALUES (47, 2, 25, 15, 0);
INSERT INTO prode VALUES (48, 2, 26, 17, 0);
INSERT INTO prode VALUES (49, 2, 26, 14, 0);
INSERT INTO prode VALUES (50, 2, 27, 15, 0);
INSERT INTO prode VALUES (51, 2, 27, 16, 0);
INSERT INTO prode VALUES (52, 2, 28, 18, 0);
INSERT INTO prode VALUES (53, 2, 28, 19, 0);
INSERT INTO prode VALUES (54, 2, 29, 20, 0);
INSERT INTO prode VALUES (55, 2, 29, 21, 5);
INSERT INTO prode VALUES (56, 2, 30, 18, 4);
INSERT INTO prode VALUES (57, 2, 30, 20, 4);
INSERT INTO prode VALUES (58, 2, 31, 21, 3);
INSERT INTO prode VALUES (59, 2, 31, 19, 5);
INSERT INTO prode VALUES (60, 2, 32, 21, 6);
INSERT INTO prode VALUES (61, 2, 32, 18, 7);
INSERT INTO prode VALUES (62, 2, 33, 19, 4);
INSERT INTO prode VALUES (63, 2, 33, 20, 6);
INSERT INTO prode VALUES (64, 2, 34, 1, 4);
INSERT INTO prode VALUES (65, 2, 34, 22, 6);
INSERT INTO prode VALUES (66, 2, 35, 23, 4);
INSERT INTO prode VALUES (67, 2, 35, 24, 6);
INSERT INTO prode VALUES (68, 2, 36, 1, 2);
INSERT INTO prode VALUES (69, 2, 36, 23, 3);
INSERT INTO prode VALUES (70, 2, 37, 24, 4);
INSERT INTO prode VALUES (71, 2, 37, 22, 3);
INSERT INTO prode VALUES (72, 2, 38, 24, 4);
INSERT INTO prode VALUES (73, 2, 38, 1, 3);
INSERT INTO prode VALUES (74, 2, 39, 22, 5);
INSERT INTO prode VALUES (75, 2, 39, 23, 6);
INSERT INTO prode VALUES (76, 2, 40, 25, 8);
INSERT INTO prode VALUES (77, 2, 40, 26, 6);
INSERT INTO prode VALUES (78, 2, 41, 27, 8);
INSERT INTO prode VALUES (79, 2, 41, 28, 3);
INSERT INTO prode VALUES (80, 2, 42, 25, 5);
INSERT INTO prode VALUES (81, 2, 42, 27, 4);
INSERT INTO prode VALUES (82, 2, 43, 28, 3);
INSERT INTO prode VALUES (83, 2, 43, 26, 4);
INSERT INTO prode VALUES (84, 2, 44, 28, 6);
INSERT INTO prode VALUES (85, 2, 44, 25, 5);
INSERT INTO prode VALUES (86, 2, 45, 26, 5);
INSERT INTO prode VALUES (87, 2, 45, 27, 4);
INSERT INTO prode VALUES (88, 2, 46, 29, 6);
INSERT INTO prode VALUES (89, 2, 46, 30, 7);
INSERT INTO prode VALUES (90, 2, 47, 31, 5);
INSERT INTO prode VALUES (91, 2, 47, 32, 7);
INSERT INTO prode VALUES (92, 2, 48, 29, 5);
INSERT INTO prode VALUES (93, 2, 48, 31, 7);
INSERT INTO prode VALUES (94, 2, 49, 32, 7);
INSERT INTO prode VALUES (95, 2, 49, 30, 5);
INSERT INTO prode VALUES (96, 2, 50, 32, 6);
INSERT INTO prode VALUES (97, 2, 50, 29, 4);
INSERT INTO prode VALUES (6, 2, 53, 30, 6);
INSERT INTO prode VALUES (7, 2, 53, 31, 5);


--
-- TOC entry 2065 (class 0 OID 0)
-- Dependencies: 183
-- Name: prode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('prode_id_seq', 97, true);


--
-- TOC entry 2066 (class 0 OID 0)
-- Dependencies: 185
-- Name: result_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('result_id_seq', 98, true);


--
-- TOC entry 2049 (class 0 OID 172317)
-- Dependencies: 184
-- Data for Name: results; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO results VALUES (3, 4, 2, 3);
INSERT INTO results VALUES (4, 4, 3, 6);
INSERT INTO results VALUES (5, 5, 4, 5);
INSERT INTO results VALUES (6, 5, 5, 6);
INSERT INTO results VALUES (7, 6, 2, 5);
INSERT INTO results VALUES (8, 6, 4, 2);
INSERT INTO results VALUES (9, 7, 5, 2);
INSERT INTO results VALUES (10, 7, 3, 2);
INSERT INTO results VALUES (11, 8, 5, 5);
INSERT INTO results VALUES (12, 8, 2, 9);
INSERT INTO results VALUES (13, 9, 3, 6);
INSERT INTO results VALUES (14, 10, 6, 5);
INSERT INTO results VALUES (15, 10, 7, 5);
INSERT INTO results VALUES (16, 11, 8, 4);
INSERT INTO results VALUES (17, 11, 9, 0);
INSERT INTO results VALUES (18, 13, 9, 0);
INSERT INTO results VALUES (19, 13, 7, 1);
INSERT INTO results VALUES (20, 12, 6, 4);
INSERT INTO results VALUES (21, 12, 8, 7);
INSERT INTO results VALUES (22, 14, 9, 7);
INSERT INTO results VALUES (23, 14, 6, 2);
INSERT INTO results VALUES (24, 15, 7, 4);
INSERT INTO results VALUES (25, 15, 8, 1);
INSERT INTO results VALUES (26, 16, 10, 9);
INSERT INTO results VALUES (27, 16, 11, 2);
INSERT INTO results VALUES (28, 17, 12, 5);
INSERT INTO results VALUES (29, 17, 13, 8);
INSERT INTO results VALUES (30, 18, 10, 3);
INSERT INTO results VALUES (31, 18, 12, 7);
INSERT INTO results VALUES (32, 19, 13, 4);
INSERT INTO results VALUES (33, 19, 11, 2);
INSERT INTO results VALUES (34, 20, 13, 1);
INSERT INTO results VALUES (35, 20, 10, 0);
INSERT INTO results VALUES (36, 21, 11, 8);
INSERT INTO results VALUES (37, 21, 12, 7);
INSERT INTO results VALUES (38, 22, 14, 5);
INSERT INTO results VALUES (39, 22, 15, 0);
INSERT INTO results VALUES (40, 23, 16, 0);
INSERT INTO results VALUES (41, 23, 17, 8);
INSERT INTO results VALUES (42, 24, 14, 5);
INSERT INTO results VALUES (43, 24, 16, 9);
INSERT INTO results VALUES (44, 25, 17, 5);
INSERT INTO results VALUES (45, 25, 15, 1);
INSERT INTO results VALUES (46, 26, 17, 4);
INSERT INTO results VALUES (47, 26, 14, 9);
INSERT INTO results VALUES (48, 27, 15, 1);
INSERT INTO results VALUES (49, 27, 16, 5);
INSERT INTO results VALUES (50, 28, 18, 1);
INSERT INTO results VALUES (51, 28, 19, 6);
INSERT INTO results VALUES (52, 29, 20, 3);
INSERT INTO results VALUES (53, 29, 21, 8);
INSERT INTO results VALUES (54, 30, 18, 9);
INSERT INTO results VALUES (55, 30, 20, 7);
INSERT INTO results VALUES (56, 31, 21, 9);
INSERT INTO results VALUES (57, 31, 19, 8);
INSERT INTO results VALUES (58, 32, 21, 0);
INSERT INTO results VALUES (59, 32, 18, 5);
INSERT INTO results VALUES (60, 33, 19, 7);
INSERT INTO results VALUES (61, 33, 20, 3);
INSERT INTO results VALUES (62, 34, 1, 3);
INSERT INTO results VALUES (63, 34, 22, 1);
INSERT INTO results VALUES (64, 35, 23, 6);
INSERT INTO results VALUES (65, 35, 24, 4);
INSERT INTO results VALUES (66, 36, 1, 2);
INSERT INTO results VALUES (67, 36, 23, 4);
INSERT INTO results VALUES (68, 37, 24, 1);
INSERT INTO results VALUES (69, 37, 22, 8);
INSERT INTO results VALUES (70, 38, 24, 4);
INSERT INTO results VALUES (71, 38, 1, 1);
INSERT INTO results VALUES (72, 39, 22, 6);
INSERT INTO results VALUES (73, 39, 23, 9);
INSERT INTO results VALUES (74, 40, 25, 0);
INSERT INTO results VALUES (75, 40, 26, 1);
INSERT INTO results VALUES (76, 41, 27, 1);
INSERT INTO results VALUES (77, 41, 28, 5);
INSERT INTO results VALUES (78, 42, 25, 1);
INSERT INTO results VALUES (79, 42, 27, 2);
INSERT INTO results VALUES (80, 43, 28, 1);
INSERT INTO results VALUES (81, 43, 26, 3);
INSERT INTO results VALUES (82, 44, 28, 9);
INSERT INTO results VALUES (83, 44, 25, 5);
INSERT INTO results VALUES (84, 45, 26, 2);
INSERT INTO results VALUES (85, 45, 27, 8);
INSERT INTO results VALUES (86, 46, 29, 2);
INSERT INTO results VALUES (87, 46, 30, 1);
INSERT INTO results VALUES (88, 47, 31, 7);
INSERT INTO results VALUES (89, 47, 32, 3);
INSERT INTO results VALUES (90, 48, 29, 7);
INSERT INTO results VALUES (91, 48, 31, 4);
INSERT INTO results VALUES (92, 49, 32, 6);
INSERT INTO results VALUES (93, 49, 30, 0);
INSERT INTO results VALUES (94, 50, 32, 6);
INSERT INTO results VALUES (95, 53, 30, 3);
INSERT INTO results VALUES (96, 53, 31, 4);
INSERT INTO results VALUES (97, 50, 29, 9);
INSERT INTO results VALUES (98, 9, 5, 7);


--
-- TOC entry 2067 (class 0 OID 0)
-- Dependencies: 188
-- Name: sector_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sector_id_seq', 1, false);


--
-- TOC entry 2068 (class 0 OID 0)
-- Dependencies: 180
-- Name: team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('team_id_seq', 32, true);


-- Completed on 2014-04-11 11:34:44

--
-- PostgreSQL database dump complete
--

