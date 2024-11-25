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

- ### SQL Select
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
- ### Select Distinct
  - #### The `SELECT DISTINCT` statement is used to return only distinct (different) values.
    ```sql
    ---Syntax
    SELECT DISTINCT column1, column2, ...
    FROM table_name;
    --- Example
    SELECT DISTINCT player_id
    FROM players01;
    ```

### SQL WHERE

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

### Logical Operators

- #### `And Operators`

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

- #### `OR` Opearator

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

- #### `NOT Operator`

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
