INSERT INTO Customer (First_Name, Last_Name, Mobile_Number)
VALUES
('Rahul','Sharma','9876543210'),
('Priya','Reddy','9876543211'),
('Kiran','Kumar','9876543212'),
('Sneha','Patel','9876543213');

INSERT INTO Order_Table (Order_Date, Order_Amount, Customer_ID)
VALUES
('2025-01-10',1200.00,1),
('2025-02-15',850.50,1),
('2025-03-20',1500.00,2),
('2026-01-05',2500.00,3);
 -- 1
 
SELECT DISTINCT c.Customer_ID,
       c.First_Name,
       c.Last_Name,
       c.Mobile_Number
FROM Customer c
INNER JOIN Order_Table o
ON c.Customer_ID = o.Customer_ID;
-- 2

SELECT c.Customer_ID,
       c.First_Name,
       c.Last_Name,
       COUNT(o.Order_ID) AS Total_Orders
FROM Customer c
INNER JOIN Order_Table o
ON c.Customer_ID = o.Customer_ID
GROUP BY c.Customer_ID,
         c.First_Name,
         c.Last_Name
HAVING COUNT(o.Order_ID) = 1;

-- 3
SELECT c.Customer_ID,
       c.First_Name,
       c.Last_Name,
       COUNT(o.Order_ID) AS Total_Orders
FROM Customer c
INNER JOIN Order_Table o
ON c.Customer_ID = o.Customer_ID
GROUP BY c.Customer_ID,
         c.First_Name,
         c.Last_Name
HAVING COUNT(o.Order_ID) > 1;

-- 4
SELECT c.Customer_ID,
       c.First_Name,
       c.Last_Name,
       c.Mobile_Number
FROM Customer c
LEFT JOIN Order_Table o
ON c.Customer_ID = o.Customer_ID
WHERE o.Order_ID IS NULL;
-- 5

SELECT c.Customer_ID,
       c.First_Name,
       c.Last_Name,
       o.Order_ID,
       o.Order_Date,
       o.Order_Amount
FROM Customer c
LEFT JOIN Order_Table o
ON c.Customer_ID = o.Customer_ID;
-- 6 
SELECT DISTINCT
    c.Customer_ID,
    c.First_Name,
    c.Last_Name,
    c.Mobile_Number
FROM Customer c
INNER JOIN Order_Table o
ON c.Customer_ID = o.Customer_ID
WHERE o.Order_Date >= '2025-01-01';

-- --7
SELECT
    c.Customer_ID,
    c.First_Name,
    c.Last_Name,
    SUM(o.Order_Amount) AS Total_Order_Amount
FROM Customer c
INNER JOIN Order_Table o
ON c.Customer_ID = o.Customer_ID
GROUP BY
    c.Customer_ID,
    c.First_Name,
    c.Last_Name;