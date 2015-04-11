-- Employee Phone Record Group
-- SCHEMA FOR OUR DATABASE

-- Drop Schema PhoneRecords if exists
DROP SCHEMA IF EXISTS PhoneRecords;

-- Now create the schema PhoneRecords
CREATE DATABASE PhoneRecords;

-- Now use the database PhoneRecords
USE PhoneRecords;

-- Create table Division
CREATE TABLE Division (
DivisionId INT(11) NOT NULL AUTO_INCREMENT,
address VARCHAR(50) NOT NULL,
PRIMARY KEY(DivisionId)
)ENGINE=InnoDB;

-- Create table Contact
CREATE TABLE Contact (
ContactId INT(11) NOT NULL AUTO_INCREMENT,
phoneNum INT(15) NOT NULL,
PRIMARY KEY(ContactId)
)ENGINE=InnoDB;

-- Create table Employee
CREATE TABLE Employee (
employeeId INT(11) NOT NULL,
fname VARCHAR(25) NOT NULL,
lname VARCHAR(25) NOT NULL,
title VARCHAR(25) NOT NULL,
email VARCHAR(30) NOT NULL,
phoneNum INT(15) NOT NULL,
address VARCHAR(50) NOT NULL,
DivisionId INT(11),
PRIMARY KEY(DivisionId),
FOREIGN KEY (DivisionId) REFERENCES Division(DivisionId)
ON UPDATE CASCADE
)ENGINE=InnoDB;

-- Create table Customer
CREATE TABLE Customer (
CustomerId INT(11) NOT NULL,
fname VARCHAR(25) NOT NULL,
lname VARCHAR(25) NOT NULL,
address VARCHAR(50) NOT NULL,
DivisionId INT(11),
ContactId INT(11),
phoneNum INT(15),
PRIMARY KEY(DivisionId)
-- FOREIGN KEY (DivisionId) REFERENCES Division(DivisionId)
ON UPDATE CASCADE
)ENGINE=InnoDB;


-- Create table PersonalContact
CREATE TABLE PersonalContact (
fname VARCHAR(25) NOT NULL,
lname VARCHAR(25) NOT NULL,
ContactId INT(11),
ContactId INT(11),
phoneNum INT(15),
PRIMARY KEY(ContactId)
-- FOREIGN KEY (ContactId) REFERENCES Contact(ContactId)
ON UPDATE CASCADE
)ENGINE=InnoDB;

-- Create table Calls
CREATE TABLE Calls (
startTime INT(5) NOT NULL,
endTime INT(5) NOT NULL,
priceRate INT(7) NOT NULL
)ENGINE=InnoDB;

-- Create table Visits
CREATE TABLE Visits (
departureDate INT(10) NOT NULL,
returnDate  INT(10) NOT NULL
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

-- INSERT TO CONTACT
INSERT INTO Contact (phoneNum)
VALUES ('433');

INSERT INTO Contact (phoneNum)
VALUES ('654');

INSERT INTO Contact (phoneNum)
VALUES ('754');

INSERT INTO Contact (phoneNum)
VALUES ('456');

-- INSERT TO EMPLOYEE

INSERT INTO Employee (employeeId, fName, lName, title, email, phoneNum, address, DivisionId)
VALUES ('1', 'Grace', 'Hopper', 'General', 'gh@example.com', '956', '123 Any Street. Somewhere, USA', '1');

INSERT INTO Employee (employeeId, fName, lName, title, email, phoneNum, address, DivisionId)
VALUES ('2', 'Mary', 'Shelley', 'Head Writer', 'ms@example.com', '454', '4876 Street. Somewhere, USA', '2');

INSERT INTO Employee (employeeId, fName, lName, title, email, phoneNum, address, DivisionId)
VALUES ('3', 'Jane', 'Austen', 'Senior Editor', 'ja@example.com', '556', '45465 Any Ave. Somewhere, USA', '3');
 
INSERT INTO Employee (employeeId, fName, lName, title, email, phoneNum, address, DivisionId)
VALUES ('4', 'Albert', 'Einstein', 'Physicist', 'ae@example.com', '986', '367 Street Bld. Somewhere, USA', '4');
 

-- INSERT TO CUSTOMER
INSERT INTO Customer (CustomerId, fname, lname, address, DivisionId)
VALUES ('1', 'Magaret', 'Hamilton', '123 Nasa Ln, Cape Canaveral, Florida USA', '1');

INSERT INTO Customer (CustomerId, fname, lname, address, DivisionId)
VALUES ('2', 'Marie', 'Curie', '744 Xray Ave., Cape Canaveral, Florida USA', '2');
 
INSERT INTO Customer (CustomerId, fname, lname, address, DivisionId)
VALUES ('3', 'Alan', 'Turing', '001 Enigma, Cape Canaveral, Florida USA', '3');
 
INSERT INTO Customer (CustomerId, fname, lname, address, DivisionId)
VALUES ('4', 'Eric', 'Raymond', '345 Cathedral, Cape Canaveral, Florida USA', '4');


-- INSERT TO PERSONALCONTACT
INSERT INTO PersonalContact (fName, lName, ContactId)
VALUES ('Ada', 'Lovelace', '1');
 
INSERT INTO PersonalContact (fName, lName, ContactId)
VALUES ('Linus', 'Torvalds', '2');
 
INSERT INTO PersonalContact (fName, lName, ContactId)
VALUES ('Richard', 'Stallman', '3');

INSERT INTO PersonalContact (fName, lName, ContactId)
VALUES ('Donald', 'Chamberlin', '4');

-- INSERT TO CALLS
INSERT INTO Calls (startTime, endTime, priceRate)
VALUES ('900','915','5.00');

INSERT INTO Calls (startTime, endTime, priceRate)
VALUES ('200','500','9.00');

INSERT INTO Calls (startTime, endTime, priceRate)
VALUES ('100','216','3.00');

INSERT INTO Calls (startTime, endTime, priceRate)
VALUES ('300','325','8.00');


-- INSERT TO VISITS
INSERT INTO Visits (departureDate, returnDate)
VALUES ('010115', '010515');

INSERT INTO Visits (departureDate, returnDate)
VALUES ('022815', '030115');

INSERT INTO Visits (departureDate, returnDate)
VALUES ('090415', '091015');

INSERT INTO Visits (departureDate, returnDate)
VALUES ('071015', '080115');
