-- 🔵 1. Arithmetic Operators
-- Used to perform basic calculations. 
-- | Operator | Meaning             | Example                        | Result |
-- | -------- | ------------------- | ------------------------------ | ------ |
-- | `+`      | Addition            | `SELECT 10 + 5 AS Sum;`        | 15     |
-- | `-`      | Subtraction         | `SELECT 10 - 5 AS Difference;` | 5      |
-- | `*`      | Multiplication      | `SELECT 10 * 5 AS Product;`    | 50     |
-- | `/`      | Division            | `SELECT 10 / 2 AS Quotient;`   | 5      |
-- | `%`      | Modulus (Remainder) | `SELECT 10 % 3 AS Remainder;`  | 1      |

-- 🔵 2. Comparison Operators
-- Used to compare two values (mostly in WHERE clause).
-- | Operator     | Meaning               | Example                                 | Result                   |
-- | ------------ | --------------------- | --------------------------------------- | ------------------------ |
-- | `=`          | Equal to              | `SELECT * FROM Students WHERE Age=18;`  | Returns rows with Age 18 |
-- | `!=` or `<>` | Not equal to          | `SELECT * FROM Students WHERE Age<>18;` | Not 18                   |
-- | `>`          | Greater than          | `SELECT * FROM Students WHERE Age>18;`  | Age > 18                 |
-- | `<`          | Less than             | `SELECT * FROM Students WHERE Age<18;`  | Age < 18                 |
-- | `>=`         | Greater than or equal | `SELECT * FROM Students WHERE Age>=18;` | Age ≥ 18                 |
-- | `<=`         | Less than or equal    | `SELECT * FROM Students WHERE Age<=18;` | Age ≤ 18                 |


-- 🔵 3. Logical Operators
-- Used to combine multiple conditions.
-- | Operator | Meaning                      | Example                                                   |
-- | -------- | ---------------------------- | --------------------------------------------------------- |
-- | `AND`    | Both conditions must be true | `SELECT * FROM Students WHERE Age>18 AND Gender='M';`     |
-- | `OR`     | Either condition true        | `SELECT * FROM Students WHERE Age<18 OR Hobby='Cricket';` |
-- | `NOT`    | Negate condition             | `SELECT * FROM Students WHERE NOT Hobby='Singing';`       |


-- 🔵 4. Assignment Operator
-- Used to assign a value.

-- | Operator | Meaning      | Example             |
-- | -------- | ------------ | ------------------- |
-- | `=`      | Assign value | `SET @total = 100;` |

-- 🔵 5. Special Operators
-- | Operator          | Meaning                                  | Example                                                                                               |
-- | ----------------- | ---------------------------------------- | ----------------------------------------------------------------------------------------------------- |
-- | `BETWEEN ... AND` | Range check                              | `SELECT * FROM Students WHERE Age BETWEEN 18 AND 25;`                                                 |
-- | `IN (...)`        | Matches any in a list                    | `SELECT * FROM Students WHERE Hobby IN ('Cricket','Music');`                                          |
-- | `LIKE`            | Pattern matching (%) or (\_)             | `SELECT * FROM Students WHERE Name LIKE 'A%';` (Names starting with A)                                |
-- | `IS NULL`         | Check for NULL values                    | `SELECT * FROM Students WHERE Education IS NULL;`                                                     |
-- | `EXISTS`          | Returns true if subquery returns results | `SELECT * FROM Students WHERE EXISTS (SELECT * FROM Enrollments WHERE Students.USN=Enrollments.USN);` |

-- 🔵 6. Bitwise Operators (rarely used in SQL):
-- | Operator | Meaning     | Example                        |            |                     |
-- | -------- | ----------- | ------------------------------ | ---------- | ------------------- |
-- | `&`      | Bitwise AND | `SELECT 5 & 3;`  **Result: 1** |            |                     |
-- | \`       | \`          | Bitwise OR                     | \`SELECT 5 | 3;\`  **Result: 7** |
-- | `^`      | Bitwise XOR | `SELECT 5 ^ 3;`  **Result: 6** |            |                     |

-- 🔵 7. Concatenation Operator:
-- | Operator | Meaning | Example        | Result              |                   |   |                                          |               |
-- | -------- | ------- | -------------- | ------------------- | ----------------- | - | ---------------------------------------- | ------------- |
-- | \`       |         | `or`CONCAT()\` | Concatenate strings | \`SELECT 'Hello ' |   | 'World';`(or)`CONCAT('Hello ','World')\` | 'Hello World' |
