INSERT INTO employee(
first_name, last_name, gender, age)
VALUES ('Ivan', 'Sokolov', 'male', 31),
       ('Veronika', 'Dorohova', 'female', 25),
       ('Vladimir', 'Andreev', 'male', 60);

SELECT first_name Name, last_name Family
FROM employee;

SELECT * FROM employee
WHERE age NOT BETWEEN 30 AND 50;

SELECT * FROM employee
WHERE age BETWEEN 30 AND 50;

SELECT * FROM employee
ORDER BY last_name DESC;

SELECT * FROM employee
WHERE length(first_name) > 4;

UPDATE employee
SET first_name = 'Ivan'
WHERE first_name = 'Oleg';

UPDATE employee
SET first_name = 'Veronika'
WHERE first_name = 'Albina';

SELECT first_name Name,
       sum(age)
FROM employee
GROUP BY first_name;

SELECT first_name,
       min(age)
FROM employee
GROUP BY first_name;

SELECT first_name, max(age) max_age
FROM employee
GROUP BY first_name
HAVING count(first_name) > 1
ORDER BY max_age;


