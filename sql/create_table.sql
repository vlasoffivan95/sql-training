CREATE TABLE cars (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    model VARCHAR (100) NOT NULL CHECK(model!=''),
    year_of_production INT NOT NULL CHECK (year_of_production > 1900 AND year_of_production < 2023) ,
    vin_number int NOT NULL UNIQUE,
    price numeric( 8,2) NOT NULL CHECK (price>0),
    is_used boolean NOT NULL,
    created_at date NOT NULL DEFAULT current_date,
    updated_at date NOT NULL DEFAULT current_date,
    UNIQUE(vin_number)

);


DROP TABLE cars;


