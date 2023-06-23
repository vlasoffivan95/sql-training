CREATE TABLE users (
    id serial PRIMARY KEY,
    name VARCHAR(256) NOT NULL CHECK(name != ''),
    email VARCHAR(256) NOT NULL CHECK(email != ''),
    password VARCHAR(256) NOT NULL CHECK(password != ''),
    phone_num VARCHAR(20) NOT NULL CHECK (phone_num != ''),
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    updated_at timestamp NOT NULL DEFAULT current_timestamp

);


CREATE TABLE products(
    id SERIAL PRIMARY KEY,
    name VARCHAR(256) NOT NULL CHECK(name != ''),
    description varchar(5000),
    price numeric(10,2) NOT NULL CHECK(price>0),
    quantity int NOT NULL CHECK(quantity>=0),
    manufacturer VARCHAR(256) NOT NULL CHECK(manufacturer != ''),
    min_age smallint CHECK(min_age>0)
);

CREATE TABLE reviews (
    id serial PRIMARY KEY,
    user_id INT NOT NULL REFERENCES users(id),
    product_id INT NOT NULL REFERENCES products,
    rating_id int UNIQUE,
    description text,
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    updated_at timestamp NOT NULL DEFAULT current_timestamp

);

CREATE TABLE ratings(
    id serial PRIMARY KEY,
    review_id int NOT NULL UNIQUE REFERENCES reviews,
    rating numeric(2,1) NOT NULL CHECK(rating>0 AND rating<=10),
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    updated_at timestamp NOT NULL DEFAULT current_timestamp
);

ALTER TABLE reviews ADD FOREIGN KEY (rating_id) REFERENCES ratings(id);


CREATE TABLE orders(
    id serial PRIMARY KEY,
    user_id int NOT NULL REFERENCES users,
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    updated_at timestamp NOT NULL DEFAULT current_timestamp

);


CREATE TABLE orders_to_products (
    order_id INT NOT NULL REFERENCES orders,
    product_id int NOT NULL REFERENCES products,
    quantity int NOT NULL CHECK (quantity >1),
    created_at timestamp NOT NULL DEFAULT current_timestamp,
    updated_at timestamp NOT NULL DEFAULT current_timestamp,
    PRIMARY KEY (order_id, product_id)

);



DROP TABLE users;
DROP TABLE products;
DROP TABLE reviews;
DROP TABLE ratings CASCADE;
DROP TABLE orders;
DROP TABLE orders_to_products;

DROP TABLE my_first_table;
DROP TABLE cars;