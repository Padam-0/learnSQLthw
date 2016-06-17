REPLACE INTO pet (id, name, breed, age, dead) VALUES (0, "Polly", "Parrot", 4, 0);

UPDATE pet SET name = "Jackie" WHERE id = 2;
UPDATE pet SET name = "Megatron" WHERE id = 3;

SELECT * FROM pet;
