CREATE TABLE employee (
id BIGSERIAL NOT NULL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
gender VARCHAR(6) NOT NULL,
age INT NOT NULL
);

INSERT INTO employee (
first_name, last_name, gender, age)
VALUES ('Alina', 'Petrova','female', 20);

INSERT INTO employee (
first_name, last_name, gender, age)
VALUES ('Albina', 'Vetrova','female', 25);

INSERT INTO employee (
first_name, last_name, gender, age)
VALUES ('Alex', 'Borisov','male', 23);
SELECT * FROM employee;

UPDATE employee 
SET first_name = 'Oleg', last_name = 'Veselov', gender = 'male', age = 33
WHERE id = 1;
SELECT * FROM employee;

DELETE FROM employee 
WHERE id = 3;
SELECT * FROM employee;
