create database Inventory;

use Inventory;

SELECT * FROM USER;

SELECT * FROM USER LIMIT 10;

SELECT Product, Category, Quantity
FROM USER;

SELECT *
FROM USER
WHERE Quantity > 50;	

SELECT *
FROM USER
ORDER BY Sales_Value_INR DESC;


SELECT DISTINCT Category
FROM USER;


SELECT *
FROM USER
LIMIT 5;


SELECT SUM(Sales_Value_INR) AS Total_Sales
FROM USER;


SELECT AVG(Sales_Value_INR) AS Average_Sales
FROM USER;


SELECT MAX(Sales_Value_INR) AS Highest_Sales
FROM USER;
    
    
SELECT SUM(Inventory_Value) AS Total_Inventory_Value
FROM USER;


SELECT
    Category,
    SUM(Sales_Value_INR) AS Total_Sales
FROM USER
GROUP BY Category
ORDER BY Total_Sales DESC;


SELECT
    Warehouse,
    SUM(Quantity) AS Total_Quantity
FROM USER
GROUP BY Warehouse;


SELECT
    Supplier,
    SUM(Purchase_Value_INR) AS Total_Purchase
FROM USER
GROUP BY Supplier
ORDER BY Total_Purchase DESC;


SELECT
    Stock_Status,
    COUNT(*) AS Total_Products
FROM USER
GROUP BY Stock_Status;


SELECT
    Product,
    SUM(Sales_Value_INR) AS Total_Sales
FROM USER
GROUP BY Product
ORDER BY Total_Sales DESC;

SELECT
    Product,
    SUM(Sales_Value_INR) AS Total_Sales
FROM USER
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 10;


SELECT
    Product,
    Quantity,
    Reorder_Level,
    Reorder_QTY
FROM USER
WHERE Quantity <= Reorder_Level
ORDER BY Reorder_QTY DESC;


SELECT
    DATE_FORMAT(Date, '%Y-%m') AS Month,
    SUM(Sales_Value_INR) AS Monthly_Sales
FROM USER
GROUP BY DATE_FORMAT(Date, '%Y-%m')
ORDER BY Month;



SELECT
    Category,
    SUM(Inventory_Value) AS Total_Inventory
FROM USER
GROUP BY Category
ORDER BY Total_Inventory DESC
LIMIT 1;



SELECT
    Product,
    SUM(Sales_Value_INR) AS Total_Sales,
    RANK() OVER (
        ORDER BY SUM(Sales_Value_INR) DESC
    ) AS Sales_Rank
FROM USER
GROUP BY Product;


SELECT
    Product,
    Quantity,
    Reorder_Level,
    CASE
        WHEN Quantity = 0 THEN 'Urgent'
        WHEN Quantity <= Reorder_Level THEN 'Low Stock'
        ELSE 'Sufficient Stock'
    END AS Reorder_Priority
FROM USER;
