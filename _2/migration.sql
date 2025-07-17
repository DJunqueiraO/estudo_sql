CREATE DATABASE IF NOT EXISTS company_database;
USE company_database;

CREATE TABLE IF NOT EXISTS employee (
	emp_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	birth_date DATE NOT NULL,
	sex ENUM('M', 'F') NOT NULL,
	salary DECIMAL(10, 2) NOT NULL,
	super_id INT,
	branch_id INT NOT NULL
);

CREATE TABLE IF NOT EXISTS branch (
	branch_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	branch_name VARCHAR(20) NOT NULL,
	mgr_id INT NOT NULL,
	bgr_start_state DATE NOT NULL
);
-- 
CREATE TABLE IF NOT EXISTS client (
	client_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	client_name VARCHAR(20) NOT NULL,
	client_branch_id INT NOT NULL
);
-- 
CREATE TABLE IF NOT EXISTS works_with (
	emp_id INT NOT NULL,
	client_id INT NOT NULL,
	total_sales DECIMAL(10, 2) NOT NULL,
	PRIMARY KEY (emp_id, client_id)
);
-- 
CREATE TABLE IF NOT EXISTS branch_supplier (
	branch_id INT NOT NULL,
	supplier_name VARCHAR(20) NOT NULL,
	supply_type VARCHAR(20) NOT NULL,
	PRIMARY KEY (branch_id, supplier_name)
);

-- make relations of tables
-- ALTER TABLE employee ADD CONSTRAINT employee_branch_id FOREIGN KEY (branch_id) REFERENCES branch(branch_id);
-- ALTER TABLE employee ADD CONSTRAINT employee_super_id  FOREIGN KEY (super_id) REFERENCES employee(emp_id);
-- ALTER TABLE client ADD CONSTRAINT client_branch_id  FOREIGN KEY (client_branch_id) REFERENCES branch(branch_id);
-- ALTER TABLE works_with ADD CONSTRAINT works_with_emp_id  FOREIGN KEY (emp_id) REFERENCES employee(emp_id);
-- ALTER TABLE works_with ADD CONSTRAINT works_with_client_id  FOREIGN KEY (client_id) REFERENCES client(client_id);
-- ALTER TABLE branch_supplier ADD CONSTRAINT branch_supplier_id  FOREIGN KEY (branch_id) REFERENCES branch(branch_id);
-- ALTER TABLE branch ADD CONSTRAINT branch_mgr_id  FOREIGN KEY (mgr_id) REFERENCES employee(emp_id);
CALL AddForeignKeyIfNotExists('employee_branch_id', 'employee', 'branch_id', 'branch(branch_id)');
CALL AddForeignKeyIfNotExists('employee_super_id', 'employee', 'super_id', 'employee(emp_id)');
CALL AddForeignKeyIfNotExists('client_branch_id', 'client', 'client_branch_id', 'branch(branch_id)');
CALL AddForeignKeyIfNotExists('works_with_emp_id', 'works_with', 'emp_id', 'employee(emp_id)');
CALL AddForeignKeyIfNotExists('works_with_client_id', 'works_with', 'client_id', 'client(client_id)');
CALL AddForeignKeyIfNotExists('branch_supplier_id', 'branch_supplier', 'branch_id', 'branch(branch_id)');
CALL AddForeignKeyIfNotExists('branch_mgr_id', 'branch', 'mgr_id', 'employee(emp_id)');

-- DESCRIBE branch;
-- SHOW CREATE TABLE branch;
-- DESCRIBE branch_supplier;
-- SHOW CREATE TABLE branch_supplier;
-- DESCRIBE client;
-- SHOW CREATE TABLE client;
-- DESCRIBE employee;
-- SHOW CREATE TABLE employee;
-- DESCRIBE works_with;
-- SHOW CREATE TABLE works_with;

SHOW tables FROM company_database;
