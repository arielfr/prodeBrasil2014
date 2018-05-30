CREATE TABLE cities (
	id bigint NOT NULL AUTO_INCREMENT,
	name varchar(255),
	PRIMARY KEY (id)
);
CREATE TABLE configurations (
	`key` varchar(255) NOT NULL,
	value varchar(5) NOT NULL
);
CREATE TABLE countries (
	id bigint NOT NULL AUTO_INCREMENT,
	name varchar(255),
	timezone varchar(255),
	PRIMARY KEY (id)
);
CREATE TABLE `groups` (
	id bigint NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	PRIMARY KEY (id)
);
CREATE TABLE groups_teams (
	id bigint NOT NULL AUTO_INCREMENT,
	id_group bigint NOT NULL,
	id_team bigint NOT NULL,
	PRIMARY KEY (id)
);
CREATE TABLE logscoring (
	id bigint NOT NULL AUTO_INCREMENT,
	datelog varchar(50) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE matches (
	id bigint NOT NULL AUTO_INCREMENT,
	date_match varchar(50) NOT NULL,
	id_city bigint NOT NULL,
	id_group bigint NOT NULL,
	id_team_a bigint NOT NULL,
	id_team_b bigint NOT NULL,
	PRIMARY KEY (id)
);
CREATE TABLE person (
	id bigint NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	register varchar(5) NOT NULL,
	saved varchar(5) NOT NULL,
	id_sector bigint,
	id_country bigint,
	photo varchar(255),
	score bigint,
	PRIMARY KEY (id)
);
CREATE TABLE prode (
	id bigint NOT NULL AUTO_INCREMENT,
	id_person bigint NOT NULL,
	id_match bigint NOT NULL,
	id_team bigint NOT NULL,
	gol bigint NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE results (
	id bigint NOT NULL AUTO_INCREMENT,
	id_match bigint NOT NULL,
	id_team bigint NOT NULL,
	gol bigint NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE sectors (
	id bigint NOT NULL AUTO_INCREMENT,
	id_country bigint NOT NULL,
	name varchar(255) NOT NULL,
	PRIMARY KEY (id)
);
CREATE TABLE teams (
	id bigint NOT NULL AUTO_INCREMENT,
	name varchar(255),
	flag varchar(255),
	PRIMARY KEY (id)
);
