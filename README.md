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
- #### SQL Select
   - ##### The `SELECT` statement is used to select data from a database. 
        ```sql
        SELECT column1, column2, ...
        FROM table_name;
        -- Expample
        SELECT player_id, first_name, last_name
        FROM players01;
        ```
    - ##### Select ALL columns
        ```sql
        -- Syntax
        SELECT * 
        FROM table_name;
        -- Exmaple 
        SELECT *
        FROM players01
        ```
- #### Select Distinct
    - ##### The `SELECT DISTINCT` statement is used to return only distinct (different) values.
        ```sql
        ---Syntax
        SELECT DISTINCT column1, column2, ...
        FROM table_name;
        --- Example
        SELECT DISTINCT player_id 
        FROM players01;
        ```


