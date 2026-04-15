CREATE DATABASE company;

USE company;

CREATE TABLE department(
dpt_id INT PRIMARY KEY NOT NULL,
dpt_name VARCHAR(30)
);

INSERT INTO department(dpt_id, dpt_name) VALUES 
(1,'HR'),
(2,'IT'),
(3,'FINACNE');

CREATE TABLE company_employees(
id INT PRIMARY KEY AUTO_INCREMENT,
department_id INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(30) UNIQUE,
salary BIGINT,
CONSTRAINT DPT_FKEY FOREIGN KEY (department_id) REFERENCES department(dpt_id)
);


INSERT INTO company_employees (name, email, salary,department_id) VALUES
('Deepak', 'deepak@gmail.com', 50000,1),
('Rahul', 'rahul@gmail.com', 60000,2),
('Jatin', 'jatin@gmail.com', 45000,1),
('Amit', 'amit@gmail.com', 70000,1),
('Neha', 'neha@gmail.com', 55000,3),
('Priya', 'priya@gmail.com', 48000,3),
('Rohit', 'rohit@gmail.com', 52000,2),
('Ankit', 'ankit@gmail.com', 61000,3),
('Pooja', 'pooja@gmail.com', 47000,1),
('Suresh', 'suresh@gmail.com', 53000,3),
('Kiran', 'kiran@gmail.com', 49000,2),
('Vikas', 'vikas@gmail.com', 58000,2),
('Meena', 'meena@gmail.com', 46000,1),
('Arjun', 'arjun@gmail.com', 62000,3),
('Sneha', 'sneha@gmail.com', 54000,2);

SELECT * FROM department;

SELECT *FROM company_employees;


