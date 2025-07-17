-- The next line creates the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS girafales;
-- The next line selects the database
USE girafales;

-- The next lines inserts data into the table
-- INSERT INTO student(name, major) VALUES("Josicleison", "Biology");
-- INSERT INTO student(name, major) VALUES("Josicleide", "Math");
-- INSERT INTO student(name, major) VALUES("Alfredo", "English");
-- INSERT INTO student(name, major) VALUES("Jack", "Biology");
-- INSERT INTO student(name) VALUES ("Wilson");
-- INSERT INTO student(name) VALUES ("teste");

-- The next line deletes data from the table
-- DELETE FROM student WHERE id = '6'

-- The next lines modify columns of the table
-- ALTER TABLE student ADD gpa DECIMAL(3, 2);
-- ALTER TABLE student DROP COLUMN gpa;
-- ALTER TABLE student ADD CONSTRAINT UNIQUE (phone);
-- ALTER TABLE student ALTER major SET DEFAULT 'Undecided';
-- ALTER TABLE student ALTER class SET DEFAULT '0';
-- ALTER TABLE student ALTER major SET DEFAULT 'Unknown';

-- The next lines modify columns of the table using where clause to modify specific rows
-- UPDATE student SET class = 'A' WHERE phone IS NULL;
-- UPDATE student SET major = 'Undecided' WHERE major = 'undecided';
-- UPDATE student SET major = 'Bio' WHERE major = 'Biology';
-- UPDATE student SET major = 'Biology' WHERE major = 'Bio';
-- UPDATE student SET major = "Biology" WHERE name = "Josicleison";
-- UPDATE student SET major = "Math" WHERE name = "Josicleide";
-- UPDATE student SET major = "Math" WHERE name = "Wilson";
-- UPDATE student SET major = "English" WHERE name = "Alfredo";
-- UPDATE student SET major = "Biology" WHERE name = "Jack";
-- UPDATE student SET major = "Undefined" WHERE name = "Wilson";
-- UPDATE student SET major = "Unknown" WHERE major = "Undefined";
-- UPDATE student SET major = "Music" WHERE major = "Unknown";
-- UPDATE student SET major = "Unknown" WHERE id = 7;
-- UPDATE student SET major = "Biologia" WHERE major = 'Biology' OR major = 'Unknown';
-- UPDATE student SET major = "Biology" WHERE major = 'Biologia';
-- UPDATE student SET major = "Magic", name = 'Tom' WHERE id = 8;
UPDATE student SET class = 'A' WHERE class = '0';

-- The next line selects all data from the table
-- SELECT * FROM student;
-- SELECT name FROM student;
-- SELECT * FROM student ORDER BY name;
-- SELECT * FROM student ORDER BY name DESC;
-- SELECT * FROM student ORDER BY id DESC;
-- SELECT * FROM student WHERE major = 'Unknown';
-- SELECT * FROM student WHERE major = 'Unknown' OR major = 'Biology';
SELECT * FROM student WHERE major = 'Unknown' OR major = 'Biology' ORDER BY id DESC;

-- The next line shows the structure of the table
DESCRIBE student;
