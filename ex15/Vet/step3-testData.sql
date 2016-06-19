-- Insert test data into tables and relations to test pathways

INSERT INTO staff VALUES (0), (1), (2), (3);
INSERT INTO pet VALUES (0), (1), (2), (3);
INSERT INTO record VALUES (0), (1), (2), (3);
INSERT INTO owner VALUES (0), (1), (2), (3);

INSERT INTO staff_pet (staff_id, pet_id) VALUES (0,1),(1,2),(2,3),(3,0);
INSERT INTO pet_record (record_id, pet_id) VALUES (0,0), (1,0), (2,1), (3,2);
INSERT INTO owner_pet (owner_id, pet_id) VALUES (0,0), (1,1), (2,2), (3,3);

