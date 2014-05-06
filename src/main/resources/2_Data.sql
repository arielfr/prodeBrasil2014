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

SELECT pg_catalog.setval('team_id_seq', 29, true);


-- Completed on 2014-04-11 11:34:44

--
-- PostgreSQL database dump complete
--

