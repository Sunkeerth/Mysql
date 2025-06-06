-- 📘 SQL Data Types - Explained with Comments

-- 🔹 1. Numeric Data Types
-- | Data Type                       | Description                                          | Example    | Range (Typical in MySQL)                                         |
-- | ------------------------------- | ---------------------------------------------------- | ---------- | ---------------------------------------------------------------- |
-- | `INT`                           | Integer (whole number)                               | 25         | –2,147,483,648 to 2,147,483,647 (signed)                         |
-- | `SMALLINT`                      | Smaller range integer                                | 32000      | –32,768 to 32,767 (signed)                                       |
-- | `BIGINT`                        | Very large integers                                  | 9000000000 | –9,223,372,036,854,775,808 to 9,223,372,036,854,775,807 (signed) |
-- | `DECIMAL(p,s)` / `NUMERIC(p,s)` | Exact fixed-point decimal (p = precision, s = scale) | 99.99      | Depends on p: Max p = 65, Max s = 30 (in MySQL)                  |
-- | `FLOAT(n)`                      | Approximate floating-point number                    | 12.45      | ±1.5 × 10^–45 to ±3.4 × 10^38 (approx. 7-digit precision)        |
-- | `DOUBLE`                        | Double-precision float                               | 12345.6789 | ±2.2 × 10^–308 to ±1.8 × 10^308 (approx. 15-digit precision)     |
-- signed means +ve or -ve  

-- INT: Stores whole numbers
-- Example: 1, 25, 1000
CREATE TABLE Example_Int (
    id INT
);

-- DECIMAL(p,s): Stores exact decimal values
-- p = total digits, s = digits after decimal
-- Example: DECIMAL(5,2) can store values like 123.45
CREATE TABLE Example_Decimal (
    price DECIMAL(5,2)
);

-- FLOAT(n): Approximate floating-point number
-- Less precise than DECIMAL, good for scientific values
CREATE TABLE Example_Float (
    value FLOAT(10)
);

-- BIGINT: Stores very large whole numbers
CREATE TABLE Example_BigInt (
    big_num BIGINT
);

-- DOUBLE: Stores large floating-point numbers with more precision
CREATE TABLE Example_Double (
    score DOUBLE
);

-- 🔹 2. String (Character/Text) Data Types

-- | Data Type    | Description                          | Example       | Range / Limit                                |
-- | ------------ | ------------------------------------ | ------------- | -------------------------------------------- |
-- | `CHAR(n)`    | Fixed-length string (exact n chars)  | `'BITM   '`   | 0 to 255 characters (in MySQL)               |
-- | `VARCHAR(n)` | Variable-length string (max n chars) | `'Sunkeerth'` | 0 to 65,535 bytes (depends on character set) |
-- | `TEXT`       | Large text field (long strings)      | Article text  | Up to 65,535 characters (in MySQL: `TEXT`)   |

-- | Type         | Max Length                   |
-- | ------------ | ---------------------------- |
-- | `TINYTEXT`   | 255 bytes                    |
-- | `TEXT`       | 65,535 bytes (\~64 KB)       |
-- | `MEDIUMTEXT` | 16,777,215 bytes (\~16 MB)   |
-- | `LONGTEXT`   | 4,294,967,295 bytes (\~4 GB) |




-- CHAR(n): Fixed-length string (padded with spaces)
-- Good for codes like 'A123'
CREATE TABLE Example_Char (
    code CHAR(5)
);

-- VARCHAR(n): Variable-length string (up to n characters)
-- Best for names, addresses, etc.
CREATE TABLE Example_Varchar (
    name VARCHAR(50)
);

-- TEXT: Large text field (paragraphs, articles)
CREATE TABLE Example_Text (
    description TEXT
);

-- 🔹 3. Date and Time Data Types

-- | Data Type   | Description           | Example                 | Range / Limit                                                             |
-- | ----------- | --------------------- | ----------------------- | ------------------------------------------------------------------------- |
-- | `DATE`      | Stores only the date  | `'2025-06-06'`          | `'1000-01-01'` to `'9999-12-31'`                                          |
-- | `TIME`      | Stores only the time  | `'14:30:00'`            | `'-838:59:59'` to `'838:59:59'` (hours\:minutes\:seconds)                 |
-- | `DATETIME`  | Stores date + time    | `'2025-06-06 14:30:00'` | `'1000-01-01 00:00:00'` to `'9999-12-31 23:59:59'`                        |
-- | `TIMESTAMP` | Date + time, auto set | `Auto insert/update`    | `'1970-01-01 00:00:01'` UTC to `'2038-01-19 03:14:07'` UTC (32-bit limit) |
-- | `YEAR`      | Stores only year      | `'2025'`                | `1901` to `2155` (in 4-digit format)                                      |

-- DATE: Stores only date (YYYY-MM-DD)
CREATE TABLE Example_Date (
    join_date DATE
);

-- TIME: Stores only time (HH:MM:SS)
CREATE TABLE Example_Time (
    login_time TIME
);

-- DATETIME: Stores both date and time
CREATE TABLE Example_DateTime (
    created_at DATETIME
);

-- TIMESTAMP: Auto-inserts current timestamp when a row is created/updated
CREATE TABLE Example_Timestamp (
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- YEAR: Stores a year value (4 digits)
CREATE TABLE Example_Year (
    graduation_year YEAR
);

-- 🔹 4. Boolean Type

-- BOOLEAN: Stores TRUE or FALSE
-- Usually used for status flags
CREATE TABLE Example_Boolean (
    is_active BOOLEAN
);

-- 🔹 5. Binary Types (for advanced usage)

-- BINARY(n): Fixed-length binary data
CREATE TABLE Example_Binary (
    fingerprint BINARY(16)
);

-- VARBINARY(n): Variable-length binary data
CREATE TABLE Example_VarBinary (
    file_data VARBINARY(255)
);

-- BLOB: Binary Large Object (used for images, files, etc.)
CREATE TABLE Example_Blob (
    photo BLOB
);

-- 🧠 Summary Notes (in comments)

-- Use INT or BIGINT for whole numbers
-- Use DECIMAL for accurate decimal values (like money)
-- Use VARCHAR for variable text
-- Use TEXT for long paragraphs
-- Use DATE/TIME/DATETIME for time tracking
-- Use BOOLEAN for true/false flags
-- Use BLOB/BINARY for binary data like images

-- ✅ End of SQL Data Type Summary
