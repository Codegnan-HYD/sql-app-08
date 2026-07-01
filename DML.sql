# Insert records for 6 customers where 4 customers have placed orders and 2 customers have not.

INSERT INTO customers (first_name, last_name, mobile_number) VALUES ('Nikhil', 'Shetty', '9876543210'), 
('Sagar', 'Guptha', '9876543211'), 
('Varshith', 'Goud', '9876543212'), 
('Sweety', 'Reddy', '9876543213'),
('Goutham', 'Chary', '9876543214'),
('Harsha', 'Vardhan', '9876543215');

# Out of 4 customer who placed orders, 2 customers have placed multiple orders, and 2 customers have placed single order each.

INSERT INTO orders (order_date, order_amount, customer_id) VALUES
('2025-05-10', 150.00, 101),
('2026-02-15', 200.50, 101),
('2024-11-20', 99.99, 102),
('2026-01-10', 350.00, 102),
('2025-08-12', 45.00, 103),
('2026-03-01', 120.00, 104);

# Find customers who have placed orders.

SELECT 
    `c`.customer_id,
    `c`.first_name,
    `c`.last_name,
    `c`.mobile_number,
    `o`.order_id,
    `o`.order_date,
    `o`.order_amount
FROM
    customers AS `c`
        INNER JOIN
    orders AS `o` ON `c`.customer_id = `o`.customer_id
ORDER BY `c`.customer_id;

# Find customers who have placed one order.

SELECT 
    `c`.customer_id,
    `c`.first_name,
    `c`.last_name,
    COUNT(`o`.order_id) AS `No.of Orders`
FROM
    customers AS `c`
        INNER JOIN
    orders AS `o` ON `c`.customer_id = `o`.customer_id
GROUP BY `c`.customer_id , `c`.first_name , `c`.last_name
HAVING `No.of Orders` < 2
ORDER BY `c`.customer_id;

# Find customers who have placed more than one order.

SELECT 
    `c`.customer_id,
    `c`.first_name,
    `c`.last_name,
    COUNT(`o`.order_id) AS `No.of Orders`
FROM
    customers AS `c`
        INNER JOIN
    orders AS `o` ON `c`.customer_id = `o`.customer_id
GROUP BY `c`.customer_id , `c`.first_name , `c`.last_name
HAVING `No.of Orders` > 1
ORDER BY `c`.customer_id;

# Find customers without orders.

SELECT 
    `c`.customer_id,
    `c`.first_name,
    `c`.last_name,
    `o`.order_id,
    `o`.order_date,
    `o`.order_amount
FROM
    customers AS `c`
        LEFT JOIN
    orders AS `o` ON `c`.customer_id = `o`.customer_id
WHERE
    `o`.order_id IS NULL;

# Find customers including those without orders.

SELECT 
    `c`.customer_id,
    `c`.first_name,
    `c`.last_name,
    COUNT(`o`.order_id) AS `Total no.of orders`
FROM
    customers AS `c`
        LEFT JOIN
    orders AS `o` ON `c`.customer_id = `o`.customer_id
GROUP BY `c`.customer_id , `c`.first_name , `c`.last_name;

# Find customers having orders placed after 2025.

SELECT 
    `c`.customer_id,
    `c`.first_name,
    `c`.last_name,
    `o`.order_id,
    `o`.order_date,
    `o`.order_amount
FROM
    customers AS `c`
        LEFT JOIN
    orders AS `o` ON `c`.customer_id = `o`.customer_id
WHERE
    `o`.order_date >= '2026-01-01';

# Find the total order amount per customer.

SELECT 
    `c`.customer_id,
    `c`.first_name,
    `c`.last_name,
    SUM(`o`.order_amount) AS `Total Amount Spent`
FROM
    customers AS `c`
        LEFT JOIN
    orders AS `o` ON `c`.customer_id = `o`.customer_id
GROUP BY `c`.customer_id , `c`.first_name , `c`.last_name;


