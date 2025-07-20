-- SQL constraints are used to enforce rules on data in tables. 
-- 			They help maintain accuracy, reliability, and integrity of the database.

-- | Constraint       | What It Does                                                    | Real-World Example                         |
-- | ---------------- | --------------------------------------------------------------- | ------------------------------------------ |
-- | `NOT NULL`       | Ensures a column **must have a value**, cannot be left empty    | A student's name must be provided          |
-- | `UNIQUE`         | Ensures **all values in a column are different**                | No two users can have the same email       |
-- | `PRIMARY KEY`    | Combines `NOT NULL` + `UNIQUE` to uniquely identify each row    | Student roll number as the main identifier |
-- | `FOREIGN KEY`    | Links one table’s column to another table’s `PRIMARY KEY`       | Order table references Customer table      |
-- | `CHECK`          | Ensures a column’s values satisfy a specific condition          | Age must be greater than 18                |
-- | `DEFAULT`        | Sets a default value if no value is provided                    | Default status is "Active" for new users   |
-- | `AUTO_INCREMENT` | Automatically increases numeric values for each new row (MySQL) | ID auto-generates for each new record      |
use tapaccademy;

create table Sunkeerth(usn varchar(11) primary key ,name char(10) not null,age tinyint default 18 check (age>18)  ,
Education varchar(20) Unique,hobby varchar(20) not null ) ;
create table otherstudent(usn varchar(11),foreign key(usn) references Sunkeerth(usn) );


						-- Data Defication Language-- 
-- | Command    | What It Does                       | Example                                            |
-- | ---------- | ---------------------------------- | -------------------------------------------------- |
-- | `CREATE`   | Creates a new table or database    | `CREATE TABLE Student (id INT, name VARCHAR(50));` |
-- | `ALTER`    | Modifies table structure           | `ALTER TABLE Student ADD age INT;`                 |
-- | `DROP`     | Deletes a table or database        | `DROP TABLE Student;`                              |
-- | `TRUNCATE` | Removes all data (keeps structure) | `TRUNCATE TABLE Student;`                          |
-- | `RENAME`   | Changes the name of a table        | `RENAME TABLE Student TO Learner;`                 |

											-- DDL(Alter)
-- Alter types
-- | **Use Case**             | **Command** Example            | **Syntax Example**                                                                                      |
-- | ------------------------ | ------------------------------ | ------------------------------------------------------------------------------------------------------- |
-- | **Add Column**           | `ADD COLUMN`                   | `ALTER TABLE table_name ADD column_name datatype;`                                                      |
-- | **Modify Column**        | `MODIFY COLUMN`                | `ALTER TABLE table_name MODIFY column_name new_datatype;`                                               |
-- | **Rename Column**        | `RENAME COLUMN`                | `ALTER TABLE table_name RENAME COLUMN old_column TO new_column;`                                        |
-- | **Drop Column**          | `DROP COLUMN`                  | `ALTER TABLE table_name DROP COLUMN column_name;`                                                       |
-- | **Add Constraint**       | `ADD CONSTRAINT`               | `ALTER TABLE table_name ADD CONSTRAINT constraint_name constraint_type (column_name);`                  |
-- | **Drop Constraint**      | `DROP CONSTRAINT / DROP INDEX` | `ALTER TABLE table_name DROP CONSTRAINT constraint_name;` (or for MySQL: `DROP INDEX constraint_name;`) |
-- | **Rename Table**         | `RENAME TABLE`                 | `RENAME TABLE old_table_name TO new_table_name;`                                                        |
-- | **Change Table Options** | `ENGINE = InnoDB`              | `ALTER TABLE table_name ENGINE = InnoDB;`                                                               |
-- | **Set Default Value**    | `SET DEFAULT`                  | `ALTER TABLE table_name ALTER COLUMN column_name SET DEFAULT default_value;`                            |


alter table otherstudent add column Height decimal(2,2);
select * from otherstudent;
alter table otherstudent modify column Height float;
alter table otherstudent rename column Height to height;
alter table otherstudent add column Weight decimal(2,1);
alter table otherstudent add constraint unique_height unique (height);
rename table otherstudent to stt;

					-- Data Manuplcation language
-- | Command  | What It Does           | Example                                        |
-- | -------- | ---------------------- | ---------------------------------------------- |
-- | `INSERT` | Adds new data          | `INSERT INTO Student VALUES (1, 'Sunkeerth');` |
-- | `UPDATE` | Modifies existing data | `UPDATE Student SET name='Keerth' WHERE id=1;` |
-- | `DELETE` | Deletes specific data  | `DELETE FROM Student WHERE id=1;`              |

