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
DROP TABLE IF EXISTS Calls;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS PersonalContact;
DROP TABLE IF EXISTS Visits;


-- Create table Division
CREATE TABLE Division (
DivisionId INT(11) NOT NULL AUTO_INCREMENT,
address VARCHAR(50) NOT NULL,
PRIMARY KEY(DivisionId)
)ENGINE=InnoDB;

-- please note that calls to contacts can be made up of either customer or personal contact, 
-- or neither. the phase 1 portion shows this requirement and necessity for price rate.

-- Create table Calls
CREATE TABLE Calls (
callsId INT(11) NOT NULL AUTO_INCREMENT,
phoneNum INT(15) NOT NULL,
startTime TIME NOT NULL,
endTime TIME NOT NULL,
price FLOAT(11) NOT NULL,
PRIMARY KEY(callsId, phoneNum)
)ENGINE=InnoDB;

-- Create table Employee
CREATE TABLE Employee (
employeeId INT(11) NOT NULL AUTO_INCREMENT,
fname VARCHAR(25) NOT NULL,
lname VARCHAR(25) NOT NULL,
title VARCHAR(20) NOT NULL,
email VARCHAR(30) NOT NULL,
phoneNumber INT(15) NOT NULL,
address VARCHAR(50) NOT NULL,
PRIMARY KEY(employeeId)
)ENGINE=InnoDB;

-- Create table Customer
CREATE TABLE Customer (
CustomerId INT(11) NOT NULL AUTO_INCREMENT,
fname VARCHAR(25) NOT NULL,
lname VARCHAR(25) NOT NULL,
address VARCHAR(50) NOT NULL,
DivisionId INT(11),
callsId INT(11),
PRIMARY KEY(CustomerId),
FOREIGN KEY (DivisionId) REFERENCES Division(DivisionId),
FOREIGN KEY (callsId) REFERENCES Calls(callsId)
)ENGINE=InnoDB;

-- Create table PersonalContact
CREATE TABLE PersonalContact (
PersonalId INT (11) NOT NULL AUTO_INCREMENT,
fname VARCHAR(25) NOT NULL,
lname VARCHAR(25) NOT NULL,
callsId INT(11),
PRIMARY KEY(PersonalId),
FOREIGN KEY (callsId) REFERENCES Calls(callsId)
)ENGINE=InnoDB;

-- Create table Visits
CREATE TABLE Visits (
departureDate DATE NOT NULL,
returnDate  DATE NOT NULL,
employeeId INT(11),
customerId INT(11),
PRIMARY KEY(departureDate),
FOREIGN KEY (employeeId) REFERENCES Employee(employeeId),
FOREIGN KEY (customerId) REFERENCES Customer(customerId)
)ENGINE=InnoDB;


-- INSERT TO DIVISION
INSERT INTO Division (address)
VALUES ('321 Some Street, Anywhere, USA');

INSERT INTO Division (address)
VALUES ('456 Street, Anywhere, USA');

INSERT INTO Division (address)
VALUES ('684 Some Street, TEXAS, USA');

INSERT INTO Division (address)
VALUES ('321 Some Ave., Delaware, USA');

-- INSERT TO CALLS
INSERT INTO Calls (phoneNum, startTime, endTime, price)
VALUES ('956123456','900','915','5.00');

INSERT INTO Calls (phoneNum, startTime, endTime, price)
VALUES ('956123457','200','500','9.00');

INSERT INTO Calls (phoneNum, startTime, endTime, price)
VALUES ('956123458','100','216','3.00');

INSERT INTO Calls (phoneNum, startTime, endTime, price)
VALUES ('956123459','300','325','8.00');

-- INSERT TO EMPLOYEE

INSERT INTO Employee (fName, lName, title, email, phoneNumber, address)
VALUES ('Grace', 'Hopper', 'General', 'gh@example.com', '956', '123 Any Street. Somewhere, USA');

INSERT INTO Employee (fName, lName, title, email, phoneNumber, address)
VALUES ('Mary', 'Shelley', 'Head Writer', 'ms@example.com', '454', '4876 Street. Somewhere, USA');

INSERT INTO Employee (fName, lName, title, email, phoneNumber, address)
VALUES ('Jane', 'Austen', 'Senior Editor', 'ja@example.com', '556', '45465 Any Ave. Somewhere, USA');
 
INSERT INTO Employee (fName, lName, title, email, phoneNumber, address)
VALUES ('Albert', 'Einstein', 'Physicist', 'ae@example.com', '986', '367 Street Bld. Somewhere, USA');
 

-- INSERT TO CUSTOMER
INSERT INTO Customer (fname, lname, address, callsId)
VALUES ('Magaret', 'Hamilton', '123 Nasa Ln, Cape Canaveral, Florida USA', '1');

INSERT INTO Customer (fname, lname, address, callsId)
VALUES ('Marie', 'Curie', '744 Xray Ave., Cape Canaveral, Florida USA', '2');
 
INSERT INTO Customer (fname, lname, address, callsId)
VALUES ('Alan', 'Turing', '001 Enigma, Cape Canaveral, Florida USA', '3');
 
INSERT INTO Customer (fname, lname, address, callsId)
VALUES ('Eric', 'Raymond', '345 Cathedral, Cape Canaveral, Florida USA', '4');


-- INSERT TO PERSONALCONTACT
INSERT INTO PersonalContact (fName, lName, callsId)
VALUES ('Ada', 'Lovelace', '1');
 
INSERT INTO PersonalContact (fName, lName, callsId)
VALUES ('Linus', 'Torvalds', '2');
 
INSERT INTO PersonalContact (fName, lName, callsId)
VALUES ('Richard', 'Stallman', '3');

INSERT INTO PersonalContact (fName, lName, callsId)
VALUES ('Donald', 'Chamberlin', '4');

-- INSERT TO VISITS
INSERT INTO Visits (departureDate, returnDate)
VALUES ('010115', '010515');

INSERT INTO Visits (departureDate, returnDate)
VALUES ('090515', '030115');

INSERT INTO Visits (departureDate, returnDate)
VALUES ('090415', '091015');

INSERT INTO Visits (departureDate, returnDate)
VALUES ('071015', '080115');
