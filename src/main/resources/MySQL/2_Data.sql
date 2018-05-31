INSERT INTO cities VALUES (1, 'Moscow');
INSERT INTO cities VALUES (2, 'Ekaterinburg');
INSERT INTO cities VALUES (3, 'St. Petersburg');
INSERT INTO cities VALUES (4, 'Sochi');
INSERT INTO cities VALUES (5, 'Kazan');
INSERT INTO cities VALUES (6, 'Saransk');
INSERT INTO cities VALUES (7, 'Kaliningrad');
INSERT INTO cities VALUES (8, 'Samara');
INSERT INTO cities VALUES (9, 'Rostov-On-Don');
INSERT INTO cities VALUES (10, 'Nizhny Novgorod');
INSERT INTO cities VALUES (11, 'Volgograd');

INSERT INTO countries VALUES (1, 'Argentina', 'America/Argentina/Buenos_Aires');
INSERT INTO countries VALUES (2, 'Venezuela', 'America/Caracas');
INSERT INTO countries VALUES (3, 'Mexico', 'America/Mexico_City');
INSERT INTO countries VALUES (4, 'Uruguay', 'America/Montevideo');
INSERT INTO countries VALUES (5, 'Brasil', 'America/Sao_Paulo');
INSERT INTO countries VALUES (6, 'Colombia', 'America/Bogota');
INSERT INTO countries VALUES (7, 'Chile', 'America/Santiago');
INSERT INTO countries VALUES (8, 'Peru', 'America/Lima');

INSERT INTO teams VALUES (1, 'Argentina', 'arg');
INSERT INTO teams VALUES (2, 'Brazil', 'bra');
INSERT INTO teams VALUES (4, 'Mexico', 'mex');
INSERT INTO teams VALUES (8, 'Denmark', 'den');
INSERT INTO teams VALUES (9, 'Australia', 'aus');
INSERT INTO teams VALUES (10, 'Colombia', 'col');
INSERT INTO teams VALUES (14, 'Uruguay', 'uru');
INSERT INTO teams VALUES (15, 'Costa Rica', 'cos');
INSERT INTO teams VALUES (23, 'Iran', 'ira');
INSERT INTO teams VALUES (24, 'Nigeria', 'nig');
INSERT INTO teams VALUES (26, 'Portugal', 'por');
INSERT INTO teams VALUES (25, 'Germany', 'ale');
INSERT INTO teams VALUES (29, 'Belgium', 'bel');
INSERT INTO teams VALUES (32, 'Korea Republic', 'cor');
INSERT INTO teams VALUES (3, 'Croatia', 'cro');
INSERT INTO teams VALUES (6, 'Spain', 'esp');
INSERT INTO teams VALUES (20, 'France', 'fra');
INSERT INTO teams VALUES (7, 'Switzerland', 'swi');
INSERT INTO teams VALUES (16, 'England', 'ing');
INSERT INTO teams VALUES (13, 'Japan', 'jap');
INSERT INTO teams VALUES (31, 'Russia', 'rus');
INSERT INTO teams VALUES (28, 'Egypt', 'egy');
INSERT INTO teams VALUES (18, 'Iceland', 'ice');
INSERT INTO teams VALUES (17, 'Morocco', 'mor');
INSERT INTO teams VALUES (11, 'Panama', 'pan');
INSERT INTO teams VALUES (12, 'Peru', 'per');
INSERT INTO teams VALUES (30, 'Poland', 'pol');
INSERT INTO teams VALUES (27, 'Saudi Arabia', 'sau');
INSERT INTO teams VALUES (22, 'Senegal', 'sen');
INSERT INTO teams VALUES (21, 'Serbia', 'ser');
INSERT INTO teams VALUES (19, 'Sweden', 'sew');
INSERT INTO teams VALUES (5, 'Tunisia', 'tun');

INSERT INTO groups VALUES (1, 'Group A');
INSERT INTO groups VALUES (2, 'Group B');
INSERT INTO groups VALUES (3, 'Group C');
INSERT INTO groups VALUES (4, 'Group D');
INSERT INTO groups VALUES (5, 'Group E');
INSERT INTO groups VALUES (6, 'Group F');
INSERT INTO groups VALUES (7, 'Group G');
INSERT INTO groups VALUES (8, 'Group H');
INSERT INTO groups VALUES (9, 'Round Of 16');
INSERT INTO groups VALUES (10, 'Quarter-Finals');
INSERT INTO groups VALUES (11, 'Semi-Finals');
INSERT INTO groups VALUES (12, 'Third Place');
INSERT INTO groups VALUES (13, 'Final');

