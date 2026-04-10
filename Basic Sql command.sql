
-- Here we are creating a database 
create database my_db;

--  it is using to use and performing operation in the database
use my_db;


-- here we are craeting a table which is contain id, name,email and age 
create table student(
id int auto_increment primary key,
name varchar(30) NOT NULL,
email varchar(30) not null,
age int not null
);


-- Now here we are adding some data in table  
insert into student(name,email,age) values
('deepak', 'deepak12@gmail.com', 20),
('rahul','rahul12@gmail.com',23),
('jatin','jatin12@gmail.com',22);


-- it is used for fechting the all data from table 
select * from student;

-- it is used for fetching the specific data from the table
select email,name from student;
select age from student;


-- it is used for rename the table name 
rename table student to students;


-- it is used for adding the new column in table 
ALTER table students add column address varchar(30);

-- it is used to drop the specific column
Alter table students drop column address;

