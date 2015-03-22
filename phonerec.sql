-- Employee Phone Record Group
-- SCHEMA FOR OUR DATABASE

-- Drop Schema PhoneRecords if exists
DROP SCHEMA IF EXISTS PhoneRecords;

-- Now create the schema PhoneRecords
CREATE DATABASE PhoneRecords;

-- Now use the database PhoneRecords
USE PhoneRecords;

-- Create table Employee
CREATE TABLE Employee (
employeeId int(11) NOT NULL AUTO_INCREMENT,
fName varchar(25) NOT NULL,
lName varchar(25) NOT NULL,
title varchar(15) NOT NULL,
email varchar(30) NOT NULL,
phone varchar(14) NOT NULL,
address varchar(50) NOT NULL,
DivisionId int,
customerId int,
PRIMARY KEY(employeeId)
)ENGINE=InnoDB;

-- Create table Customer
CREATE TABLE Customer (
customerId int(11) NOT NULL AUTO_INCREMENT,
Name varchar(50),
phone varchar(14) NOT NULL,
address varchar(50) NOT NULL,
employeeId int,
DivisionId int,
PRIMARY KEY(customerId)
)ENGINE=InnoDB;

-- Create table PersonalContact
CREATE TABLE PersonalContact(
ContactId int(11) NOT NULL AUTO_INCREMENT,
fName varchar(25) NOT NULL,
lName varchar(25) NOT NULL,
phone varchar(14) NOT NULL,
employeeId int,
PRIMARY KEY(ContactId)
)ENGINE=InnoDB;

-- Create table Division
CREATE TABLE Division(
DivisionId int(11) NOT NULL AUTO_INCREMENT,
address varchar(50) NOT NULL,
customerId int,
employeeId int,
PRIMARY KEY(DivisionId)
)ENGINE=InnoDB;

-- **************************************** 
-- Alter tables to add FOREIGN KEYS
-- **EXAMPLE ON HOW TO ALTER TABLE
-- ALTER TABLE tableNm
-- ADD FOREIGN KEY () REFERENCES tableNm();

-- Add Foreign keys DivisionId and customerId on Employee table
ALTER TABLE Employee
ADD FOREIGN KEY (DivisionId) REFERENCES Division(DivisionId);

ALTER TABLE Employee
ADD FOREIGN KEY (customerId) REFERENCES Customer(customerId);

-- Add Foreign keys employeeId and DivisionId on Customer table
ALTER TABLE Customer
ADD FOREIGN KEY (employeeId) REFERENCES Employee(EmployeeId);

ALTER TABLE Customer
ADD FOREIGN KEY (DivisionId) REFERENCES Division(DivisionId);

-- Add Foreign keys employeeId on PersonalContact table
ALTER TABLE PersonalContact
ADD FOREIGN KEY (employeeId) REFERENCES Employee(EmployeeId);

-- Add Foreign keys customerId and employeeId on Division table
ALTER TABLE Division
ADD FOREIGN KEY (customerId) REFERENCES Customer(customerId);

ALTER TABLE Division
ADD FOREIGN KEY (employeeId) REFERENCES Employee(EmployeeId);

-- ***********************************
-- Inserting data
-- **EXAMPLE HOW TO INSERT DATA
-- INSERT INTO table_name (col1, col2)
-- VALUES('val1', 'val2');


INSERT INTO Employee (fName, lName, title, email, phone, address)
VALUES ('Grace', 'Hopper', 'General', 'gh@example.com', '956-123-4567', '123 Any Street. Somewhere, USA');

INSERT INTO Customer (Name, phone, address)
VALUES('Magaret Hamilton', '123-456-7890', '123 Nasa Ln, Cape Canaveral, Florida USA');

INSERT INTO PersonalContact (fName, lName, phone)
VALUES('Ada', 'Lovelace', '012-345-6789');

INSERT INTO Division (address)
VALUES('321 Some Street, Anywhere, USA');
