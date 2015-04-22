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
INSERT INTO Customer (fname, lname, address)
VALUES ('Magaret', 'Hamilton', '123 Nasa Ln, Cape Canaveral, Florida USA');

INSERT INTO Customer (fname, lname, address)
VALUES ('Marie', 'Curie', '744 Xray Ave., Cape Canaveral, Florida USA');
 
INSERT INTO Customer (fname, lname, address)
VALUES ('Alan', 'Turing', '001 Enigma, Cape Canaveral, Florida USA');
 
INSERT INTO Customer (fname, lname, address)
VALUES ('Eric', 'Raymond', '345 Cathedral, Cape Canaveral, Florida USA');


-- INSERT TO PERSONALCONTACT
INSERT INTO PersonalContact (fName, lName)
VALUES ('Ada', 'Lovelace');
 
INSERT INTO PersonalContact (fName, lName)
VALUES ('Linus', 'Torvalds');
 
INSERT INTO PersonalContact (fName, lName)
VALUES ('Richard', 'Stallman');

INSERT INTO PersonalContact (fName, lName)
VALUES ('Donald', 'Chamberlin');

-- INSERT TO VISITS
INSERT INTO Visits (departureDate, returnDate)
VALUES ('010115', '010515');

INSERT INTO Visits (departureDate, returnDate)
VALUES ('090515', '030115');

INSERT INTO Visits (departureDate, returnDate)
VALUES ('090415', '091015');

INSERT INTO Visits (departureDate, returnDate)
VALUES ('071015', '080115');
