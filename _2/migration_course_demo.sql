CREATE DATABASE IF NOT EXISTS company_database;
USE company_database;

-- DROP DATABASE company_database;

CREATE TABLE IF NOT EXISTS employee (
	emp_id INT PRIMARY KEY,
	first_name VARCHAR(40),
	last_name VARCHAR(40),
	birth_day DATE,
	sex VARCHAR(1),
	salary INT,
	super_id INT,
	branch_id INT
);

CREATE TABLE IF NOT EXISTS branch (
	branch_id INT PRIMARY KEY,
	branch_name VARCHAR(40),
	mgr_id INT,
	mgr_start_date DATE,
	CONSTRAINT branch_mgr_id FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

-- ALTER TABLE employee ADD CONSTRAINT employee_branch_id FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL;
-- ALTER TABLE employee ADD CONSTRAINT employee_super_id FOREIGN KEY(super_id) REFERENCES employee(emp_id) ON DELETE SET NULL;

CREATE TABLE IF NOT EXISTS client (
	client_id INT PRIMARY KEY,
	client_name VARCHAR(40),
	branch_id INT,
	CONSTRAINT client_branch_id FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS works_with (
	emp_id INT,
	client_id INT,
	total_sales INT,
	PRIMARY KEY(emp_id, client_id),
	CONSTRAINT works_with_emp_id FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
	CONSTRAINT works_with_client_id FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS branch_supplier (
	branch_id INT,
	supplier_name VARCHAR(40),
	supply_type VARCHAR(40),
	PRIMARY KEY(branch_id, supplier_name),
	CONSTRAINT branch_supplier_branch_id FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE 
);

-- DESCRIBE branch;
-- SHOW CREATE TABLE branch;
SHOW tables FROM company_database;
