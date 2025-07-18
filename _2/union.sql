CREATE DATABASE IF NOT EXISTS company_database;
USE company_database;

SELECT first_name FROM employee;
SELECT branch_name FROM branch;

SELECT first_name FROM employee UNION SELECT branch_name FROM branch;
SELECT first_name FROM employee UNION SELECT last_name FROM employee;
SELECT first_name AS all_names FROM employee UNION SELECT branch_name FROM branch UNION SELECT client_name FROM client;

SELECT client_name FROM client UNION SELECT supplier_name FROM branch_supplier;
SELECT client_name, branch_id FROM client UNION SELECT supplier_name, branch_id FROM branch_supplier;
SELECT client.client_name, client.branch_id FROM client UNION SELECT supplier_name, branch_supplier.branch_id FROM branch_supplier;

SELECT CONCAT('-', salary) AS total FROM employee UNION SELECT total_sales FROM works_with ORDER BY total DESC;

SELECT SUM(total) AS total FROM (SELECT CONCAT('-', salary) AS total FROM employee UNION SELECT total_sales FROM works_with) AS resultado;
