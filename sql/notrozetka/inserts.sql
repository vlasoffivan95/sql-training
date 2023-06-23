INSERT INTO users
(name, email, password, phone_num) 
VALUES
('test', 'tes2ttet@test.test', 'sfsdfkm2j3rjjdfjdjfjg', '087-234-333-4'),
('test2', 'testteet@test.test', 'sfsf343rjjdfjdjfjg', '08234234-234-333-4'),
('test3', 'te3@test.test', 'sfsdfkm2jdfjdjfjg', '0222387-3');


INSERT INTO products(name, description, price, quantity, manufacturer, min_age) 
VALUES ('tooth', 'this is toothbrush', 100, 1, 'rozetka', NULL),
('notebook', 'this is note', 50000, 1, 'asus', NULL),
('wine', 'this is wine', 500, 22, 'rozetka', '15');

INSERT INTO orders(user_id) VALUES(1),(2),(2),(1),(3);

INSERT INTO orders_to_products (order_id, product_id, quantity) 
VALUES
(1,3,2),
(2,1,2),
(3,3,2);

INSERT INTO reviews (user_id, product_id, description)
VALUES(1,3,'разодрали мебли'),(3, 1, 'лучшие щетки в моей жизни, блистательная хуцпа');

INSERT INTO ratings(review_id, rating) VALUES(3, 9.9);