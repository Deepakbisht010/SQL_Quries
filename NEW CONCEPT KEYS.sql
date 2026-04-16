CREATE DATABASE library_mgmt;

USE library_mgmt;

CREATE TABLE library_users(
id INT PRIMARY KEY AUTO_INCREMENT,
reg_id BIGINT UNIQUE,
name VARCHAR(30)
);

-- ALTER TABLE library_users MODIFY reg_id BIGINT NOT NULL;

drop table library_users;

INSERT INTO library_users(reg_id, name) VALUES
(101, 'Deepak'),
(102, 'Rahul'),
(103, 'Amit'),
(104, 'Sahil'),
(105, 'Rohit'),
(106, 'Karan'),
(107, 'Vikas'),
(108, 'Ankit'),
(109, 'Neeraj'),
(110, 'Pooja');


SELECT * FROM library_users;

USE library_mgmt;

 CREATE TABLE management(
 id INT PRIMARY KEY AUTO_INCREMENT,
 reg_id BIGINT UNIQUE,
 book_name VARCHAR(30),
 author_name VARCHAR(20),
 cost BIGINT,
 issue_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT lby_fky FOREIGN KEY (reg_id) REFERENCES library_users(reg_id) ON DELETE CASCADE
 );

DROP TABLE management;
 
INSERT INTO management(reg_id, book_name, author_name, cost) VALUES
(101, 'C Programming', 'Dennis Ritchie', 500),
(102, 'Java Basics', 'James Gosling', 600),
(103, 'Python Guide', 'Guido Rossum', 700),
(104, 'DBMS Concepts', 'Korth', 550),
(105, 'Operating System', 'Galvin', 650),
(106, 'Data Structures', 'Mark Allen', 800),
(107, 'Computer Networks', 'Tanenbaum', 750),
(108, 'Machine Learning', 'Andrew Ng', 900),
(109, 'Artificial Intelligence', 'Stuart Russell', 950),
(110, 'Web Development', 'Brad Traversy', 850);
 
 SELECT *FROM management;
 
SELECT  lu.reg_id, lu.name, m.book_name, m.author_name, m.cost
FROM management m
INNER JOIN library_users lu
ON m.reg_id = lu.reg_id;