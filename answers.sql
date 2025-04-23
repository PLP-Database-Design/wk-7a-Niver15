--QUESTION 1
USE salesdb;

CREATE TABLE ProductDetail_1NF (
OrderID INT,
CustomerName VARCHAR(100),
Product VARCHAR(100)
);

--INSERTING INTO THE TABLE
INSERT INTO ProductDetail_1NF(OrderID, CustomerName, Product)
VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane S mith', 'Mouse'),
(103, 'Emily Clark', 'Phone');


--QUESTION 2
USE salesdb;

--FIRST CREATE TABLE CALLED CUSTOMER
CREATE TABLE Customer(
OrderID INT PRIMARY KEY,
CustomerName VARCHAR(100)
);

--INSERT INTO CUSTOMER
INSERT INTO Customer(OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');


--CREATE ANOTHER TABLE ORDERDETAIL
CREATE TABLE OrderDetail(
OrderID INT,
Product VARCHAR(100),
Quantity INT,
PRIMARY KEY(OrderID, Product),
FOREIGN KEY(OrderID) REFERENCES Customer(OrderID)
);

--INSERT INTO ORDERDETAIL
INSERT INTO OrderDetail(OrderID, Product, Quantity)
VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);

