-- Employee Phone Record Group
-- SCHEMA FOR OUR DATABASE

-- Drop Schema PhoneRecords if exists
DROP SCHEMA IF EXISTS PhoneRecords;

-- Now create the schema PhoneRecords
CREATE DATABASE PhoneRecords;

-- Now use the database PhoneRecords
USE PhoneRecords;

-- Drop tables if they exist

DROP TABLE IF EXISTS Division;
DROP TABLE IF EXISTS Contact;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS PersonalContact;
DROP TABLE IF EXISTS Calls;
DROP TABLE IF EXISTS Visits;


-- Create table Division
CREATE TABLE Division (
DivisionId INT(11) NOT NULL AUTO_INCREMENT,
address VARCHAR(50) NOT NULL,
PRIMARY KEY(DivisionId)
)ENGINE=InnoDB;

-- Create table Contact
CREATE TABLE Contact (
phoneNum INT(15) NOT NULL,
PRIMARY KEY(phoneNum)
)ENGINE=InnoDB;

-- Create table Customer
CREATE TABLE Customer (
fname VARCHAR(25) NOT NULL,
lname VARCHAR(25) NOT NULL,
address VARCHAR(50) NOT NULL,
DivisionId INT(11),
phoneNum INT(15),
PRIMARY KEY(phoneNum),
FOREIGN KEY (DivisionId) REFERENCES Division(DivisionId),
FOREIGN KEY (phoneNum) REFERENCES Contact(phoneNum)
)ENGINE=InnoDB;


-- Create table Employee
CREATE TABLE Employee (
employeeId INT(11) NOT NULL AUTO_INCREMENT,
fname VARCHAR(25) NOT NULL,
lname VARCHAR(25) NOT NULL,
title VARCHAR(20) NOT NULL,
email VARCHAR(30) NOT NULL,
phoneNum INT(15) NOT NULL,
address VARCHAR(50) NOT NULL,
DivisionId INT (11),
PRIMARY KEY(employeeId),
FOREIGN KEY (DivisionId) REFERENCES Division(DivisionId)
)ENGINE=InnoDB;


-- Create table PersonalContact
CREATE TABLE PersonalContact (
fname VARCHAR(25) NOT NULL,
lname VARCHAR(25) NOT NULL,
phoneNum INT(15),
employeeId INT(11),
PRIMARY KEY(phoneNum),
FOREIGN KEY (phoneNum) REFERENCES Contact(phoneNum),
FOREIGN KEY (employeeId) REFERENCES Employee(employeeId)
)ENGINE=InnoDB;


-- please note that calls to contacts can be made up of either customer or personal contact, 
-- or neither. the phase 1 portion shows this requirement and necessity for price rate.

-- Create table Calls
CREATE TABLE Calls (
startTime TIME NOT NULL,
endTime TIME NOT NULL,
priceRate FLOAT(11) NOT NULL,
employeeId INT(11),
phoneNum INT(15),
PRIMARY KEY(startTime, employeeId),
FOREIGN KEY (employeeId) REFERENCES Employee(employeeId),
FOREIGN KEY (phoneNum) REFERENCES Contact(phoneNum)
)ENGINE=InnoDB;

-- Create table Visits
CREATE TABLE Visits (
departureDate DATE NOT NULL,
returnDate  DATE NOT NULL,
employeeId INT(11),
customerId INT(11),
PRIMARY KEY(departureDate, employeeId),
FOREIGN KEY (employeeId) REFERENCES Employee(employeeId),
FOREIGN KEY (customerId) REFERENCES Customer(customerId)
)ENGINE=InnoDB;

