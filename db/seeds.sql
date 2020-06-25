USE employeeDB;

INSERT INTO department (name)
VALUES ("Management");

INSERT INTO department (name)
VALUES ("Front of House");

INSERT INTO department (name)
VALUES ("Back of House");


INSERT INTO role (title, salary, department_id)
VALUES ("Manager", 50000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Bartender", 45000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Server", 45000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Host", 30000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Chef", 60000, 3);


INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Juicy", "J", 1, 1);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Crunchy", "Black", 2, 1);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Gangsta", "Boo", 3, 2);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("DJ", "Paul", 4, 3);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Lord", "Infamous", 4, 4);