CREATE DATABASE IF NOT EXISTS company_database;
USE company_database;

-- UPDATE employee SET sex = 'M' WHERE emp_id = 106;
-- UPDATE employee SET sex = 'M' WHERE emp_id = 106 OR emp_id = 101 OR emp_id = 104 OR emp_id = 107 OR emp_id = 108;
-- UPDATE employee SET sex = 'F' WHERE emp_id = 102 OR emp_id = 103 OR emp_id = 105;

-- UPDATE employee SET branch_id = 1 WHERE emp_id = 100 OR emp_id = 101;
-- UPDATE employee SET branch_id = 2 WHERE emp_id = 102 OR emp_id = 103 OR emp_id = 104 OR emp_id = 105;
-- UPDATE employee SET branch_id = 3 WHERE emp_id = 106 OR emp_id = 107 OR emp_id = 108;

-- SELECT * FROM employee;
-- SELECT * FROM client;
-- SELECT * FROM employee ORDER BY salary DESC;
-- SELECT * FROM employee ORDER BY first_name;
-- SELECT * FROM employee ORDER BY sex, first_name, last_name;
-- SELECT * FROM employee LIMIT 5;
-- SELECT first_name, last_name FROM employee;
-- SELECT first_name AS nome, last_name AS sobrenome FROM employee;
-- SELECT DISTINCT sex FROM employee;
-- SELECT DISTINCT branch_id FROM employee;

