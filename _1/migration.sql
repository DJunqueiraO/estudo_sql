CREATE DATABASE IF NOT EXISTS girafales;
USE girafales;
CREATE TABLE IF NOT EXISTS student (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(20) NOT NULL,
	major VARCHAR(20) DEFAULT 'undecided',
	phone VARCHAR(20) UNIQUE,
	class VARCHAR(5)
);

DESCRIBE student;
