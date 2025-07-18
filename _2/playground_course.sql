CREATE DATABASE IF NOT EXISTS company_database;
USE company_database;

-- CREATE TABLE IF NOT EXISTS employee (
-- 	emp_id INT PRIMARY KEY,
-- 	first_name VARCHAR(40),
-- 	last_name VARCHAR(40),
-- 	birth_day DATE,
-- 	sex VARCHAR(1),
-- 	salary INT,
-- 	super_id INT,
-- 	branch_id INT
-- );

-- DELETE FROM employee WHERE emp_id = 1;
-- INSERT INTO employee VALUES(100, 'josicleison', 'elves', '1967-11-17', 'T', 100000, NULL, NULL)

-- UPDATE employee SET last_name = 'Josicleison' WHERE last_name = 'josicleison';
-- UPDATE employee SET last_name = 'Elves' WHERE last_name = 'elves';

-- CREATE TABLE IF NOT EXISTS branch (
-- 	branch_id INT PRIMARY KEY,
-- 	branch_name VARCHAR(40),
-- 	mgr_id INT,
-- 	mgr_start_date DATE,
-- 	CONSTRAINT branch_mgr_id FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
-- );

-- INSERT INTO branch VALUES(1, "Corporate", 100, "2006-02-09");
-- INSERT INTO branch VALUES(2, "Customer", 107, "2006-02-09");
-- INSERT INTO branch VALUES(3, "X-man", 108, "2006-02-09");
-- 
-- UPDATE branch SET mgr_id = 100 WHERE branch_id = 1; 
-- UPDATE employee SET branch_id = 1 WHERE emp_id = 100;

-- INSERT INTO employee values(107, 'Andy', 'Bernard', '1973-07-22', 'T', 2500, NULL, NULL);
-- INSERT INTO employee values(108, 'Jim', 'Halperd', '1978-10-01', 'T', 2500, NULL, NULL);

-- INSERT INTO employee values(102, 'Navalete', 'Salasco', '1928-12-15', 'T', 2500, NULL, NULL);
-- INSERT INTO employee values(103, 'Inecia', 'Silva', '1988-01-26', 'T', 2500, NULL, NULL);
-- INSERT INTO employee values(104, 'Sokomo', 'Kudemashu', '1971-08-11', 'T', 2500, NULL, NULL);
-- INSERT INTO employee values(105, 'Josicleide', 'Elves', '1990-06-21', 'T', 2500, NULL, NULL);

-- INSERT INTO employee values(101, 'Naruto', 'Uzumaki', '2000-02-15', 'T', 2500, NULL, NULL);
-- INSERT INTO employee values(106, 'Lysander', 'Spooner', '1820-01-01', 'T', 25000, NULL, NULL);

-- INSERT INTO branch_supplier values(2, 'Hammer Mill', 'Paper');
-- INSERT INTO branch_supplier values(2, 'Uni-ball', 'Writting Utensils');
-- INSERT INTO branch_supplier values(3, 'Patriot Paper', 'Paper');
-- INSERT INTO branch_supplier values(2, 'J.T. Forms & Labels', 'Custom');
-- INSERT INTO branch_supplier values(3, 'Uni-ball', 'Writting Utensils');
-- INSERT INTO branch_supplier values(3, 'Hammer Mill', 'Paper');
-- INSERT INTO branch_supplier values(3, 'Stamford Lables', 'Custom');

-- INSERT INTO client values(400, 'Dunmore Highschool', 2);
-- INSERT INTO client values(401, 'lackawana Country', 2);
-- INSERT INTO client values(402, 'FexEx', 3);
-- INSERT INTO client values(403, 'John Daily Law LLC', 3);
-- INSERT INTO client values(404, 'Scranton Whitepages', 2);
-- INSERT INTO client values(405, 'Times NewsPaper', 3);
-- INSERT INTO client values(406, 'FexEx', 2);

-- CREATE TABLE IF NOT EXISTS works_with (
-- 	emp_id INT,
-- 	client_id INT,
-- 	total_sales INT,
-- 	PRIMARY KEY(emp_id, client_id),
-- 	CONSTRAINT works_with_emp_id FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
-- 	CONSTRAINT works_with_client_id FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE
-- );

-- INSERT INTO works_with values(105, 400, 55000);
-- INSERT INTO works_with values(102, 401, 267000);
-- INSERT INTO works_with values(108, 402, 22500);
-- INSERT INTO works_with values(107, 403, 5000);
-- INSERT INTO works_with values(108, 403, 12000);
-- INSERT INTO works_with values(105, 404, 33000);
-- INSERT INTO works_with values(107, 405, 26000);
-- INSERT INTO works_with values(102, 406, 15000);
-- INSERT INTO works_with values(105, 406, 130000);

SELECT * FROM works_with;
-- SELECT * FROM branch_supplier;
-- SELECT * FROM client;
-- SELECT * FROM employee;
-- SELECT * FROM branch;
