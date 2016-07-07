
-- get countries
INSERT INTO country 
	SELECT nextval('country_id_seq'), nationality 
	FROM person 
	WHERE nationality is not null GROUP BY nationality;

-- get states
INSERT INTO state (id, name, id_country) 
	SELECT DISTINCT ON (p.state, nationality) nextval('state_id_seq'), p.state, c.id 
	FROM person p JOIN country c ON (c.code = p.nationality);
	
-- update all person 
UPDATE person p 
	SET id_state = (SELECT s.id 
					FROM state s 
					JOIN country c ON (c.id = s.id_country) 
					WHERE p.state = s.name AND p.nationality = c.code);
	