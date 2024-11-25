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

### 2.3 WHERE SQL

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

### 2.4 Logical Operators

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

### 2.5 Aliases

- #### SQL aliases are used to give a table, or a column in a table, a temporary name.
- #### Aliases are often used to make column names more readable.
- #### An alias only exists for the duration of that query.
- #### An alias is created with the AS keyword.

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

### 2.6 `Limitation - LIMIT` SQL

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

### 2.7 `INSERT INTO` SQL

- #### The `INSERT INTO` statement is used to insert `new records` in a table.
- #### 2.7.1 It is possible to write the INSERT INTO statement in two ways:

  ##### 2.7.1.1 Specify both the column names and the values to be inserted

  ```sql
  --- Syntax
  INSERT INTO table_name (column1, column2, column3, ...)
  VALUES (value1, value2, value3, ...);
  --- Example
  INSERT into players01 (player_id,first_name,last_name,teamshirt_number,rating)
  VALUES (10,'Md. Omar', 'Faruk', 'Tiger Team', 4, 95)'

  ```

  ##### 2.7.1.2 If you are adding values for all the columns of the table, you do not need to specify the column names in the SQL query. However, make sure the order of the values is in the same order as the columns in the table. Here, the INSERT INTO syntax would be as follows

  ```sql
  INSERT INTO table_name
  VALUES (value1, value2, value3, ...);

  --- Example
  INSERT INTO players01
  VALUES (11, 'Hossain', 'Ahmed', 'Tiger Team', 4, 85);

  ```

  #### 2.7.2 `Insert` Data Only in Specified Columns

  - ##### It is also possible to only insert data in specific columns. Below examples Due column has NULL value store
    ```sql
    --- Example
    INSERT into players01 (player_id,first_name,rating)
    VALUES (12,'Md. Omar',  95)';
    ```

  #### 2.7.3 `Insert` Multiple Rows
  - ##### It is also possible to insert multiple rows in one statement.

  ```sql
  INSERT into players01 (player_id,first_name,last_name,team,shirt_number,rating)
  VALUES
  (13,'Sajib', 'Das', 'Fox team','1',85),
  (14,'Fazlul', 'Haque', 'Fox team','1',95)
  ```
