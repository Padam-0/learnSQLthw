DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS pet;
DROP TABLE IF EXISTS person_pet;
DROP TABLE IF EXISTS car;
DROP TABLE IF EXISTS person_car;

CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

CREATE TABLE person_pet (
    person_id INTEGER,
    pet_id INTEGER
);

CREATE TABLE pet (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT,
    age INTEGER,
    dead INTEGER,
    dob DATETIME
);

INSERT INTO person (id, first_name, last_name, age)
	VALUES (0, "Zed", "Shaw", 37),
	(1, "Peter", "Adam", 26),
	(2, "Maddie", "K-Bailey", 24)
;

INSERT INTO pet (id, name, breed, age, dead, dob)
	VALUES (0, "Fluffy", "Unicorn", 1000, 0,1990-05-01),
	(1, "Snorkel", "Goldie", 6, 0,1990-05-02),
	(2, "Jackie", "Collie", 16, 1,1990-03-5),
	(3, "Gigantor", "Robot", 1, 1,1990-05-04)
;

INSERT INTO person_pet (person_id, pet_id) 
	VALUES (0, 0),
	(0, 3),
	(1,2),
	(2,1)
;
