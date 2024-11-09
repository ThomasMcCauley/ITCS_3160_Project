-- CREATE DATABASE mydatabase;

USE mydatabase;

-- Owner Table
CREATE TABLE Owner (
    OwnerID INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- Employee Table
CREATE TABLE Employee (
    Employee_ID INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Role VARCHAR(50),
    Hire_Date DATE,
    Salary DECIMAL(10, 2),
    OwnerID INT,
    FOREIGN KEY (OwnerID) REFERENCES Owner(OwnerID)
);

-- Member Table
CREATE TABLE Member (
    Member_ID INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    Phone_Number VARCHAR(15),
    Membership_Status VARCHAR(50),
    Join_Date DATE
);

-- Supplier Table
CREATE TABLE Supplier (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    Supplier_Name VARCHAR(100),
    Product_Price DECIMAL(10, 2),
    Supplier_Inventory INT
);

-- Inventory Table
CREATE TABLE Inventory (
    Item_ID INT AUTO_INCREMENT PRIMARY KEY,
    Item_Name VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    Supplier_ID INT,
    FOREIGN KEY (Supplier_ID) REFERENCES Supplier(SupplierID)
);

-- Product Table
CREATE TABLE Product (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Product_Price DECIMAL(10, 2),
    Date_Added_Inventory DATE,
    Product_Description TEXT,
    Product_Rating DECIMAL(3, 2),
    SupplierID INT,
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);

-- CustomerOrder Table
CREATE TABLE CustomerOrder (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    Order_Date DATE,
    Total_Amount DECIMAL(10, 2)
);

-- PurchaseOrder Table
CREATE TABLE PurchaseOrder (
    PurchaseOrderID INT AUTO_INCREMENT PRIMARY KEY,
    OwnerID INT,
    SupplierID INT,
    Order_Date DATE,
    -- other attributes as needed
    FOREIGN KEY (OwnerID) REFERENCES Owner(OwnerID),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);

-- Transaction Table
CREATE TABLE Transaction (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    EmployeeID INT,
    Transaction_Date DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES CustomerOrder(OrderID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(Employee_ID)
);
