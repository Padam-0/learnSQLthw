SELECT pet.id, pet.name, pet.age, pet.dead, person.first_name
	FROM pet, person_pet, person
	WHERE
		pet.id = person_pet.pet_id AND
		person_pet.person_id = person.id
;

