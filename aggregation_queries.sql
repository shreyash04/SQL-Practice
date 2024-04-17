-- CREATE TABLE customer_orders (
-- order_id INT PRIMARY KEY,
-- customer_name VARCHAR(50),
-- order_date DATE,
-- order_amount DECIMAL(10,2)
-- );

-- INSERT INTO customer_orders (order_id, customer_name, order_date, order_amount)
-- VALUES
-- (1, 'John', '2021-01-01', 100),
-- (2, 'Jane', '2021-01-02', 200),
-- (3, 'John', '2021-01-03', 50),
-- (4, 'Jane', '2021-01-04', 300),
-- (5, 'John', '2021-01-05', 150);

-- SELECT * FROM customer_orders;

-- SELECT * FROM customer_orders ORDER BY order_amount ASC;
-- SELECT * FROM customer_orders ORDER BY order_date DESC;


-- SELECT customer_name, COUNT(order_amount) AS no_of_orders, SUM(order_amount) 
-- FROM customer_orders 
-- GROUP BY customer_name 
-- HAVING COUNT(order_amount)>2 OR SUM(order_amount)>300
-- ORDER BY SUM(order_amount) DESC;

--------------------

-- CREATE TABLE sales (
--     id SERIAL PRIMARY KEY,
--     product_name VARCHAR(50),
--     sales_date DATE,
--     sales_amount NUMERIC(10,2)
-- );

-- INSERT INTO sales (product_name, sales_date, sales_amount)
-- VALUES
--     ('Product A', '2022-01-01', 100.50),
--     ('Product B', '2022-01-01', 150.25),
--     ('Product C', '2022-01-02', 75.00),
--     ('Product A', '2022-01-02', 50.75),
--     ('Product B', '2022-01-03', 200.00),
--     ('Product C', '2022-01-03', 125.50);

-- SELECT * FROM sales;
-- SELECT COUNT(*) FROM sales;



-- SELECT product_name, COUNT(*), SUM(sales_amount) 
-- FROM sales
-- GROUP BY product_name
-- ORDER BY product_name;























