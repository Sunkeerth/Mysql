
USE tapaccademy;
-- View all employee data
SELECT * FROM employee;
-- ========================
-- 1. STRING FUNCTIONS
-- ========================
-- Convert to uppercase
SELECT UPPER("sunkeerth hii"); -- Output: SUNKEERTH HII
-- Convert to lowercase
SELECT LOWER("SUNKEERTH HII"); -- Output: sunkeerth hii
-- Concatenate two strings
SELECT CONCAT("suuuu", "  ! kerth"); -- Output: suuuu  ! kerth

-- Get the length of a string
SELECT LENGTH("suncncjncjndh"); -- Output: number of characters

-- Find the position of a substring
SELECT INSTR("sususu", "u"); -- Output: position of first "u"

-- Get part of a string (from 3rd position to end)
SELECT SUBSTR("susjsun", 3); -- Output: sjsun

-- Replace part of string with another string
SELECT REPLACE("suuuuuuu", "suu", "muuu"); -- Output: muuuuuuuu

-- Remove leading part of string
SELECT TRIM(LEADING "suu" FROM "suusuuuusuuu"); -- Removes starting "suu"

-- Get ASCII value of first character
SELECT ASCII("A"); -- Output: 65

-- Reverse a string
SELECT REVERSE("sunkeerth"); -- Output: htreeknus

-- Repeat a string multiple times
SELECT REPEAT("sun", 3); -- Output: sunsunsun

-- Left n characters of a string
SELECT LEFT("sunkeerth", 3); -- Output: sun

-- Right n characters of a string
SELECT RIGHT("sunkeerth", 4); -- Output: eerth

-- ========================
-- 2. MATH FUNCTIONS
-- ========================

-- Get remainder
SELECT MOD(25, 4); -- Output: 1

-- Round number to 2 decimal places
SELECT ROUND(8.2789, 2); -- Output: 8.28

-- Round to nearest 10 (left of decimal)
SELECT ROUND(88.2789, -1); -- Output: 90

-- Truncate decimal places without rounding
SELECT TRUNCATE(8.2789, 2); -- Output: 8.27

-- Round up to nearest whole number
SELECT CEIL(3.1432); -- Output: 4

-- Round down to nearest whole number
SELECT FLOOR(3.1432); -- Output: 3

-- Power of a number (2^3)
SELECT POW(2, 3); -- Output: 8

-- Square root
SELECT SQRT(49); -- Output: 7

-- Absolute value (removes negative)
SELECT ABS(-100); -- Output: 100

-- ========================
-- 3. DATE FUNCTIONS
-- ========================

-- Current date
SELECT CURDATE(); -- Output: 2025-06-04 (example)

-- Current date and time
SELECT NOW(); -- Output: 2025-06-04 17:00:00 (example)

-- Extract day, month, month name
SELECT DAY("2025-06-03"), MONTH("2025-06-03"), MONTHNAME("2025-06-03");

-- Get current time
SELECT CURTIME(); -- Output: current time like 17:12:00

-- Extract year from date
SELECT YEAR("2025-06-03"); -- Output: 2025

-- Add days to date
SELECT DATE_ADD("2025-06-03", INTERVAL 5 DAY); -- Output: 2025-06-08

-- Subtract days from date
SELECT DATE_SUB("2025-06-03", INTERVAL 3 DAY); -- Output: 2025-05-31

-- Find difference between two dates (in days)
SELECT DATEDIFF("2025-06-10", "2025-06-03"); -- Output: 7

-- ========================
-- 4. CONTROL FLOW FUNCTIONS
-- ========================

-- IF condition (like if-else)
SELECT IF(100 > 50, "yes", "no"); -- Output: yes

-- CASE (like switch-case)
SELECT CASE 
         WHEN 90 >= 90 THEN "A+"
         WHEN 80 >= 80 THEN "A"
         ELSE "B"
       END AS Grade;

-- ========================
-- 5. COMPARISON FUNCTIONS
-- ========================

-- NULL value check (returns 1 if NULL, else 0)
SELECT ISNULL(6); -- Output: 1

-- Check if two expressions are equal
SELECT 10 = 10; -- Output: 1 (true)

-- NULL-safe equality check
SELECT NULL <=> NULL; -- Output: 1 (true)

select coalesce(null,2); select coalesce(3,1);

-- ===============================
-- control flow functions 
-- ===============================

-- 1.case
-- when we want to check the multiple condition check is used 
select salary,   case 
when e_fname ="su" then salary*10/100
when e_lname ="su" then salary*50/100
else salary*20/100
end 
from employee;

-- 2. if  or else
select if(3=5,'true','false');

-- 3. ifnull

select ifnull(null,0); select ifnull(1,null);

-- ========================
-- 6. MULTI-ROW (AGGREGATE) FUNCTIONS
-- ========================

-- Total number of rows
SELECT COUNT(*) FROM employee;

-- Sum of a column
SELECT SUM(salary) FROM employee;

-- Average of a column
SELECT AVG(salary) FROM employee;

-- Minimum value in a column
SELECT MIN(salary) FROM employee;

-- Maximum value in a column
SELECT MAX(salary) FROM employee;

-- Group by department with count
select * from department;
SELECT D_id, COUNT(*) FROM employee GROUP BY D_id;

-- ========================
-- BONUS: WINDOW FUNCTIONS (MySQL 8+)
-- ========================

-- Row number per department
SELECT name, department, ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS rank FROM employee;

-- Running total
SELECT name, salary, SUM(salary) OVER (ORDER BY id) AS running_total FROM employee;
