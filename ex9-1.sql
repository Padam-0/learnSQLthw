UPDATE pet SET name = "DECEASED" WHERE dead = 1;

SELECT * FROM pet;

UPDATE person_pet SET person_id = 2 WHERE person_id IN (
	SELECT person.id
	FROM person
	WHERE person.first_name = "Peter"
);

SELECT * FROM person_pet;