INSERT INTO groups_teams VALUES (3, 1, 31);
INSERT INTO groups_teams VALUES (4, 1, 27);
INSERT INTO groups_teams VALUES (5, 1, 28);
INSERT INTO groups_teams VALUES (6, 1, 14);
INSERT INTO groups_teams VALUES (7, 2, 26);
INSERT INTO groups_teams VALUES (8, 2, 6);
INSERT INTO groups_teams VALUES (9, 2, 17);
INSERT INTO groups_teams VALUES (10, 2, 23);
INSERT INTO groups_teams VALUES (11, 3, 20);
INSERT INTO groups_teams VALUES (12, 3, 9);
INSERT INTO groups_teams VALUES (13, 3, 12);
INSERT INTO groups_teams VALUES (14, 3, 8);
INSERT INTO groups_teams VALUES (15, 4, 1);
INSERT INTO groups_teams VALUES (16, 4, 18);
INSERT INTO groups_teams VALUES (17, 4, 3);
INSERT INTO groups_teams VALUES (18, 4, 24);
INSERT INTO groups_teams VALUES (19, 5, 2);
INSERT INTO groups_teams VALUES (20, 5, 7);
INSERT INTO groups_teams VALUES (21, 5, 15);
INSERT INTO groups_teams VALUES (22, 5, 21);
INSERT INTO groups_teams VALUES (23, 6, 25);
INSERT INTO groups_teams VALUES (24, 6, 4);
INSERT INTO groups_teams VALUES (25, 6, 19);
INSERT INTO groups_teams VALUES (26, 6, 32);
INSERT INTO groups_teams VALUES (27, 7, 29);
INSERT INTO groups_teams VALUES (28, 7, 11);
INSERT INTO groups_teams VALUES (29, 7, 5);
INSERT INTO groups_teams VALUES (30, 7, 16);
INSERT INTO groups_teams VALUES (31, 8, 30);
INSERT INTO groups_teams VALUES (32, 8, 22);
INSERT INTO groups_teams VALUES (33, 8, 10);
INSERT INTO groups_teams VALUES (34, 8, 13);

-- id, date_match, id_city, id_group, id_team_a, id_team_b
INSERT INTO matches VALUES (1, '2018-06-14 12:00:00-03', 1, 1, 31, 27);
INSERT INTO matches VALUES (2, '2018-06-15 09:00:00-03', 2, 1, 28, 14);
INSERT INTO matches VALUES (3, '2018-06-15 12:00:00-03', 3, 2, 17, 23);
INSERT INTO matches VALUES (4, '2018-06-15 15:00:00-03', 4, 2, 26, 6);

INSERT INTO matches VALUES (5, '2018-06-16 07:00:00-03', 5, 3, 20, 9);
INSERT INTO matches VALUES (6, '2018-06-16 10:00:00-03', 1, 4, 1, 18);
INSERT INTO matches VALUES (7, '2018-06-16 13:00:00-03', 6, 3, 12, 8);
INSERT INTO matches VALUES (8, '2018-06-16 16:00:00-03', 7, 4, 3, 24);

INSERT INTO matches VALUES (9, '2018-06-17 09:00:00-03', 8, 5, 15, 21);
INSERT INTO matches VALUES (10, '2018-06-17 12:00:00-03', 1, 6, 25, 4);
INSERT INTO matches VALUES (11, '2018-06-17 15:00:00-03', 9, 5, 2, 7);

INSERT INTO matches VALUES (12, '2018-06-18 09:00:00-03', 10, 6, 19, 32);
INSERT INTO matches VALUES (13, '2018-06-18 12:00:00-03', 4, 7, 29, 11);
INSERT INTO matches VALUES (14, '2018-06-18 15:00:00-03', 11, 7, 5, 16);

INSERT INTO matches VALUES (15, '2018-06-19 09:00:00-03', 6, 8, 10, 13);
INSERT INTO matches VALUES (16, '2018-06-19 12:00:00-03', 1, 8, 30, 22);
INSERT INTO matches VALUES (17, '2018-06-19 15:00:00-03', 3, 1, 31, 28);

INSERT INTO matches VALUES (18, '2018-06-20 09:00:00-03', 1, 2, 26, 17);
INSERT INTO matches VALUES (19, '2018-06-20 12:00:00-03', 9, 1, 14, 27);
INSERT INTO matches VALUES (20, '2018-06-20 15:00:00-03', 5, 2, 23, 6);

