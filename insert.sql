INSERT INTO cars
VALUES ('Best model', 2022, 19999.99, false, '2022-12-26');


INSERT INTO cars (model, price, year_of_production, vin_number, is_used, created_at)
VALUES('new BMW', 75000, 2024, 2394, true, '2022-12-27'),
('new Ford', -25000, 2024, 123, true, '2022-12-27'),
('', 75000, 2024, 234, true, '2029-12-27');




SELECT * FROM cars;

DROP TABLE cars;