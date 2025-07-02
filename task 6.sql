create database rahul;
use rahul;

-- 1. Drop table if it exists
DROP TABLE IF EXISTS online_sales;

-- 2. Create the online_sales table
CREATE TABLE online_sales (
    order_id INTEGER,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INTEGER
);

-- 3. Insert sample data
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1001, '2023-01-15', 150.00, 1),
(1002, '2023-01-20', 200.00, 2),
(1003, '2023-02-10', 250.00, 1),
(1004, '2023-02-11', 300.00, 3),
(1005, '2023-03-01', 180.00, 2),
(1006, '2023-03-15', 220.00, 2),
(1007, '2023-03-20', 400.00, 1),
(1008, '2023-04-05', 500.00, 3),
(1009, '2023-04-25', 700.00, 1),
(1010, '2023-05-10', 650.00, 2);

-- 4. Perform monthly sales trend analysis
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM
    online_sales
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    year, month;
