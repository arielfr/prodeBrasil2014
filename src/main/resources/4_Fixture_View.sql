CREATE VIEW fixture AS
select ma.id as id, ma.date_match as date_match, ma.time_match as time_match, c.name as city_name, g.name as group_name, t.name as team_a, t.flag as flag_a, te.name as team_b, te.flag as flag_b from matches ma
inner join cities c on ma.id_city = c.id
inner join groups g on ma.id_group = g.id
inner join teams t on ma.id_team_a = t.id
inner join teams te on ma.id_team_b = te.id;