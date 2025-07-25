CREATE DATABASE IF NOT EXISTS company_database;
USE company_database;

DELIMITER $$
 
CREATE PROCEDURE AddForeignKeyIfNotExists(
    IN in_constraint_name VARCHAR(64),
    IN in_table_name VARCHAR(64),
    IN in_column_name VARCHAR(64),
    IN in_referenced_definition VARCHAR(128)  -- exemplo: "branch(branch_id)"
)
BEGIN
  DECLARE constraint_exists INT DEFAULT 0;
  DECLARE db_name VARCHAR(64);
 
  -- Pega o nome do banco atual
  SELECT DATABASE() INTO db_name;
 
  -- Verifica se a constraint jÃ¡ existe
  SELECT COUNT(*)
  INTO constraint_exists
  FROM information_schema.TABLE_CONSTRAINTS
  WHERE CONSTRAINT_NAME = in_constraint_name
    AND TABLE_NAME = in_table_name
    AND CONSTRAINT_SCHEMA = db_name;
 
  -- Se nÃ£o existe, cria a constraint dinamicamente
  IF constraint_exists = 0 THEN
    SET @sql = CONCAT(
      'ALTER TABLE ', in_table_name,
      ' ADD CONSTRAINT ', in_constraint_name,
      ' FOREIGN KEY (', in_column_name, ') REFERENCES ', in_referenced_definition
    );
    
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
  END IF;
END $$
 
DELIMITER ;