-- 1.Insert :
create table Insrting_type(id int primary key,name varchar(12) not null);
		-- Type 1 : 
		insert into Insrting_type values(1,"sunkeerth");
		-- Type 2 :
		insert into Insrting_type(id,name) values(2,"ee"),(3,"rrr");

-- 2. Update :
		update Insrting_type set name="suresh" where id=2 ;

-- 3. delete :
		truncate table Insrting_type;  -- (deletes all the records)
		drop table Insrting_type; -- (existing table)
		drop database taifood; -- (drop the databse )--     

-- | **Use Case**            | **Example**                                                      |
-- | ----------------------- | ---------------------------------------------------------------- |
-- | Update Single Column    | `UPDATE table SET col1 = value WHERE condition;`                 |
-- | Update Multiple Columns | `UPDATE table SET col1 = value1, col2 = value2 WHERE condition;` |
-- | Update All Rows         | `UPDATE table SET col = value;` (No `WHERE` clause)              |
-- | Update with Function    | `UPDATE table SET col = CONCAT(col, 'text') WHERE condition;`    |

					-- Data query language--
                    
-- | Command  | What It Does               | Example                  |
-- | -------- | -------------------------- | ------------------------ |
-- | `SELECT` | Retrieves data from tables | `SELECT * FROM Student;` |

					-- Data control language
-- 1. grant 
-- "It is used to give the privalage to the user "select, insert,update,delete"".But user must be created first
		-- syntax for user creation :
		-- 	create usere user_name identified by 'password';
        create user Sunkeerta identified by "Sunkee@1234";
        
-- syntax :
-- grant privalage on databse_name.table to user_name;

grant privileges on tapaccademy.department to Sunkeertha ;

                    
-- | Command           | What It Does                           | Example                      |
-- | ----------------- | -------------------------------------- | ---------------------------- |
-- | `COMMIT`          | Saves all changes made                 | `COMMIT;`                    |
-- | `ROLLBACK`        | Cancels all changes before last commit | `ROLLBACK;`                  |
-- | `SAVEPOINT`       | Marks a point to rollback to later     | `SAVEPOINT save1;`           |
-- | `SET TRANSACTION` | Sets properties for a transaction      | `SET TRANSACTION READ ONLY;` |


-- | **Command**           | **What It Does (In Simple Words)**                                                                                                                                                                                                                                            | **Example**                       |
-- | --------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
-- | **`COMMIT`**          | ✅ **Saves the changes permanently** into the database. Once committed, the changes cannot be undone. <br><br>🔍 *Example: You insert or update some data and use COMMIT to make these changes permanent.*                                                                     | `sql COMMIT; `                    |
-- | **`ROLLBACK`**        | ❌ **Cancels the changes** made since the last COMMIT. It's like pressing "undo" for the current transaction. <br><br>🔍 *Example: You realize your recent changes were wrong — ROLLBACK cancels them and returns the database to the last safe (committed) state.*            | `sql ROLLBACK; `                  |
-- | **`SAVEPOINT`**       | 📌 **Sets a marker (savepoint)** so you can later roll back to this specific point — not the entire transaction. <br><br>🔍 *Example: You want to test a part of a transaction; if something goes wrong after the savepoint, you can ROLLBACK only to that point.*            | `sql SAVEPOINT save1; `           |
-- | **`SET TRANSACTION`** | ⚙️ **Defines how the transaction should behave**, like read-only mode (no updates allowed) or isolation level (how transactions affect each other). <br><br>🔍 *Example: You want to read data only, and no one else should change it while you read — you use this command.* | `sql SET TRANSACTION READ ONLY; ` |



-- | Category | Full Form                    | Used For                  | Main Commands                                   |
-- | -------- | ---------------------------- | ------------------------- | ----------------------------------------------- |
-- | DDL      | Data Definition Language     | Table/database structure  | `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME` |
-- | DML      | Data Manipulation Language   | Inserting/modifying data  | `INSERT`, `UPDATE`, `DELETE`                    |
-- | DQL      | Data Query Language          | Reading data              | `SELECT`                                        |
-- | DCL      | Data Control Language        | Permissions               | `GRANT`, `REVOKE`                               |
-- | TCL      | Transaction Control Language | Managing DML transactions | `COMMIT`, `ROLLBACK`, `SAVEPOINT`               |
