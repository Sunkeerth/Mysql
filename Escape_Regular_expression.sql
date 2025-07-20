 -- ESCAPE in SQL:
--  
--  Normally in SQL:
-- 		% = match any number of characters
-- 		_ = match a single character

use tapaccademy;
select e_fname from employee where e_fname like "s%_a";



-- SELECT * FROM users WHERE name LIKE '%_son';

				-- REGEXP in SQL (Regular Expressions):
-- REGEXP lets you do advanced pattern matching in SQL — more powerful than LIKE.

-- | Pattern | Meaning               | Example                             |
-- | ------- | --------------------- | ----------------------------------- |
-- | `^abc`  | Starts with `abc`     | `'abc123'` ✅                        |
-- | `abc$`  | Ends with `abc`       | `'123abc'` ✅                        |
-- | `[abc]` | Matches a, b, or c    | `'bat'`, `'cat'` ✅                  |
-- | `[a-z]` | Any lowercase letter  | `'hello'` ✅                         |
-- | `[0-9]` | Any digit             | `'123'` ✅                           |
-- | `.`     | Any one character     | `'a.c'` matches `'abc'`, `'acc'`    |
-- | `*`     | 0 or more repetitions | `'a*'` matches `''`, `'a'`, `'aaa'` |
-- | `+`     | 1 or more repetitions | `'a+'` matches `'a'`, `'aaa'`       |
-- | `{n}`   | Exactly n repetitions | `'a{3}'` matches `'aaa'`            |
