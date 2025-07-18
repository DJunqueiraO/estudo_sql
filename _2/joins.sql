CREATE DATABASE IF NOT EXISTS company_database;
USE company_database;

-- INSERT INTO branch VALUES(4, 'Bovino Gadoso', NULL, NULL);
-- SELECT * FROM branch;
SELECT * FROM employee;

SELECT employee.emp_id AS mgr_id, employee.first_name, employee.last_name, branch.branch_name FROM employee JOIN branch ON employee.emp_id = branch.mgr_id;

SELECT employee.emp_id, employee.first_name, employee.last_name, branch.branch_name, branch.branch_id FROM employee LEFT JOIN branch ON employee.emp_id = branch.mgr_id;

SELECT employee.emp_id, employee.first_name, employee.last_name, branch.branch_name, branch.branch_id FROM employee RIGHT JOIN branch ON employee.emp_id = branch.mgr_id;


-- --------------JOINING-EVERYTHING--------------
SELECT *
FROM employee 
LEFT JOIN branch 
ON employee.emp_id = branch.mgr_id
LEFT JOIN client 
ON branch.branch_id = client.branch_id
LEFT JOIN works_with 
ON works_with.emp_id = employee.emp_id
LEFT JOIN branch_supplier 
ON branch_supplier.branch_id = branch.branch_id;
-- ----------------------------------------------
