CREATE DATABASE IF NOT EXISTS company_database;
USE company_database;

CREATE TABLE IF NOT EXISTS trigger_tester (
	message VARCHAR(100)
);

DELIMITER $$
CREATE TRIGGER IF NOT EXISTS example_trigger 
	BEFORE INSERT ON employee
	FOR EACH ROW BEGIN 
		INSERT INTO trigger_tester VALUES(CONCAT('added new employee named: ', NEW.first_name));
	END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER IF NOT EXISTS more_complex_trigger 
	BEFORE INSERT ON employee
	FOR EACH ROW BEGIN
		IF NEW.sex = 'M' THEN 
			INSERT INTO trigger_tester values(CONCAT('added male employee named: ', NEW.first_name));
		ELSEIF NEW.sex = 'F' THEN 
			INSERT INTO trigger_tester values(CONCAT('added female employee named: ', NEW.first_name));
		ELSE 
			INSERT INTO trigger_tester values(CONCAT('added human employee named: ', NEW.first_name));
		END IF;
	END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER IF NOT EXISTS more_complex_trigger 
	AFTER DELETE ON employee
	FOR EACH ROW BEGIN
		IF NEW.sex = 'M' THEN 
			INSERT INTO trigger_tester values(CONCAT('added male employee named: ', NEW.first_name));
		ELSEIF NEW.sex = 'F' THEN 
			INSERT INTO trigger_tester values(CONCAT('added female employee named: ', NEW.first_name));
		ELSE 
			INSERT INTO trigger_tester values(CONCAT('added human employee named: ', NEW.first_name));
		END IF;
	END$$
DELIMITER ;

-- SHOW tables FROM company_database;
SHOW triggers FROM company_database;

-- DROP TRIGGER example_trigger;

SELECT * FROM trigger_tester;

-- INSERT INTO employee VALUES(111, 'Mioja', 'Silvado', '1984-03-23', 'F', 3000, 106, 3);
