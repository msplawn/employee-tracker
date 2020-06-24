DROP DATABASE IF EXISTS employeeDB;
CREATE DATABASE employeeDB;

USE employeeDB;

CREATE TABLE departments (
  id INT NOT NULL AUTO_INCREMENT,
  department VARCHAR(30) NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NULL,
  salary DECIMAL(10,2) NULL,
  department_id INT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NULL,
  last_name VARCHAR(30) NULL,
  role_id INT NOT NULL,
  manager_id INT NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO departments (department)
VALUES ("Manager");

INSERT INTO departments (department)
VALUES ("Bartender");

INSERT INTO departments (department)
VALUES ("Server");

INSERT INTO departments (department)
VALUES ("Host");


INSERT INTO role (title, salary, department_id)
VALUES ("Manager", 50000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Bartender", 45000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Server", 45000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Host", 30000, 4);


INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Juicy", "J", 1, 1);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Crunchy", "Black", 2, 1);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Gangsta", "Boo", 3, 2);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("DJ", "Paul", 4, 2);