CREATE DATABASE foundation;

USE foundation;

CREATE TABLE employee(
id INT PRIMARY KEY auto_increment,
name VARCHAR(30) NOT NULL,
email VARCHAR(30) UNIQUE,
salary BIGINT NOT NULL,
date_of_birth DATE,
joining_date DATE
);

ALTER TABLE employee ADD COLUMN gender ENUM('Male','Female','other');

INSERT INTO employee (name, gender, email, salary, date_of_birth, joining_date) VALUES
('Amit Sharma', 'Male', 'amit.sharma@gmail.com', 45000, '1998-05-12', '2022-06-15'),
('Neha Verma', 'Female', 'neha.verma@gmail.com', 52000, '1997-08-22', '2021-09-10'),
('Rahul Singh', 'Male', 'rahul.singh@gmail.com', 48000, '1996-11-30', '2020-03-25'),
('Priya Mehta', 'Female', 'priya.mehta@gmail.com', 55000, '1999-01-18', '2023-01-05'),
('Karan Patel', 'Male', 'karan.patel@gmail.com', 60000, '1995-07-09', '2019-07-20'),
('Sneha Kapoor', 'Female', 'sneha.kapoor@gmail.com', 53000, '1998-03-14', '2022-10-11'),
('Vikas Yadav', 'Male', 'vikas.yadav@gmail.com', 47000, '1997-12-05', '2021-04-18'),
('Anjali Gupta', 'Female', 'anjali.gupta@gmail.com', 51000, '1996-06-28', '2020-08-09'),
('Rohit Kumar', 'Male', 'rohit.kumar@gmail.com', 49000, '1998-09-17', '2022-02-14'),
('Pooja Singh', 'Female', 'pooja.singh@gmail.com', 56000, '1999-04-03', '2023-03-01'),
('Arjun Reddy', 'Male', 'arjun.reddy@gmail.com', 62000, '1995-10-21', '2018-11-30'),
('Meera Iyer', 'Female', 'meera.iyer@gmail.com', 58000, '1997-02-11', '2021-12-12'),
('Sahil Khan', 'Male', 'sahil.khan@gmail.com', 50000, '1998-07-25', '2022-05-19'),
('Kavita Joshi', 'Female', 'kavita.joshi@gmail.com', 54000, '1996-01-07', '2020-06-23'),
('Deepak Bisht', 'Male', 'deepak.bisht@gmail.com', 65000, '2000-08-15', '2024-01-10'),
('Nisha Arora', 'Female', 'nisha.arora@gmail.com', 57000, '1999-11-19', '2023-07-27');

SELECT * FROM employee;

-- here we are using some SQL functions
SELECT COUNT(*) FROM employee; 

SELECT COUNT(*)  AS MALE_EMP FROM employee WHERE gender='Male';

SELECT  COUNT(*) AS greater_than_50k  FROM employee WHERE salary>50000;

SELECT MIN(salary) AS min_salary FROM employee;

SELECT MAX(salary) AS max_salary FROM employee;

SELECT SUM(salary) As total_salary FROM employee;

SELECT AVG(salary) AS avg_salary FROM employee;

SELECT gender ,MAX(salary) AS max_salary FROM employee GROUP BY gender;

-- Here some string functions 

SELECT name, LENGTH(name) AS len_name FROM employee; 

SELECT name,LOWER(name) AS lower_name,UPPER(name) AS upper_name FROM employee;

SELECT id,CONCAT(name,'_1211_pvt') AS userid FROM employee;

SELECT name,joining_date,CURDATE() AS working_date FROM employee;

SELECT name,DATEDIFF(CURDATE(),date_of_birth) AS days FROM employee;