# Welcome to Documentation Of SQL

## 1. Introduction to SQL

- #### What is SQL?
  - SQL (Structured Query Language) is a domain-specific language used for managing and manipulating relational databases.
- #### Why Learn SQL?
  - Essential for database management.
  - Widely used in data analytics, software development, and more.
- #### What Can SQL do?
  - SQL can execute queries against a database
  - SQL can retrieve data from a database
  - SQL can insert records in a database
  - SQL can update records in a database
  - SQL can delete records from a database
  - SQL can create new databases
  - SQL can create new tables in a database
  - SQL can create stored procedures in a database
  - SQL can create views in a database
    -SQL can set permissions on tables, procedures, and views

## 2. SQL Basics

- ### 2.1 SQL Select
  - #### The `SELECT` statement is used to select data from a database.
    ```sql
    SELECT column1, column2, ...
    FROM table_name;
    -- Expample
    SELECT player_id, first_name, last_name
    FROM players01;
    ```
  - #### Select ALL columns
    ```sql
    -- Syntax
    SELECT *
    FROM table_name;
    -- Exmaple
    SELECT *
    FROM players01
    ```
- ### 2.2 Select Distinct

  - #### The `SELECT DISTINCT` statement is used to return only distinct (different) values.
    ```sql
    ---Syntax
    SELECT DISTINCT column1, column2, ...
    FROM table_name;
    --- Example
    SELECT DISTINCT player_id
    FROM players01;
    ```

- ### 2.3 WHERE SQL

  - #### The `WHERE` clause is used to filter records.

  - #### It is used to extract only those records that fulfill a specified condition.

    ```sql
    ---Syntax
    SELECT column1, column2, ...
    FROM table_name
    WHERE condition;
    --- Examples
    SELECT *
    FROM players01
    WHERE player_id=1;

    SELECT player_id,first_name,rating
    FROM players01
    WHERE first_name='Ahmed'
    ```

- ### 2.4 Logical Operators

  - #### 2.4.1 `And Operators`

    - ##### Combines two or more conditions and returns results only if all conditions are `true.`

      ```sql
      ---Syntax
      SELECT column1, column2, ...
      FROM table_name
      WHERE condition1 AND        condition2 AND      condition3 ...;

      --- Examples
      SELECT player_id,first_name,team
      FROM players01
      WHERE shirt_number =1 And rating = 90;

      SELECT player_id,first_name,team
      FROM players01
      WHERE shirt_number >2 And rating < 90;
      ```

    - ##### 1. Retrieves player_id,first_name,team players01 who are shirt_number equal to 1 and rating equal 90 .
    - ##### 2. Retrieves player_id,first_name,team players01 who are shirt_number gather than 2 and rating is less than 90 .

  - #### 2.4.2 `OR` Opearator

    - ##### Combines two or more conditions and returns results if at least one condition is true.

      ```sql
      --- Syntax
      SELECT column1, column2, ...
      FROM table_name
      WHERE condition1 OR condition2 OR condition3 ...;

      ---Example

      SELECT player_id,first_name,team,rating
      FROM players01
      WHERE shirt_number =1 OR rating = 90;
      ```

  - #### 2.4.3`NOT Operator`

    - ##### The NOT operator is used in combination with other operators to give the opposite result, also called the negative result.

      ```sql
      --- Syntax
      SELECT column1, column2, ...
      FROM table_name
      WHERE NOT condition;

      --- Example
      SELECT player_id,first_name,team,rating
      FROM players01
      WHERE NOT rating = 90;
      ```

    ```

    ```

- ### 2.5 Aliases

  - #### SQL aliases are used to give a table, or a column in a table, a temporary name.
  - #### Aliases are often used to make column names more readable.
  - #### An alias only exists for the duration of that query.
  - #### An alias is created with the A S keyword.

    ```sql
    --- Syntax
    --When alias is used on column:

    SELECT column_name AS alias_name
    FROM table_name;

    -- When alias is used on table:

    SELECT column_name(s)
    FROM table_name AS alias_name;

    --- Examples
    SELECT player_id as p_id ,first_name as sure_name, rating As new_rating
    FROM players01;

    SELECT first_name || ' ' || last_name As full_name
    from players01;
    ```

