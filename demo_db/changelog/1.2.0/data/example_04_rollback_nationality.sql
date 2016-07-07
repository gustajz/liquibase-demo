UPDATE person p 
	SET nationality = (SELECT c.code 
				 	   FROM country c
				 	   JOIN state s ON (s.id_country = c.id)
				       WHERE s.id = p.id_state);
				 