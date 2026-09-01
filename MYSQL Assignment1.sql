create database employee;
use employee;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
select * from Departments_info;

CREATE TABLE Location (
    location_id INT,
    location_name VARCHAR(100)
);
select * from Locations;

CREATE TABLE Employees (
    employee_id INT,
    employee_name VARCHAR(100),
    age INT,
    gender CHAR(1),
    designation VARCHAR(100),
    hire_date DATE,
    department_id INT,
    location_id INT
);
select * from Employees;

alter table Employees
add email varchar(150);
alter table Employees
modify designation varchar(200);
alter table Employees
drop column age;
alter table Employees
rename column hire_date to date_of_joining;
rename table Departments to Departments_info;
rename table Location to Locations;
insert into Employees ( employee_id ,employee_name,gender,designation,date_of_joining,department_id,location_id,email)
values(1,'Athul','M','Analyst','2026-08-30','10','11','athul@gmail.com'),
(2,'Anu','M','Analyst','2026-08-31','20','12','anu@gmail.com');
truncate table Employees;
drop table Employees;
drop database employee;
DROP DATABASE IF EXISTS employee;
create database employee;
use employee;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);
select * from Departments;
CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(100) NOT NULL UNIQUE
);
select * from Location;
insert into Location(location_name)
values('Kozhikode'),('MP'),('RJ');

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    

);
select * from Employees;
INSERT INTO Employees
(employee_id,department_id,location_id, employee_name,gender,age)
VALUES
(4,4,4, 'Athul','M',25);
alter table Employees 
add column department_id int;
alter table Employees 
add column location_id int;
DESC Employees;
desc Departments;
desc Location;

ALTER TABLE Employees
ADD CONSTRAINT fk_employee_department
FOREIGN KEY (department_id)
REFERENCES Departments(department_id),

ADD CONSTRAINT fk_employee_location
FOREIGN KEY (location_id)
REFERENCES Location(location_id);


SELECT *
FROM Employees
WHERE department_id NOT IN (
    SELECT department_id
    FROM Departments
);


ALTER TABLE Employees
ADD CONSTRAINT fk_employee_department
FOREIGN KEY (department_id)
REFERENCES Departments(department_id),
ADD CONSTRAINT fk_employee_location
FOREIGN KEY (location_id)
REFERENCES Location(location_id);