- ### 2.6 `Limitation - LIMIT` SQL

  - #### In SQL, the `LIMIT` clause is used to restrict the number of rows returned by a query. It is particularly useful when working with large datasets and when only a subset of the data is needed.

    ```sql
    --- Syntax
    SELECT column1, column2, ...
    FROM table_name
    LIMIT number_of_rows;

    --- Examples
    SELECT * FROM players01
    WHERE team='Lion Team'
    limit 2;

    SELECT *
    FROM players01
    LIMIT 2;
    ```

- ### 2.7 `INSERT INTO` SQL

  - #### The `INSERT INTO` statement is used to insert `new records` in a table.
  - #### 2.7.1 It is possible to write the INSERT INTO statement in two ways:

  - ##### 2.7.1.1 Specify both the column names and the values to be inserted

    ```sql
    --- Syntax
    INSERT INTO table_name (column1, column2, column3, ...)
    VALUES (value1, value2, value3, ...);
    --- Example
    INSERT into players01 (player_id,first_name,last_name,teamshirt_number,rating)
    VALUES (10,'Md. Omar', 'Faruk', 'Tiger Team', 4, 95)'

    ```

  - ##### 2.7.1.2 If you are adding values for all the columns of the table, you do not need to specify the column names in the SQL query. However, make sure the order of the values is in the same order as the columns in the table. Here, the INSERT INTO syntax would be as follows

    ```sql
    INSERT INTO table_name
    VALUES (value1, value2, value3, ...);

    --- Example
    INSERT INTO players01
    VALUES (11, 'Hossain', 'Ahmed', 'Tiger Team', 4, 85);

    ```

  - #### 2.7.2 `Insert` Data Only in Specified Columns

    - ##### It is also possible to only insert data in specific columns. Below examples Due column has NULL value store
      ```sql
      --- Example
      INSERT into players01 (player_id,first_name,rating)
      VALUES (12,'Md. Omar',  95)';
      ```

  - #### 2.7.3 `Insert` Multiple Rows

    - ##### It is also possible to insert multiple rows in one statement.

      ```sql
      INSERT into players01 (player_id,first_name,last_name,team,shirt_number,rating)
      VALUES
      (13,'Sajib', 'Das', 'Fox team','1',85),
      (14,'Fazlul', 'Haque', 'Fox team','1',95)
      ```

- ### 2.8 `UPDATE` SQL

  - #### Used to modify existing records in a table.

    ```sql
    --- Syntax
    UPDATE table_name
    SET column1 = value1, column2 = value2, ...
    WHERE condition;

    --- Example
    UPDATE players01
    set first_name = 'Update', last_name = 'Name'
    WHERE player_id = 15
    ```

- ### 2.9 `DELETE` SQL

  - #### The `DELETE` statement in SQL is used to remove rows from a table based on specified conditions. Here's a detailed guide on how to use it effectively and safely:

    ```sql
    ---Syntax
    DELETE FROM table_name
    WHERE condition;
    --- Examples

    --- 1. Delete Specific Rows
    DELETE FROM players01
    WHERE player_id=12;

    --- 2. Delete All Rows from a Table
    DELETE FROM players01;

    ```

