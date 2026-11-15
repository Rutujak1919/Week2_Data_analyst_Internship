
USE sales_db;

-- 1. SELECT: Display all records
SELECT * FROM sales;

-- 2. WHERE: Find sales from the West region
SELECT * FROM sales
WHERE region = 'West';

-- 3. GROUP BY: Find revenue by category
SELECT category, SUM(total_price) AS total_revenue
FROM sales
GROUP BY category;

-- 4. ORDER BY: Sort sales by highest price
SELECT * FROM sales
ORDER BY total_price DESC;

-- 5. SUM: Calculate total revenue
SELECT SUM(total_price) AS total_revenue
FROM sales;

-- 6. AVG: Calculate average order value
SELECT AVG(total_price) AS average_order_value
FROM sales;

-- 7. COUNT: Count total orders
SELECT COUNT(*) AS total_orders
FROM sales;

-- 8. Find top 10 customers
SELECT customer_name,
       SUM(total_price) AS total_revenue
FROM sales
GROUP BY customer_name
ORDER BY total_revenue DESC
LIMIT 10;

-- 9. Find average order value for each customer
SELECT customer_name,
       AVG(total_price) AS average_order_value
FROM sales
GROUP BY customer_name;

-- 10. SUBQUERY: Find sales above average order value
SELECT *
FROM sales
WHERE total_price > (
    SELECT AVG(total_price)
    FROM sales
);

-- 11. CASE: Categorize sales
SELECT order_id, total_price,
CASE
    WHEN total_price >= 10000 THEN 'High'
    WHEN total_price >= 5000 THEN 'Medium'
    ELSE 'Low'
END AS sales_category
FROM sales;

-- 12. JOIN: Create a customer table from existing data
CREATE TABLE IF NOT EXISTS customers AS
SELECT DISTINCT customer_name
FROM sales;

-- Join sales and customers
SELECT sales.order_id,
       sales.customer_name,
       sales.total_price
FROM sales
INNER JOIN customers
ON sales.customer_name = customers.customer_name;
