CREATE DATABASE join_tables;

CREATE TABLE table1(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30),
gernder ENUM('Male','Female','Other'),
age int
);
INSERT INTO table1(name, gernder, age) VALUES
('Deepak', 'Male', 20),
('Rahul', 'Male', 23),
('Amit', 'Male', 22),
('Sahil', 'Male', 21),
('Rohit', 'Male', 24),
('Pooja', 'Female', 22),
('Neha', 'Female', 21),
('Anjali', 'Female', 23),
('Kiran', 'Other', 25),
('Alex', 'Other', 26);

CREATE TABLE table2(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30),
age INT,
gender ENUM('Male','Female','Other')
);


INSERT INTO table2(name, age, gender) VALUES
('Aman', 21, 'Male'),
('Riya', 22, 'Female'),
('Kunal', 23, 'Male'),
('Sneha', 20, 'Female'),
('Vikas', 24, 'Male'),
('Priya', 22, 'Female'),
('Arjun', 25, 'Male'),
('Meena', 21, 'Female'),
('Sam', 26, 'Other'),
('Taylor', 27, 'Other');

SELECT 
t1.name,
t1.age AS age1,
t2.age AS age2,
t1.gender AS gender1,
t2.gender AS gender2
FROM table1 t1
INNER JOIN table2 t2
ON t1.name = t2.name;

SELECT 
t1.name,
t1.age,
t2.age
FROM table1 t1
LEFT JOIN table2 t2
ON t1.name = t2.name;

SELECT 
t2.name,
t1.age,
t2.age
FROM table1 t1
RIGHT JOIN table2 t2
ON t1.name = t2.name;