- ### 2.10 SQL Opearators

  - #### 2.10.1 SQL Arithmetic Operators
    - #### `+` Addition - `SELECT 30 + 20`
    - #### `-` Subtraction - `SELECT 30 - 20`
    - #### `*` Multiplication - `SELECT 2 * 5`
    - #### `/` Division - `SELECT 10 / 2`
    - #### `%` Modulus - `SELECT 30 + 10`
  - #### 2.10.2 SQL Bitwise Operators
    - #### `&` Bitwise AND - `SELECT 5 & 3 AS Result` Output = 1
      - ##### Binary Representation:
      - 5 = 0101
      - 3 = 0011
      - Result = 0001 = 1
    - #### `|` Bitwise OR - `SELECT 5 | 3 AS Result` Output = 7
      - #### Binary Representation:
      - 5 = 0101
      - 3 = 0011
      - Result = 0111 = 7
    - #### `^` Bitwise exclusive OR - `SELECT 5 ^ 3 AS Result` Output = 6
      - #### Binary Representation:
      - 5 = 0101
      - 3 = 0011
      - Result = 0110 = 6
  - #### 2.10.3 SQL Comparison Operators
    - `=` Equal to - `SELECT * FROM players01 WHERE rating = 80`
    - `>` Greater than - `SELECT * FROM players01 WHERE rating > 80`
    - `<` Less than - `SELECT * FROM players01 WHERE rating > 80`
    - `>=` Greater than or equal to - `SELECT * FROM players01 WHERE rating >=80;`
    - `<=` Less than or equal to - `SELECT * FROM players01 WHERE rating <=80;`
    - `<>` Not equal to - `SELECT * FROM players01 WHERE rating <>80;`
  - #### 2.10.4 SQL Compound Operators
    - `+=` Add equals
    - `-=` Subtract equals
    - `*=` Multiply equals
    - `/=` Divide equals
    - `%=` Modulo equals
    - `&=` Bitwise AND equals
    - `^-=` Bitwise exclusive equals
    - `|*=` Bitwise OR equals
  - #### 2.10.5 SQL Logical Operators
    - `ALL` TRUE if all of the subquery values meet the condition
    - `AND` TRUE if all the conditions separated by AND is TRUE
    - `ANY` TRUE if any of the subquery values meet the condition
    - `BETWEEN` TRUE if the operand is within the range of comparisons
    - `EXISTS` TRUE if the subquery returns one or more records
    - `IN` TRUE if the operand is equal to one of a list of expressions
    - `LIKE` TRUE if the operand matches a pattern
    - `NOT` Displays a record if the condition(s) is NOT TRUE
    - `OR` TRUE if any of the conditions separated by OR is TRUE
    - `SOME` TRUE if any of the subquery values meet the condition

- ### 2.10 `BETWEEN`

  - #### The `BETWEEN` operator selects values within a given range. The values can be numbers, text, or dates.
  - #### The `BETWEEN` operator is inclusive: begin and end values are included.

    ```sql
    --- Syntax
    SELECT column_name(s)
    ROM table_name
    WHERE column_name BETWEEN value1 AND value2;
    --- Examples
    SELECT *
    FROM players01
    WHERE player_id BETWEEN 5 AND 8;

    SELECT rating
    FROM players01
    WHERE player_id BETWEEN 5 AND 8
    ```

- ### 2.11 `IN` Operator

  - #### The `IN` operator is used to filter rows where a column's value matches one of several specified values.
  - #### Syntax
    ```sql
    SELECT column_name
    FROM table_name
    WHERE column_name IN (value1, value2, ...);
    ```
  - #### Example

    ```sql
    SELECT *
    FROM players01
    WHERE rating in (80, 90)

    SELECT first_name
    FROM players01
    WHERE rating in (80, 90)
    ```

## 3. SQL Constraints & Data Types

- ### 3.1 Data Type :

  - `SQL data types define the kind of values that can be stored in a table's columns. They ensure that data is stored consistently and enable efficient operations. Here’s an organized list of SQL data types by category`
  - #### 3.1.1 Numeric Data Types

    - `INT / INTEGER` - Stores whole numbers. Common range: -2,147,483,648 to 2,147,483,647.
    - `SMALLINT` - Smaller range of integers. Common range: -32,768 to 32,767.
    - `BIGINT` - Larger range of integers. Common range: -2^63 to 2^63 - 1.
    - `DECIMAL(p, s) / NUMERIC(p, s)` - Fixed-point numbers with precision p and scale s.
    - `FLOAT` - Approximate floating-point numbers. Stores large range but with rounding errors.
    - `REAL` - Single-precision floating-point numbers.

    - `DOUBLE / DOUBLE PRECISION` - Double-precision floating-point numbers.
    - `TINYINT` - Small integers. Common range: 0 to 255 (unsigned).

  - #### 3.1.2 Character/String Data Types

    - `CHAR(n) / CHARACTER(n)` - Fixed-length string of size n Padded with spaces if shorter.

    - `VARCHAR(n)` - Variable-length string of up to n characters.

    - `TEXT` - Large variable-length string. Typically unlimited or database-specific limit.

  - #### 3.1.3 Date and Time Data Types
    - `DATE` - Stores date in YYYY-MM-DD format.
    - `TIME` - Stores time in HH:MI:SS format.
    - `DATETIME` - Stores date and time.
    - `TIMESTAMP` - Stores date and time, often with time zone information.
    - `YEAR` - Stores year in two or four digits.
    - `INTERVAL` - Used for intervals of time (SQL Standard, not always supported).
  - #### Example
    ```sql
    CREATE TABLE Customers(
    customers_id INT,
    customers_firstName VARCHAR(50),
    Order_date DATE,
    customer_notes TEXT
    );
    ```

