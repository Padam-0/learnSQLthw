-- Add a dead column to person

ALTER TABLE person ADD COLUMN dead INTEGER;

-- Add a phone_number to person

ALTER TABLE person ADD COLUMN phone_number INTEGER;

-- Add salary to person (FLOAT)

ALTER TABLE person ADD COLUMN salary FLOAT;

-- Add dob column to person (DATETIME)

ALTER TABLE person ADD COLUMN dob DATETIME;

-- Add purchased_on column to person_pet (DATETIME)

ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;

-- Add a parent column to pet (INTEGER) that holds id of pet's parent

ALTER TABLE pet ADD COLUMN parent INTEGER;

-- Update exisiting records using update statements including new columns

UPDATE person SET dead = 1, phone_number = 1234567890, salary = 1000, dob = 1956-09-03 WHERE id = 0;
UPDATE person SET dead = 0, phone_number = 0838602461, salary = 10000, dob = 1990-03-05 WHERE id = 1;
UPDATE person SET dead = 0, phone_number = 0838604248, salary = 100000, dob = 1991-12-15 WHERE id = 2;
UPDATE person_pet SET purchased_on = 2004-01-01 WHERE pet_id = 0;
UPDATE person_pet SET purchased_on = 2005-01-01 WHERE pet_id = 1;
UPDATE person_pet SET purchased_on = 2006-01-01 WHERE pet_id = 2;
UPDATE person_pet SET purchased_on = 2007-01-01 WHERE pet_id = 3;
UPDATE pet SET parent = 3 WHERE id = 0;
UPDATE pet SET parent = 1 WHERE id = 1;
UPDATE pet SET parent = -1 WHERE id = 2;
UPDATE pet SET parent = -1 WHERE id = 3;

-- Add 4 more people and 5 more pets and assign ownership and parent values

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob) VALUES (3,"Steve","Jobs",66,1,1234567890,9999,1950-01-01),
	(4,"Steve","Wozniak",68,0,1234567890,999999,1948-01-01),
	(5,"Steve","Carell",50,0,1234567890,1000000,1966-01-01),
	(6,"John","Smith",100,1,1234567890,1,1916-01-01);
INSERT INTO pet (id, name, breed, age, dead, dob, parent) VALUES (4,"Roxy","Collie",24,1,1992-01-01,0),
	(5,"Steven","Cat",100,1,1916-01-01,6),
	(6,"Jack","Unicorn",999,0,1015-01-01,7),
	(7,"John","Labradoodle",12,0,2004-01-01,8),
	(8,"James","Cat",30,1,1986-01-01,-1);
INSERT INTO person_pet (person_id, pet_id, purchased_on) VALUES (3,4,2005-01-01),(4,5,2006-01-01),(5,6,2007-01-01),(6,7,2008-01-01),(1,8,1990-01-01);

-- Write a query that can find all the names of pets and their owners bought after 2004

SELECT pet.name, person.first_name, person_pet.purchased_on 
	FROM person, pet, person_pet 
	WHERE person.id = person_pet.person_id AND
	pet.id = person_pet.pet_id AND
	person_pet.purchased_on >= 2004-01-01;

-- Write a query that can find the pets that are the children of a given pet

SELECT id, name, parent FROM pet WHERE parent != -1;
