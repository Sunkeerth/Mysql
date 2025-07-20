--  JOINS in SQL:

-- A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

-- Table student:
create database join_Student;
use join_student;
create table student(std_id tinyint primary key,name varchar(20));
insert into student(std_id,name) values (1,"Sunkeerth"),(2,"santhsh.pm");

drop table marks;
create table marks(std_id tinyint ,foreign key(std_id) references student(std_id),
subjects varchar(20) not null,marks tinyint,primary key(std_id,subjects));

insert into marks(std_id,subjects,marks) values (1,"dsa",80),(2,"ada",70);

-- Supported Types of Joins in MySQL :

-- INNER JOIN: Returns records that have matching values in both tables
-- LEFT JOIN: Returns all records from the left table, and the matched records from the right table
-- RIGHT JOIN: Returns all records from the right table, and the matched records from the left table
-- CROSS JOIN: Returns all records from both tables

-- 1. INNER JOIN :
-- SELECT column_name(s)
-- FROM table1
-- INNER JOIN table2
-- ON table1.column_name = table2.column_name;  

select student.name,marks.subject from marks inner join marks on student.std_id = marks.std_id;

SELECT student.name, marks.subjects
FROM student
INNER JOIN marks ON student.std_id = marks.std_id;

