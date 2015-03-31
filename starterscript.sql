-- STARTER SCRIPT
-- SCHEMA FOR DATABASE

-- Drop Schema XYZ if exists
DROP SCHEMA IF EXISTS XYZ;

-- Now create the schema XYZ
CREATE DATABASE XYZ;

-- Now use the database XYZ
USE XYZ;

-- Create table ABC
CREATE TABLE tableNm (
att1 int(11) NOT NULL AUTO_INCREMENT,
att2 varchar(25) NOT NULL,
att4 int, -- Foreign Key
PRIMARY KEY(att1),
FOREIGN KEY (att4) REFERENCES DEF(att4)
)ENGINE=InnoDB;



-- **************************************** 
-- Alter tables to add FOREIGN KEYS
-- **EXAMPLE ON HOW TO ALTER TABLE
ALTER TABLE tableNm
ADD FOREIGN KEY () REFERENCES tableNm();

-- ***********************************
-- Inserting data
-- **EXAMPLE HOW TO INSERT DATA
INSERT INTO tableNm (col1, col2)
VALUES('val1', 'val2');
