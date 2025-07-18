CREATE DATABASE IF NOT EXISTS company_database;
USE company_database;

-- SELECT * FROM client;
-- SELECT * FROM client WHERE client_name LIKE '%LLC';
-- SELECT * FROM branch_supplier WHERE supplier_name LIKE '%Mill';
-- SELECT * FROM branch_supplier WHERE supplier_name LIKE '% Lab%';
-- SELECT * FROM employee WHERE birth_day LIKE '____-02%';
-- SELECT * FROM employee WHERE birth_day LIKE '____-11-__';
SELECT * FROM client WHERE client_name LIKE '%school%';


-- SELECT * FROM employee;
-- SELECT CONCAT_WS('-', emp_id, first_name, last_name, birth_day, sex, salary, super_id, branch_id) FROM employee;


-- -------------------------------------------------SEARCH-1-----------------------------------------------------------
-- SELECT CONCAT_WS('-', emp_id, first_name, last_name, birth_day, sex, salary, super_id, branch_id) FROM employee 
-- WHERE CONCAT_WS('-', emp_id, first_name, last_name, birth_day, sex, salary, super_id, branch_id) LIKE '%-%-%-%-%-%-%';
-- --------------------------------------------------------------------------------------------------------------------
