UPDATE pet SET name = "Zed's Pet" WHERE id IN (
	SELECT pet_id
	FROM person_pet, person
	WHERE person.id = person_pet.person_id AND
	person.id = 0
);

SELECT * FROM pet;
