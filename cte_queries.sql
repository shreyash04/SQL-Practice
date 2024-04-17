-- DROP TABLE employees;

-- CREATE TABLE employees (
--    id SERIAL PRIMARY KEY,
--    name VARCHAR(255) NOT NULL,
--    salary INTEGER NOT NULL
-- );

-- INSERT INTO employees (name, salary) VALUES
--    ('John Doe', 45000),
--    ('Jane Smith', 55000),
--    ('Bob Johnson', 65000),
--    ('Alice Lee', 75000);

-- SELECT * FROM employees;

-- WITH CTE AS (
-- 	SELECT * FROM employees WHERE salary > 50000
-- )

-- SELECT * FROM CTE;

-- CREATE TABLE books (
--    id SERIAL PRIMARY KEY,
--    title VARCHAR(255) NOT NULL,
--    author VARCHAR(255) NOT NULL,
--    published_year INTEGER NOT NULL
-- );

-- INSERT INTO books (title, author, published_year) VALUES
--    ('The Catcher in the Rye', 'J.D. Salinger', 1951),
--    ('To Kill a Mockingbird', 'Harper Lee', 1960),
--    ('1984', 'George Orwell', 1949),
--    ('The Great Gatsby', 'F. Scott Fitzgerald', 1925),
--    ('The Lord of the Rings', 'J.R.R. Tolkien', 1954),
--    ('The Da Vinci Code', 'Dan Brown', 2003);

-- SELECT * FROM books;
	
-- WITH books_CTE AS (
-- 	SELECT * FROM books WHERE published_year > 2000
-- )

-- SELECT * FROM books_CTE;

-- DROP TABLE employees;

-- CREATE TABLE departments (
--    id SERIAL PRIMARY KEY,
--    name VARCHAR(255) NOT NULL
-- );

-- INSERT INTO departments (name) VALUES
--    ('Sales'),
--    ('Marketing'),
--    ('IT');

-- CREATE TABLE employees (
--    id SERIAL PRIMARY KEY,
--    name VARCHAR(255) NOT NULL,
--    department_id INTEGER NOT NULL
-- );

-- INSERT INTO employees (name, department_id) VALUES
--    ('John Doe', 1),
--    ('Jane Smith', 2),
--    ('Bob Johnson', 1),
--    ('Alice Lee', 3);

-- SELECT * FROM employees;
-- SELECT * FROM departments;

-- WITH employee_CTE AS (
--    SELECT employees.name, departments.name AS department_name
--    FROM employees
--    JOIN departments ON employees.department_id = departments.id
-- )
-- SELECT * FROM employee_CTE;

-- CREATE TABLE items (
--   id SERIAL PRIMARY KEY,
--   name VARCHAR(255) NOT NULL,
--   price INTEGER NOT NULL
-- );

-- CREATE TABLE sales (
--   id SERIAL PRIMARY KEY,
--   item_id INTEGER NOT NULL,
--   quantity INTEGER NOT NULL,
--   sale_date DATE NOT NULL
-- );

-- INSERT INTO items (name, price) VALUES
--   ('Product A', 100),
--   ('Product B', 200),
--   ('Product C', 300);

-- INSERT INTO sales (item_id, quantity, sale_date) VALUES
--   (1, 10, '2022-01-01'),
--   (2, 5, '2022-01-01'),
--   (3, 2, '2022-01-01'),
--   (1, 20, '2022-02-01'),
--   (2, 10, '2022-02-01'),
--   (3, 4, '2022-02-01'),
--   (1, 30, '2022-03-01'),
--   (2, 15, '2022-03-01'),
--   (3, 6, '2022-03-01');

-- SELECT * FROM items;
-- SELECT * FROM sales;

WITH monthly_items_sold AS (
	SELECT 
	EXTRACT('month' FROM S.sale_date) AS month_of_sale, 
	SUM(quantity) AS items_sold_in_that_month
	FROM sales S
	GROUP BY month_of_sale
	ORDER BY month_of_sale
),
monthly_revenue AS (
	SELECT EXTRACT('month' FROM S.sale_date) AS month_of_sale, 
	SUM(quantity * price) AS sale_in_that_month
	FROM sales S
	INNER JOIN items I on S.item_id = I.id
	GROUP BY month_of_sale
	ORDER BY month_of_sale
)
-- SELECT * FROM monthly_revenue;
-- SELECT * FROM monthly_items_sold;

SELECT MR.month_of_sale, sale_in_that_month, items_sold_in_that_month
FROM monthly_revenue MR
INNER JOIN monthly_items_sold MIS ON MR.month_of_sale = MIS.month_of_sale; 


