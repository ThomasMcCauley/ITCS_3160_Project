-- Owner Query
SELECT TransactionID, OrderID, EmployeeID, Transaction_Date, Amount
FROM Transaction
ORDER BY Transaction_Date DESC;

-- Employee Query
SELECT Item_ID, Item_Name, Category, Price, Supplier_ID
FROM Inventory
WHERE Supplier_ID IS NOT NULL;

-- Customer Query
SELECT ProductID, Product_Name, Product_Price, Product_Description, Product_Rating
FROM Product
WHERE Product_Price > 0
ORDER BY Product_Price ASC;

