USE EmployeeTracker;
INSERT INTO departments (name)
	VALUES
		("Shoes"),
        ("Gardening"),
        ("Electronics");
INSERT INTO role (title, salary, department_id)
	VALUES
		("associate", 15000, 1),
        ("supervisor", 20000, 2),
        ("manager", 30000, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
	VALUES
		("John", "Smith", 1, NULL),
        ("Jane", "Doe", 2, NULL),
        ("Mary", "Jones", 3, NULL);
        