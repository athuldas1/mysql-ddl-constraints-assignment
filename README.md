# MySQL DDL Commands & Constraints Assignment

## 📌 Project Overview

This project demonstrates the use of **MySQL DDL commands and database constraints** to create and manage an Employee Database.

The assignment covers database creation, table creation, table modification, table renaming, truncation, dropping tables/databases, and applying different constraints.

## 🛠️ Tools Used

* MySQL
* MySQL Workbench
* SQL

## 📂 Database Structure

The database is named:

`employee`

It contains three main tables:

* Departments – stores department information.
* Location – stores location information.
* Employees – stores employee information and connects with the Departments and Location tables.

## 🔹 DDL Commands Covered

The following MySQL DDL commands are demonstrated:

* `CREATE DATABASE`
* `CREATE TABLE`
* `ALTER TABLE`
* `RENAME TABLE`
* `TRUNCATE TABLE`
* `DROP TABLE`
* `DROP DATABASE`

## 🔐 Constraints Covered

The project demonstrates:

* **PRIMARY KEY** – uniquely identifies records.
* **NOT NULL** – prevents missing values.
* **UNIQUE** – prevents duplicate values.
* **CHECK** – restricts values according to a condition.
* **DEFAULT** – automatically provides a value when one is not supplied.
* **AUTO_INCREMENT** – automatically generates sequential IDs.
* **FOREIGN KEY** – establishes relationships between tables.

## 🔗 Table Relationships

```text
Departments
     │
     │ department_id
     ▼
Employees
     ▲
     │ location_id
     │
Location
```

The `Employees` table uses foreign keys to establish relationships with the `Departments` and `Location` tables.

## 📁 Repository Structure

```text
mysql-ddl-constraints-assignment/
│
├── README.md
│
├── SQL/
│   └── employee_database.sql
│
├── Documentation/
│   └── MySQL_DDL_Constraints_Documentation.docx
│
└── Screenshots/
    ├── 01_database_tables.png
    ├── 02_alter_commands.png
    ├── 03_renamed_tables.png
    ├── 04_truncate.png
    ├── 05_drop_commands.png
    ├── 06_departments_constraints.png
    ├── 07_location_constraints.png
    ├── 08_employee_constraints.png
    └── 09_test_data.png
```

## 🎯 Learning Outcomes

Through this assignment, I practiced:

* Creating and managing databases using SQL.
* Creating and modifying relational tables.
* Applying database constraints.
* Establishing relationships using foreign keys.
* Validating data using `CHECK`, `NOT NULL`, and `UNIQUE`.
* Using `AUTO_INCREMENT` for automatic ID generation.
* Testing database rules using sample data.

## 📄 Documentation

Detailed step-by-step documentation with SQL code and screenshots is available in the **Documentation** folder.

## 👨‍💻 Author

Athul Das KK

MCA Graduate | Aspiring Data Analyst

Skills: SQL | Excel | Power BI | Python | Tableau
