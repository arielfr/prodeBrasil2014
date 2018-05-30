
ALTER TABLE groups_teams
	ADD FOREIGN KEY (id_group)
	REFERENCES `groups` (id),
	ADD FOREIGN KEY (id_team)
	REFERENCES teams (id);


ALTER TABLE matches
	ADD FOREIGN KEY (id_city)
	REFERENCES cities (id),
	ADD FOREIGN KEY (id_group)
	REFERENCES `groups` (id),
	ADD FOREIGN KEY (id_team_a)
	REFERENCES teams (id),
	ADD FOREIGN KEY (id_team_b)
	REFERENCES teams (id);

ALTER TABLE person
	ADD FOREIGN KEY (id_country)
	REFERENCES countries (id),
	ADD FOREIGN KEY (id_sector)
	REFERENCES sectors (id);


ALTER TABLE prode
	ADD FOREIGN KEY (id_match)
	REFERENCES matches (id),
	ADD FOREIGN KEY (id_person)
	REFERENCES person (id),
	ADD FOREIGN KEY (id_team)
	REFERENCES teams (id);


ALTER TABLE results
	ADD FOREIGN KEY (id_match)
	REFERENCES matches (id),
	ADD FOREIGN KEY (id_team)
	REFERENCES teams (id);

ALTER TABLE sectors
	ADD FOREIGN KEY (id_country)
	REFERENCES countries (id);


