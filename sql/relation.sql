CREATE TABLE a(x char(10), y int);

CREATE TABLE b (x char(10), e boolean);



INSERT INTO a(x, y) 
VALUES 
    ('aaa', 10), 
    ('aab', 11), 
    ('aac', 12), 
    ('aba', 21), 
    ('abb', 22),
    ('bbb', 29),
    ('caa', 315);

INSERT INTO b (x,e)
VALUES
('ccc', false),
('cbc', true),
('acc', true),
('aaa', true),
('aba', false);


SELECT x FROM a
UNION 
SELECT x FROM b;

---union для уникальных значений


SELECT x FROM a
INTERSECT
SELECT x FROM b;

---интерсект хуцпит и возвращает одинаковые значения

---except - показывает блистательную хуцпу и исключения, 
--возвращает значения из первой таблицы, которых нет во второй

SELECT x FROM a
EXCEPT
SELECT x FROM b;


SELECT email, orders.id 
FROM users, orders
WHERE user_id = users.id;

SELECT email, orders.*
FROM orders
JOIN users ON user_id = users.id;