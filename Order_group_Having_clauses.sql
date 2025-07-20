-- 1.  ORDER BY Clause — Used for Sorting
-- 🔹 What it does:
-- It sorts the result of a SQL query based on one or more columns.

-- By default, it sorts in ascending (ASC) order, but you can also sort in descending (DESC) orde.
-- Syntax:

-- SELECT column1, column2
-- FROM table_name
-- ORDER BY column1 ASC|DESC;

-- 2. GROUP BY Clause — Used for Grouping Rows :
-- What it does:
-- It groups rows that have the same values in specified columns.
-- Usually used with aggregate functions like COUNT(), SUM(), AVG(), MAX(), MIN().

-- Syntax:

-- SELECT column1, AGGREGATE_FUNCTION(column2)
-- FROM table_name
-- GROUP BY column1;

-- 3 .HAVING Clause — Used for Filtering After Grouping :
-- What it does:
-- Works like WHERE, but WHERE is used before grouping, and HAVING is used after GROUP BY.
-- Helps to filter grouped data (i.e., after applying GROUP BY).

-- Syntax:

-- SELECT column1, AGGREGATE_FUNCTION(column2)
-- FROM table_name
-- GROUP BY column1
-- HAVING condition;

-- | Clause     | Purpose                      | Used With         | Example Usage          |
-- | ---------- | ---------------------------- | ----------------- | ---------------------- |
-- | `ORDER BY` | Sorts the result             | Any query         | `ORDER BY salary DESC` |
-- | `GROUP BY` | Groups rows by column values | Aggregate queries | `GROUP BY department`  |
-- | `HAVING`   | Filters grouped data         | After `GROUP BY`  | `HAVING COUNT(*) > 5`  |

use rain;
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    job_role VARCHAR(50),
    salary INT,
    phone VARCHAR(15)
);

INSERT INTO employee (emp_id, name, department, job_role, salary, phone) VALUES
(1, 'Amit', 'HR', 'HR Manager', 60000, '9876543210'),
(2, 'Sita', 'IT', 'Developer', 70000, '9998887776'),
(3, 'Ravi', 'Finance', 'Accountant', 50000, NULL),
(4, 'Geeta', 'IT', 'Developer', 72000, '8889990001'),
(5, 'John', 'IT', 'Tester', 45000, '9112233445'),
(6, 'Priya', 'HR', 'HR Executive', 40000, NULL),
(7, 'Ankit', 'Finance', 'Analyst', 52000, '8899776655'),
(8, 'David', 'IT', 'Developer', 75000, '9988776655'),
(9, 'Meera', 'Finance', 'Accountant', 48000, '9001122334'),
(10, 'Kiran', 'IT', 'Tester', 47000, NULL),
(11, 'Rohit', 'HR', 'HR Executive', 39000, '9090909090'),
(12, 'Alok', 'Finance', 'Clerk', 35000, '9876543212');



 -- 1. Group by department and get average salary :

-- Q: Write a query to get the average salary of employees in each department.
select department,avg(salary) from employee group by department;

-- Write a query to find departments with more than 5 employees. 
select department,count(*)  from employee   group by department having count(*)=5;

-- Write a query to list each department’s total number of employees and their average salary.
--  Display only those departments where the average salary is more than 50,000. Sort the results
--  by average salary in descending order. 

select department,avg(salary) as avg_salary from employee 
group by  department having avg(salary)>50000 
order by avg_salary  desc;


use tapaccademy;
select * from employee;
-- Having  
			select * from employee order by e_id desc;
			select D_id,salary from employee where D_id>2 and salary>1000 order by e_lname desc; 
            select D_id,max(salary) from employee where D_id >2 group by D_id having max(salary)>2000 order by D_id desc; 
-- Group 
			select D_id,avg(salary) from employee group by D_id;
            select D_id ,max(salary),min(salary) from employee group by D_id;
            select D_id,sum(salary)from employee group by D_id;
-- having
			select D_id,max(salary) from employee group by D_id having D_id>=2 and max(salary)>200 order by D_id desc;
            




 