INSERT INTO matches VALUES (21, '2018-06-21 09:00:00-03', 8, 3, 8, 9);
INSERT INTO matches VALUES (22, '2018-06-21 12:00:00-03', 2, 3, 20, 12);
INSERT INTO matches VALUES (23, '2018-06-21 15:00:00-03', 10, 4, 1, 3);

INSERT INTO matches VALUES (24, '2018-06-22 09:00:00-03', 3, 5, 2, 15);
INSERT INTO matches VALUES (25, '2018-06-22 12:00:00-03', 11, 4, 24, 18);
INSERT INTO matches VALUES (26, '2018-06-22 15:00:00-03', 7, 5, 21, 7);

INSERT INTO matches VALUES (27, '2018-06-23 09:00:00-03', 1, 7, 29, 5);
INSERT INTO matches VALUES (28, '2018-06-23 12:00:00-03', 9, 6, 32, 4);
INSERT INTO matches VALUES (29, '2018-06-23 15:00:00-03', 4, 6, 25, 19);

INSERT INTO matches VALUES (30, '2018-06-24 09:00:00-03', 10, 7, 16, 11);
INSERT INTO matches VALUES (31, '2018-06-24 12:00:00-03', 2, 8, 13, 22);
INSERT INTO matches VALUES (32, '2018-06-24 15:00:00-03', 5, 8, 30, 10);

INSERT INTO matches VALUES (33, '2018-06-25 11:00:00-03', 8, 1, 14, 31);
INSERT INTO matches VALUES (34, '2018-06-25 11:00:00-03', 11, 1, 27, 28);
INSERT INTO matches VALUES (35, '2018-06-25 15:00:00-03', 7, 2, 6, 17);
INSERT INTO matches VALUES (36, '2018-06-25 15:00:00-03', 6, 2, 23, 26);

INSERT INTO matches VALUES (37, '2018-06-26 11:00:00-03', 3, 3, 9, 12);
INSERT INTO matches VALUES (38, '2018-06-26 11:00:00-03', 1, 3, 8, 20);
INSERT INTO matches VALUES (39, '2018-06-26 15:00:00-03', 3, 4, 24, 1);
INSERT INTO matches VALUES (40, '2018-06-26 15:00:00-03', 9, 4, 18, 3);

INSERT INTO matches VALUES (41, '2018-06-27 11:00:00-03', 5, 6, 32, 25);
INSERT INTO matches VALUES (42, '2018-06-27 11:00:00-03', 2, 6, 4, 19);
INSERT INTO matches VALUES (43, '2018-06-27 15:00:00-03', 1, 5, 21, 2);
INSERT INTO matches VALUES (44, '2018-06-27 15:00:00-03', 10, 5, 7, 15);

INSERT INTO matches VALUES (45, '2018-06-28 11:00:00-03', 11, 8, 13, 30);
INSERT INTO matches VALUES (46, '2018-06-28 11:00:00-03', 8, 8, 22, 10);
INSERT INTO matches VALUES (47, '2018-06-28 15:00:00-03', 6, 7, 11, 5);
INSERT INTO matches VALUES (48, '2018-06-28 15:00:00-03', 7, 7, 16, 29);

INSERT INTO sectors VALUES (1, 1, 'Arias');
INSERT INTO sectors VALUES (2, 1, 'Alem');
INSERT INTO sectors VALUES (3, 2, 'Venezuela');
INSERT INTO sectors VALUES (4, 3, 'Mexico');
INSERT INTO sectors VALUES (5, 4, 'Uruguay WTC');
INSERT INTO sectors VALUES (6, 4, 'Uruguay AP');
INSERT INTO sectors VALUES (7, 5, 'Brasil');
INSERT INTO sectors VALUES (8, 6, 'Colombia');
INSERT INTO sectors VALUES (9, 1, 'San Luis');
INSERT INTO sectors VALUES (10, 1, 'Cordoba');
INSERT INTO sectors VALUES (11, 1, 'Vicente Lopez');
INSERT INTO sectors VALUES (12, 7, 'Chile');
INSERT INTO sectors VALUES (13, 1, 'Guemes');
INSERT INTO sectors VALUES (14, 1, 'Parque Patricios');
INSERT INTO sectors VALUES (15, 8, 'Peru');
INSERT INTO sectors VALUES (16, 1, 'Vedia');
INSERT INTO sectors VALUES (17, 1, 'HIT');
INSERT INTO sectors VALUES (18, 1, 'Mendoza');
INSERT INTO sectors VALUES (19, 1, 'WeWork');

INSERT INTO configurations VALUES ('allow_registration', 'true');
