CREATE DATABASE IF NOT EXISTS company_database;
USE company_dataabase;

-- SELECT * FROM employee;
-- SELECT COUNT(emp_id) FROM employee;
-- SELECT COUNT(super_id) FROM employee;

-- SELECT COUNT(emp_id) FROM employee WHERE sex = 'F' AND birth_day > '1970-01-01';
-- SELECT AVG(salary) FROM employee;
-- SELECT AVG(salary) FROM employee WHERE sex = 'M';
-- SELECT AVG(salary) FROM employee WHERE sex = 'F';
-- SELECT AVG(salary) FROM employee WHERE sex = 'T';
-- SELECT SUM(salary) FROM employee;
-- SELECT COUNT(sex), sex FROM employee GROUP BY sex;
-- SELECT SUM(total_sales) AS total_sale, emp_id FROM works_with GROUP BY emp_id;
SELECT SUM(total_sales) AS total_spent, client_id FROM works_with GROUP BY client_id;