- ### 3.2 SQL Constraints

  - `In SQL, constraints are rules enforced on table columns to maintain data integrity and ensure valid data entry. Constraints are specified when a table is created or altered and help prevent invalid operations on the database.`
  - #### Types of SQL Constraints

    #### 1. `NOT NULL` - Ensures that a column cannot have NULL values. Every row must have a value for this column.

    ```sql
    CREATE TABLE employees (
    id INT NOT NULL,
    name VARCHAR(50) NOT NULL);
    ```

    #### 2.`UNIQUE` - Ensures that all values in a column are different

    ```sql
    ---Example
    CREATE TABLE users (
    user_id INT UNIQUE,
    email VARCHAR(100) UNIQUE);
    ```

    #### 3.`PRIMARY KEY` - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table

    ```sql
    ---Example
    CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE NOT NULL);

    ```

    #### 4.`FOREIGN KEY` - Prevents actions that would destroy links between tables

    ```sql
    ---Example
    CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id));

    ```

    #### 5.`CHECK` - Ensures that the values in a column satisfies a specific condition

    ```sql
    --- Example
    CREATE TABLE products (
    product_id INT PRIMARY KEY,
    price DECIMAL(10, 2),
    CHECK (price > 0));

    ```

    #### 6.`DEFAULT` - Sets a default value for a column if no value is specified

    ```sql
    --- Example
    CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    status VARCHAR(20) DEFAULT 'active');

    ```

    #### 7.`CREATE INDEX` - Used to create and retrieve data from the database very quickly

    ```sql
    CREATE INDEX index_name
    ON table_name (column1, column2, ...);
    ```

## 4. Create DataBase & Table

- ### 4.1 DataBase Create
  - #### The `CREATE DATABASE` statement is used to create a new SQL database.
  - #### Syntax
  ```sql
  CREATE DATABASE databasename;
  ```
- ### 4.2 Table Create

  - #### The `CREATE TABLE` statement is used to create a new table in a database.

    ```sql
    ---Syntax
    CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
    ....);
    --- Example
    CREATE TABLE fruits01(
    fruit_id SERIAL PRIMARY KEY,
    fruit_name VARCHAR (50) NOT NULL,
    fruit_code VARCHAR (10) NOT NULL
    );
    --- insert value
    INSERT INTO fruits01(fruit_name,fruit_code)
    VALUES
    ('Apple','AP01'),
    ('Banana', 'BA01'),
    ('Orange','OR01')
    ```

- ### 4.3 Table create from another table

  - #### Here `tiger_team_players` is create from `players01` table

    ```sql
    CREATE TABLE tiger_team_players
    as(
    SELECT *
    FROM players01
    WHERE team='Tiger Team'
    )
    ```

- ### 4.4 Delete Database

  - #### The `DROP DATABASE` statement is used to drop an existing SQL database.
  - Syntax

    ```sql
    DROP DATABASE databasename;

    ```

- ### 4.5 Delete Table
  - #### In SQL, the `DROP TABLE` statement is used to delete an entire table from a database, including all its data, structure, and associated constraints. Once dropped, the table cannot be recovered unless you have a backup.
    ```sql
    ---Syntax
    DROP TABLE table_name;
    ```
- ### 4.6 Alter

  - #### The `ALTER` statement in SQL is used to modify the structure of an existing database object, such as a table. You can add, modify, or drop columns, constraints, and other table attributes. It is a powerful command that helps you adjust your schema without losing data.
  - #### 4.6.1. `Add a New Column:` We can add a new column to an existing table using `ADD`.

    ```sql
    ---Syntax
    ALTER TABLE table_name
    ADD column_name column_definition;

    ---Example
    ALTER TABLE tiger_team_players
    ADD player_location VARCHAR(50);
    ```

  - #### 4.6.2 `Rename column:` We can rename a column using `RENAME COLUMN`

    ```sql
    --- syntax
    ALTER TABLE table_name
    RENAME COLUMN old_column_name TO new_column_name;

    --- example
    ALTER TABLE tiger_team_players
    RENAME COLUMN player_location to p_locationtiger_team_players
    ```

  - #### 4.6.3 `Delete column:` We can remove an unwanted column from a table using DROP COLUMN.
    ```sql
    --- syntax
    ALTER TABLE table_name
    DROP COLUMN column_name;
    --- example
    Alter TABLE tiger_team_players
    Drop column last_name
    ```
  - #### 4.6.4 `Rename a Table:` WE can rename the entire table using `RENAME`.

    ```sql
    ALTER TABLE old_table_name
    RENAME TO new_table_name;

    --- Example
    ALTER TABLE demo
    RENAME to finalDemo
    ```

