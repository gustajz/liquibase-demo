UPDATE person p 
	SET state = (SELECT s.name 
				 FROM state s 
				 WHERE s.id = p.id_state);	
				 