-- 🔄 What is "Cascading" in SQL?
-- When you connect two tables using a foreign key (FK), cascading helps keep data linked and consistent.

-- Cascading can happen in two ways:
-- ON DELETE CASCADE
-- ON UPDATE CASCADE

-- 1️ ON DELETE CASCADE – Simple Explanation
-- Meaning:
-- If you delete a row from the parent table, SQL will automatically delete all related rows in the child table.

-- How?
-- It works when you define a foreign key with ON DELETE CASCADE.

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- The cascading referces where when we link an tabe using an foreign key then the parent table data where if we delete on automatically
-- the child date will be delted by using an update and delete
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


create database cascading_del_upd;
use cascading_del_upd;

--  Example:
-- Tables:
-- Department table (parent)
-- Employee table (child)

 CREATE TABLE Department (
   dept_id INT PRIMARY KEY,
   dept_name VARCHAR(100) not null
 );

create table employee(emp_id tinyint primary key,emp_name varchar(20) not null,
dept_id int ,foreign key(dept_id) references Department(dept_id) 
on update cascade on delete cascade);
drop table employee;

insert into Department(dept_id,dept_name) values(1,"education");
insert into employee(emp_id,emp_name) values (11,"Sunkeerth");

update Department set dept_id=12 where dept_id=1;
update Department set dept_id=21 where dept_id=12;
select * from Department;
delete  from Department where dept_id=12;
delete from Department where dept_id=21;
select * from employee;



-- Data:
-- | Department | | Employee |
-- |--------------------| |------------------------|
-- | dept_id | dept_name | | emp_id | emp_name | dept_id |
-- |--------|------------| |--------|-----------|---------|
-- | 1 | IT | | 101 | Alice | 1 |
-- | 2 | HR | | 102 | Bob | 2 |

-- Now if you run:
-- DELETE FROM Department WHERE dept_id = 1;
-- 🔽 What happens?
-- Row with dept_id = 1 is deleted from Department.
-- ✅ Employee "Alice" is also deleted because she belonged to that department.

-- 2️ ON UPDATE CASCADE – Simple Explanation
-- 🧠 Meaning:
-- If you update a key value (like dept_id) in the parent table, the value is automatically updated in the child table too.

--  How?
-- Use a foreign key with ON UPDATE CASCADE.

-- 📦 Example:
-- Same tables as before:

-- CREATE TABLE Department (
--   dept_id INT PRIMARY KEY,
--   dept_name VARCHAR(100)
-- );

-- CREATE TABLE Employee (
--   emp_id INT PRIMARY KEY,
--   emp_name VARCHAR(100),
--   dept_id INT,
--   FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
--     ON UPDATE CASCADE
-- );
-- Suppose data is:
-- | Department | | Employee |
-- |--------------------| |------------------------|
-- | dept_id | dept_name | | emp_id | emp_name | dept_id |
-- |--------|------------| |--------|-----------|---------|
-- | 1 | IT | | 101 | Alice | 1 |

-- Now if you run:
-- UPDATE Department SET dept_id = 10 WHERE dept_id = 1;

-- 🔽 What happens?
-- In Department, dept_id changes from 1 to 10.
-- ✅ In Employee, Alice’s dept_id is also updated from 1 to 10.

-- 🎯 Summary Table:
-- Cascade Option	What It Does
-- ON DELETE CASCADE	Automatically deletes child rows when parent row is deleted
-- ON UPDATE CASCADE	Automatically updates child rows when parent key is updated

-- 🎓 Real-Life Example
-- Imagine:

-- A college has many students.
-- If the college closes (deleted), all students registered in it should also be removed. ✅ Use ON DELETE CASCADE.
-- If the college's code changes (updated), the students’ college code should also change to match. ✅ Use ON UPDATE CASCADE.