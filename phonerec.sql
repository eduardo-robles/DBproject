-- Employee Phone Record Group
-- SCHEMA FOR OUR DATABASE

-- Drop Schema PhoneRecords if exists
DROP SCHEMA IF EXISTS PhoneRecords;

-- Now create the schema PhoneRecords
CREATE DATABASE PhoneRecords;
-- Now use the databse PhoneRecords
USE PhoneRecords;

-- Create table Employee
CREATE TABLE Employee (
employeeId int(11) NOT NULL AUTO_INCREMENT,
fName varchar(25) NOT NULL,
lName varchar(25) NOT NULL,
title varchar(15) NOT NULL,
email varchar(30) NOT NULL,
phone varchar(14) NOT NULL,
address varchar(30) NOT NULL,
PRIMARY KEY(employeeId)
)ENGINE=InnoDB;

-- Create table Customer
CREATE TABLE Customer (
customerId int(11) NOT NULL AUTO_INCREMENT,
Name varchar(50),
phone varchar(14) NOT NULL,
address varchar(30) NOT NULL,
PRIMARY KEY(customerId)
)ENGINE=InnoDB;

-- Create table PersonalContact
CREATE TABLE PersonalContact(
ContactId int(11) NOT NULL AUTO_INCREMENT,
fName varchar(25) NOT NULL,
lName varchar(25) NOT NULL,
phone varchar(14) NOT NULL,
PRIMARY KEY(ContactId)
)ENGINE=InnoDB;

-- Create table Division
CREATE TABLE Division(
DivisionId int(11) NOT NULL AUTO_INCREMENT,
address varchar(50) NOT NULL,
employeeId int,
PRIMARY KEY(DivisionId),
FOREIGN KEY(employeeId) REFERENCES Employee(employeeId)
)ENGINE=InnoDB;

-- *****************************************
-- Inserting data

INSERT INTO Employee (fName, lName, title, email, phone, address)
VALUES ('Grace', 'Hopper', 'General', 'gh@example.com', '956-123-4567', '123 Any Street. Somewhere, USA');

INSERT INTO Division (address)
VALUES('321 Some Street, Anywhere, USA');

-- INSERT INTO table_name (col1, col2)
-- VALUES('val1', 'val2');
