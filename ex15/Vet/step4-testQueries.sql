-- Create queries to test relations

SELECT * FROM staff;
SELECT * FROM pet;
SELECT * FROM record;
SELECT * FROM owner;

SELECT staff.id, pet.id FROM staff, pet, staff_pet
	WHERE staff.id = staff_pet.staff_id AND
	pet.id = staff_pet.pet_id;

SELECT record.id, pet.id FROM record, pet, pet_record
	WHERE record.id = pet_record.record_id AND
	pet.id = pet_record.pet_id;

SELECT pet.id, owner.id FROM owner, pet, owner_pet
	WHERE owner.id = owner_pet.owner_id AND
	pet.id = owner_pet.pet_id;

SELECT staff.id, owner.id FROM staff, owner, staff_pet, owner_pet
	WHERE staff.id = staff_pet.staff_id AND
	staff_pet.pet_id = owner_pet.pet_id AND
	owner.id = owner_pet.owner_id;


