# SDG Assignment #7 : 03 - 01 - INSERT INTO Student (knowledge) VALUES ('SQL')

Every application uses data in some way. In many of our applications we will be
storing information in a database. In this assignment we will be practicing
using SQL databases.

## Objectives

- Create a database
- Write some queries to use the database

## Setup

1. Fork [this repository](https://github.com/suncoast-devs/sql-intro) to your
   own account.
2. Change into your project's directory.
3. Clone your repository:
   `git clone https://github.com/YOUR_NAME_HERE/sql-intro`
4. Change into your newly cloned project's directory: `cd sql-intro`
5. `code .`
6. All your SQL queries should be placed inside the `queries.sql` file.

### Explorer Mode

- [x] Create a database: `CompanyDatabase`.
- [x] Create a table: `Employees` with the following columns. Use your best judgment for data types. Copy the query you used to create this table and paste it into `queries.sql`.

  - `FullName`
  - `Salary`
  - `JobPosition`
  - `PhoneExtension`
  - `IsPartTime`

- [x] Create a few employees. Review the requirements below to see some examples of the values you may need. For instance, you may need employees of certain job positions, employees with certain names, etc. Add enough data (maybe 10 rows) such that you can validate your queries. _Copy the queries you used to create your data into `queries.sql`_
- [x] Create queries that can do the following. **Each query** should be attempted in your database. When it works, copy the query to `queries.sql`. You may optionally copy and paste the query output to your queries.sql if you wish.

  - [x] Select all columns for all employees.
  - [x] Select only the full names and phone extensions for only full-time employees.
  - [x] Insert a new part-time employee, as a software developer, with a salary of 450. Make up values for the other columns.
  - [x] Update all employees that are cooks to have a salary of 500.
  - [x] Delete all employees that have the full name of "Lazy Larry".
  - [x] Add a column to the table: `ParkingSpot` as textual information that can store _up to_ 10 characters.

### Adventure Mode

- [x] Add queries to `queries.sql` that show how to:
  - [x] Recreate your database and tables and use `NOT NULL` for columns you feel are required.
  - [x] Add a primary key named `Id` to your table.

### Epic Mode

- [ ] Add queries to `queries.sql` that show how to:
  - [ ] Create a second table: `Departments` that has these columns:
    - `Name`
    - `BuildingNumber`
  - [ ] Create a column on the `Employees` table named `DepartmentId` to relate
        to the `Departments` table. Make it a foreign key.
  - [ ] Insert employees and related departments.

## Additional Resources

- [PostgreSQL Documentation](https://www.postgresql.org/docs/)


# SDG Assignment #8 : 03 - 02 - Foreign Keys - The SQL

As we continue to explore databases and ideas, this project will help you
practice model databases and relationships.

We will be expanding on our `CompanyDatabase` from the `INSERT INTO Student (knowledge) VALUES ('SQL')` assignment. You will be adding new tables and be writing queries for these new tables.

Reuse the same repository from that assignment for this assignment. Add the new queries _below_ the queries from that assignment such that the one repository will have both sets of queries. Use the same repository URL to turn in tonight's homework.

## Objectives

- Work with foreign keys
- Craft queries that join tables

### Explorer Mode

- [x] In your `CompanyDatabase`, add a table named `Departments` with the following columns:
  - `Id` as a primary key
  - `DepartmentName` as text
  - `Building` as text
- [x] Add a Foreign key `DepartmentId` to your `Employees` Table. If you have trouble, remove the existing employees by running `truncate table "Employees"`.
- [x] Add tables named `Products` and `Orders`.
  - `Orders` should have the columns
    - `Id` as a primary key
    - `OrderNumber` as a string
    - `DatePlaced` as a datetime
    - `Email` as a string
  - `Products` should have the columns
    - `Price` as a double
    - `Name` as a string
    - `Description` as a string
    - `QuantityInStock` as an integer
- [x] In our company, one `Order` can have many `Products` and one `Product` can have many `Orders`. This will be a Many-to-Many relationship. Create the necessary table `ProductOrders`, foreign keys, and the `OrderQuantity`field needed for this to happen.

* [x] Create queries that can do the following:

  - [x] Insert the following `Departments`

  | Department Name | Building |
  | --------------- | -------- |
  | Development     | Main     |
  | Marketing       | North    |

  - [x] Insert the following `Employees`

  | FullName       | Salary | JobPosition | PhoneExtension | IsPartTime | Department Id |
  | -------------- | ------ | ----------- | -------------- | ---------- | ------------- |
  | Tim Smith      | 40000  | Programmer  | 123            | false      | 1             |
  | Barbara Ramsey | 80000  | Manager     | 234            | false      | 1             |
  | Tom Jones      | 32000  | Admin       | 456            | true       | 2             |

- [x] Insert the following `Products`

  | Price | Name    | Description          | QuantityInStock |
  | ----- | ------- | -------------------- | --------------- |
  | 12.45 | Widget  | The Original Widget  | 100             |
  | 99.99 | Flowbee | Perfect for haircuts | 3               |

* [x] Insert a new order with order number `X529`, placed on Jan 1st, 2020 at 4:55PM, by someone with the email address "person@example.com"
* [x] Add an order quantity of `3` for the product named `Widget` to the order `X529`
* [x] Add an order quantity of `2` for the product named `Flowbee` to the order `X529`
* [x] Given a department id, return all employees in the department.
* [x] Given a department name, return all the phone extensions.
* [x] Find all orders that contain the product id of `2`.
* [x] Remove the `Flowbee` product from order with order number `X529`.

### Adventure Mode

### Epic Mode

- [ ] Give these [SQL Koans](https://sqlkoans.com/) a try.

## Additional Resources

- [PostgreSQL Documentation](https://www.postgresql.org/docs/)

