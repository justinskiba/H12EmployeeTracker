DROP DATABASE IF EXISTS EmployeeTracker;
CREATE DATABASE EmployeeTracker;
USE EmployeeTracker;
CREATE TABLE departments(
	id INT auto_increment PRIMARY KEY,
    name varchar(30) UNIQUE NOT NULL
    );
CREATE TABLE role(
	id INT auto_increment PRIMARY KEY,
    title varchar(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
	FOREIGN KEY (department_id) REFERENCES departments(id)
    );
CREATE TABLE employee(
	id INT auto_increment PRIMARY KEY,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    role_id INT NOT NULL,
    FOREIGN KEY (role_id) REFERENCES role(id),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employee(id)
    );
	