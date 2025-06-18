-- 🔵 1. Escape Characters in SQL:
-- 🔍 What is an Escape Character?
-- In SQL, if you want to use special characters like %, _, ' inside strings (especially in LIKE pattern), you must "escape"
--  them to make SQL understand that they are literal characters, not wildcards.

-- | Wildcard | Meaning                          |
-- | -------- | -------------------------------- |
-- | `%`      | Matches **0 or more characters** |
-- | `_`      | Matches **exactly 1 character**  |

-- 🔍 Example without Escape:
-- SELECT * FROM Employees WHERE Name LIKE '100%';
-- ✅ This will match any name starting with "100" and any characters after because % means wildcard.

-- 🔍 But what if you want to search for real text "100%"?
-- ✅ Use ESCAPE character:
-- SELECT * FROM Employees WHERE Name LIKE '100!%' ESCAPE '!';
-- ✔️ Here, the ! says: “Treat the next character % as literal — not wildcard.”

-- ===========================================================================================================================================
-- 🔵 2. Regular Expressions (REGEXP) in SQL:
-- =============================================================================================================================================

-- 🔵 2. Regular Expressions (REGEXP) in SQL:
-- ✅ SQL REGEXP (Regular Expression) allows powerful pattern matching — better than LIKE.

-- | Pattern  | Meaning               | Example                               |        |                                 |
-- | -------- | --------------------- | ------------------------------------- | ------ | ------------------------------- |
-- | `^`      | Start of string       | `'^A'` — starts with A                |        |                                 |
-- | `$`      | End of string         | `'t$'` — ends with t                  |        |                                 |
-- | `.`      | Any single character  | `'a.b'` — matches 'acb', 'a1b', etc.  |        |                                 |
-- | `[abc]`  | Any one of a, b, or c | `'[ABC]'` — matches A or B or C       |        |                                 |
-- | `[^abc]` | Not a, b, or c        | `'[^ABC]'` — matches except A/B/C     |        |                                 |
-- | `[0-9]`  | Any digit 0 to 9      | `'[0-9]'` — matches any digit         |        |                                 |
-- | `{n}`    | Exactly n times       | `'^A{3}'` — matches 'AAA...'          |        |                                 |
-- | `*`      | Zero or more times    | `'A*'` — matches '', 'A', 'AAA', etc. |        |                                 |
-- | `+`      | One or more times     | `'A+'` — matches 'A', 'AA', etc.      |        |                                 |
-- | \`       | \`                    | OR (alternation)                      | \`'cat | dog'\` — matches 'cat' or 'dog' |


-- | LIKE Example              | REGEXP Example   | Meaning                    |                                  |
-- | ------------------------- | ---------------- | -------------------------- | -------------------------------- |
-- | `LIKE 'A%'`               | `REGEXP '^A'`    | Starts with A              |                                  |
-- | `LIKE '%t'`               | `REGEXP 't$'`    | Ends with t                |                                  |
-- | `LIKE '_a%'`              | `REGEXP '^.a'`   | Second letter is a         |                                  |
-- | Not possible in LIKE      | \`REGEXP 'Cat    | Dog'\`                     | OR condition (either Cat or Dog) |
-- | No digit checking in LIKE | `REGEXP '[0-9]'` | Checks if contains a digit |                                  |

