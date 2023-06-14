CREATE TABLE cars (
    model VARCHAR (100) NOT NULL,
    year_of_production INT NOT NULL,
    vin_number int NOT NULL UNIQUE,
    price numeric( 8,2) NOT NULL,
    is_used boolean NOT NULL,
    created_at date NOT NULL

);


DROP TABLE cars;


