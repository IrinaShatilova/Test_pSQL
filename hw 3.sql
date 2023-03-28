CREATE TABLE city (
city_id BIGSERIAL NOT NULL PRIMARY KEY,
city_name VARCHAR(25) NOT NULL
);

ALTER TABLE employee ADD COLUMN city_id INT;

ALTER TABLE employee ADD FOREIGN KEY (city_id) REFERENCES city (city_id);

INSERT INTO city (city_id, city_name)
VALUES (1, 'Novosibirsk');
INSERT INTO city (city_id, city_name)
VALUES (2, 'Moscow');
INSERT INTO city (city_id, city_name)
VALUES (3, 'Sochy');
INSERT INTO city (city_id, city_name)
VALUES (4, 'Tomsk');

UPDATE employee SET city_id = 1 WHERE id = 4;
UPDATE employee SET city_id = 1 WHERE id = 5;
UPDATE employee SET city_id = 2 WHERE id = 6;
UPDATE employee SET city_id = 3 WHERE id = 1;
UPDATE employee SET city_id = 3 WHERE id = 2;

SELECT first_name, last_name, city_name FROM employee
INNER JOIN city ON employee.city_id = city.city_id;

SELECT first_name, last_name, city_name
FROM city LEFT JOIN employee ON city.city_id =employee.city_id;

SELECT first_name, last_name, city_name
FROM employee FULL JOIN city ON employee.city_id = city.city_id;

SELECT first_name, last_name, city_name
FROM employee CROSS JOIN city;

SELECT city_name
FROM city LEFT JOIN employee ON city.city_id = employee.city_id
WHERE employee.city_id IS NULL;