-- SELECT * FROM sales

-- SELECT product, SUM(revenue) FROM sales GROUP BY product ORDER BY SUM(revenue) DESC;

-- SELECT * FROM sales WHERE product='Product A' OR revenue>=60;

-- SELECT * FROM sales WHERE sales_date BETWEEN '2021-01-04' AND '2021-01-08';

-- SELECT * FROM sales WHERE quantity BETWEEN 8 AND 15;

SELECT * FROM sales WHERE product ILIKE 'pro%';
