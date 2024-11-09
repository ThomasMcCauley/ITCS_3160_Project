
-- Insert data into Owner Table
INSERT INTO Owner (First_Name, Last_Name, Salary) VALUES 
('Alex', 'Johnson', 75000.00),
('Jamie', 'Lee', 80000.00);

-- Insert data into Employee Table
INSERT INTO Employee (First_Name, Last_Name, Role, Hire_Date, Salary, OwnerID) VALUES 
('Chris', 'Evans', 'Store Manager', '2022-05-15', 55000.00, 1),
('Taylor', 'Swift', 'Cashier', '2023-03-10', 35000.00, 1),
('Jordan', 'Baker', 'Sales Associate', '2023-08-05', 32000.00, 2);

-- Insert data into Member Table
INSERT INTO Member (First_Name, Last_Name, Email, Phone_Number, Membership_Status, Join_Date) VALUES 
('Alice', 'Smith', 'alice.smith@example.com', '555-1234', 'Active', '2023-02-15'),
('Bob', 'Brown', 'bob.brown@example.com', '555-5678', 'Inactive', '2022-10-05'),
('Charlie', 'Davis', 'charlie.davis@example.com', '555-9012', 'Active', '2023-06-20');

-- Insert data into Supplier Table
INSERT INTO Supplier (Supplier_Name, Product_Price, Supplier_Inventory) VALUES 
('Game Distributors Ltd.', 50.00, 150),
('Tech Gaming Supplies', 200.00, 75);

-- Insert data into Inventory Table
INSERT INTO Inventory (Item_Name, Category, Price, Supplier_ID) VALUES 
('PlayStation 5 Console', 'Gaming Console', 499.99, 1),
('Xbox Series X Console', 'Gaming Console', 499.99, 2),
('Nintendo Switch Console', 'Gaming Console', 299.99, 1),
('Game Controller', 'Accessories', 59.99, 2),
('Gaming Headset', 'Accessories', 89.99, 1);

-- Insert data into Product Table
INSERT INTO Product (Product_Name, Product_Price, Date_Added_Inventory, Product_Description, Product_Rating, SupplierID) VALUES 
('FIFA 23', 59.99, '2023-09-20', 'Popular soccer video game', 4.8, 1),
('The Legend of Zelda: Breath of the Wild', 49.99, '2023-01-15', 'Adventure game for Nintendo Switch', 4.9, 1),
('Cyberpunk 2077', 39.99, '2023-04-10', 'Open-world action game', 3.8, 2),
('Call of Duty: Modern Warfare II', 69.99, '2023-11-12', 'First-person shooter game', 4.6, 2);

-- Insert data into CustomerOrder Table
INSERT INTO CustomerOrder (CustomerID, Order_Date, Total_Amount) VALUES 
(1, '2023-11-01', 159.97),
(2, '2023-10-15', 119.98),
(3, '2023-09-30', 249.98);

-- Insert data into SupplierOrder Table
INSERT INTO SupplierOrder (OwnerID, SupplierID, Order_Date) VALUES 
(1, 1, '2023-08-10'),
(1, 2, '2023-08-20');

-- Insert data into Transaction Table
INSERT INTO Transaction (OrderID, EmployeeID, Transaction_Date, Amount) VALUES 
(1, 1, '2023-11-01', 159.97),
(2, 2, '2023-10-15', 119.98),
(3, 3, '2023-09-30', 249.98);
