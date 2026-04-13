CREATE DATABASE college;
USE college;

 CREATE TABLE students(
 id INT PRIMARY KEY auto_increment,
 name VARCHAR(30) NOT NULL,
 age INT NOT NULL,
 email VARCHAR(30) UNIQUE,
 mobile_no BIGINT UNIQUE
 ); 

INSERT INTO students(name,age,email,mobile_no) VALUES
('Deepak', 20, 'deepak@gmail.com', 9876543210),
('Raja', 22, 'raja@gmail.com', 9876543211),
('Manish', 21, 'manish@gmail.com', 9876543212),
('Sahil', 23, 'sahil@gmail.com', 9876543213),
('Lalit', 20, 'lalit@gmail.com', 9876543214),
('Sumit', 24, 'sumit@gmail.com', 9876543215),
('Gaurav', 22, 'gaurav@gmail.com', 9876543216),
('Amit', 21, 'amit@gmail.com', 9876543217),
('Rohit', 23, 'rohit@gmail.com', 9876543218),
('Vikas', 22, 'vikas@gmail.com', 9876543219),
('Nitin', 20, 'nitin@gmail.com', 9876543220),
('Karan', 24, 'karan@gmail.com', 9876543221),
('Arjun', 21, 'arjun@gmail.com', 9876543222),
('Yash', 22, 'yash@gmail.com', 9876543223),
('Pankaj', 23, 'pankaj@gmail.com', 9876543224),
('Tarun', 20, 'tarun@gmail.com', 9876543225),
('Ankit', 21, 'ankit@gmail.com', 9876543226);

SELECT *FROM students_info;

-- for adding a new gender column in students_info table 
ALTER TABLE students ADD COLUMN gender ENUM('male','female','other');

--  fectching data from table with the help of new genrated column
SELECT gender from students;

--  insert or set the data in gender using where clause
UPDATE students SET gender='male' WHERE  id=1;

-- same also reterive data 
SELECT *FROM students WHERE name='Nitin';

-- change column position 
ALTER TABLE students MODIFY COLUMN age INT AFTER email;

-- rename the students table name 
RENAME TABLE students TO students_info;

-- for checking mobile number ends with this statement 
SELECT * FROM students_info WHERE mobile_no LIKE "%16%" ;

-- same also with name 
SELECT *FROM students_info WHERE name LIKE "%ak" ;

-- rename the existing column name
ALTER TABLE students_info RENAME COLUMN name TO stu_name;

-- fetching updating or renaming column data 
SELECT stu_name FROM students_info;


