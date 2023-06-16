INSERT INTO cars
VALUES ('Best model', 2022, 19999.99, false, '2022-12-26');


    INSERT INTO cars (id, model, price, year_of_production, vin_number, is_used, created_at)
    VALUES(1,'new BMW', 75000, 2022, 2394, true, '2022-12-27'),
    (2,'new Ford', 25000, 2022, 123, true, '2022-12-27'),
    (3,' ', 75000, 2022, 234, true, '2021-12-27');




SELECT * FROM cars;

DROP TABLE cars;