## 5. Data Sorting & Condition

- ### 5.1 `ORDER BY`

  - #### The ORDER BY keyword is used to sort the result-set in ascending or descending order. By default, it sorts the data in ascending order, but you can specify descending order as well.

    ```sql
    --- Syntax
    SELECT column1, column2, ...
    FROM table_name
    ORDER BY column1, column2, ... ASC|DESC;

    --- Example
    SELECT *
    FROM players01
    ORDER By first_name DESC, rating
    ```

- ### 5.2 `UNION/ UNION ALL`
  - #### Key Rules for `UNION`
  - #### Number of Columns: `Both SELECT queries must have the same number of columns.`
  - #### Data Types: `The data types of corresponding columns in the queries must be compatible`.
  - #### Order of Rows: `The final result set is not guaranteed to be ordered unless you use an ORDER BY clause.`
  - #### Eliminates Duplicates: `By default` `UNION` removes duplicate rows. To include duplicates, use `UNION ALL`
    ```sql
    --- syntax
    --- 1.Eliminates Duplicates
    SELECT column1, column2, ...
    FROM table1
    UNION
    SELECT column1, column2, ...
    FROM table2;
    --- 2.To include duplicates
    SELECT column1, column2, ...
    FROM table1
    UNION
    SELECT column1, column2, ...
    FROM table2;
    ---1. Examples
    SELECT employees_id as union_employee
    FROM employees01
    UNION
    SELECT player_id
    FROM players01
    ---2. Examples
    SELECT employees_id as union_employee
    FROM employees01
    UNION All
    SELECT player_id
    FROM players01
    ```
- ### 5.3 GROUP BY

  - #### The `GROUP BY` clause in SQL is used to group rows that have the same values in specified columns into summary rows. It is typically used with aggregate functions (like `COUNT()`, `SUM()`, `MIN()`, `MAX()`, `AVG()`) to perform calculations on each group.

  ```sql
  ---Syntax
  SELECT column1, aggregate_function(column2) AS alias_name
  FROM table_name
  GROUP BY column1;

  --- examples
  ---example 1
  SELECT team, AVG(rating) AS min_rating
  FROM players01
  GROUP BY team
  ---example 2
  SELECT team, COUNT(*) AS T_number
  FROM players01
  GROUP BY team;
  ```

- ### 5.4 Having

  - #### The `HAVING` clause in SQL is used to filter groups created by the `GROUP BY` clause. It works like a `WHERE` clause but is applied to aggregated results (e.g., counts, averages).
  - #### Difference from `WHERE`:
    - ##### `WHERE` filters rows before grouping.
    - ##### `HAVING` filters groups after grouping.

  ```sql
  SELECT column_name(s)
  FROM table_name
  WHERE condition
  GROUP BY column_name(s)
  HAVING condition

  --Examples
  --1. Example
  SELECT player_id, rating
  FROM players01
  GROUP by player_id,rating
  HAVING rating > 90
  ORDER BY player_id DESC

  --2. Example
  SELECT COUNT (player_id) ,team
  FROM players01
  GROUP BY team
  HAVING COUNT (player_id) > 1
  ```

- ### 5.5 Wildcard

  - #### `Wildcard` characters are used with the `LIKE `operator. The `LIKE` operator is used in a `WHERE` clause to search for a specified pattern in a column.
    - ##### `%` Represents zero or more characters
    - ##### `_` Represents a single character
    - ##### `[]` Represents any single character within the brackets \*
    - ##### `^` Represents any character not in the brackets \*
    - ##### `-` Represents any single character within the specified range \*
    - ##### `}` Represents any escaped character \*\*

  ```sql
  SELECT * FROM Customers
  WHERE CustomerName LIKE 'a%';

  SELECT * FROM Customers
  WHERE CustomerName LIKE '%mer%';

  SELECT * FROM Customers
  WHERE City LIKE '_ondon';

  SELECT * FROM Customers
  WHERE CustomerName LIKE '[bsp]%';
  ```
