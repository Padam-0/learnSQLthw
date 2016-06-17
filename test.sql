DROP TABLE person;
DROP TABLE pet;
DROP TABLE person_pet;
DROP TABLE car;
DROP TABLE person_car;

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
    dead INTEGER
);

CREATE TABLE car (
	id INTEGER PRIMARY KEY,
	car_name TEXT,
	model_type TEXT,
	year INTEGER
);

CREATE TABLE person_car (
	person_id INTEGER,
	car_id INTEGER
);
	
	
INSERT INTO person (id, first_name, last_name, age)
	VALUES (0, "Zed", "Shaw", 37),
	(1, "Peter", "Adam", 26),
	(2, "Maddie", "K-Bailey", 24)
;

INSERT INTO pet (id, name, breed, age, dead)
	VALUES (0, "Fluffy", "Unicorn", 1000, 0),
	(1, "Snorkel", "Goldie", 6, 0),
	(2, "Jackie", "Collie", 16, 1),
	(3, "Gigantor", "Robot", 1, 1)
;

INSERT INTO person_pet (person_id, pet_id) 
	VALUES (0, 0),
	(0, 3),
	(1,2),
	(2,1)
;

INSERT INTO car (id, car_name, model_type, year)
	VALUES	(0, "i30", "Hyundai", 2006),
	(1, "e200", "Mercedes", 2004)
;

INSERT INTO person_car (person_id, car_id)
	VALUES (0, 0),
	(1,1),
	(2,1)
;
