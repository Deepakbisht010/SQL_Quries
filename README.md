# 🗄️ SQL Practice Repository

Welcome to my SQL Practice Repository! 🚀
This repository contains various SQL queries, database designs, and practice problems that I have worked on while learning and improving my database skills.

---

## 📌 About

This repo includes:

* Basic to Advanced SQL Queries
* Table Creation & Data Insertion
* Joins, Constraints, Keys
* Real-world Database Examples

---

## 🛠️ Technologies Used

* MySQL
* SQL

---

## 📂 Folder Structure

```
📦 SQL-Repo
 ┣ 📜 create_tables.sql
 ┣ 📜 insert_data.sql
 ┣ 📜 select_queries.sql
 ┣ 📜 joins.sql
 ┣ 📜 constraints.sql
 ┗ 📜 README.md
```

---

## 🧱 Database Example

### Create Database

```sql
CREATE DATABASE company;
USE company;
```

### Create Table

```sql
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    salary BIGINT,
    department_id INT
);
```

### Insert Data

```sql
INSERT INTO employees (name, email, salary, department_id)
VALUES
('Deepak', 'deepak@gmail.com', 50000, 1),
('Rahul', 'rahul@gmail.com', 60000, 2);
```

---

## 🔑 Concepts Covered

* Primary Key
* Foreign Key
* Constraints (NOT NULL, UNIQUE)
* Joins (INNER, LEFT, RIGHT)
* Aggregate Functions (COUNT, SUM, AVG)
* Filtering (WHERE, LIKE)

---

## 📊 Sample Query

```sql
SELECT name, salary 
FROM employees 
WHERE salary > 50000;
```

---

## 🎯 Goal

My goal is to:

* Strengthen SQL fundamentals
* Build strong database concepts
* Prepare for interviews & real-world projects

---

## 🤝 Contributing

Feel free to fork this repo and contribute by adding more SQL queries or improvements.

---

## ⭐ Support

If you like this repository, don't forget to ⭐ star it!

---

## 📧 Contact

Created by **Deepak Bisht**
GitHub: https://github.com/Deepakbisht010
