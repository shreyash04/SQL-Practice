------ Practice: 10 SQL Interview Questions for Data Engineers -----
------ Course: SQL for Data Engineering by Darshil Parmar -----

------ Question 1 -----
-- Assume there are two tables, orders and order_details. 
-- Write an SQL query to retrieve all orders along with their corresponding order details 
-- where the total price of the order is greater than 100.

-- DROP TABLE orders;
-- DROP TABLE order_details;

-- CREATE TABLE orders (
--     order_id INT PRIMARY KEY,
--     customer_id INT,
--     order_date DATE
-- );

-- CREATE TABLE order_details (
--     detail_id INT PRIMARY KEY,
--     order_id INT,
--     product_id INT,
--     quantity INT,
--     price DECIMAL(10, 2)
-- );

-- INSERT INTO orders (order_id, customer_id, order_date) VALUES
--     (1, 1, '2021-01-01'),
--     (2, 2, '2021-01-02'),
--     (3, 1, '2021-01-03'),
--     (4, 3, '2021-01-04');

-- INSERT INTO order_details (detail_id, order_id, product_id, quantity, price) VALUES
--     (1, 1, 1, 2, 50),
--     (2, 1, 2, 1, 30),
--     (3, 2, 3, 3, 20),
--     (4, 3, 1, 3, 40),
--     (5, 4, 2, 2, 25),
--     (6, 4, 3, 1, 15);

-- SELECT * FROM orders;
-- SELECT * FROM order_details;

-- SELECT O.order_id, product_id, quantity, price, (quantity * price) as total_amount
-- FROM orders O
-- INNER JOIN order_details OD ON O.order_id = OD.order_id
-- WHERE (quantity * price) > 100;

------ Question 2 -----
-- Assume there are two tables, employees and departments. 
-- Write an SQL query to retrieve all employees along with their corresponding department name.

-- DROP TABLE departments;
-- DROP TABLE employees;

-- CREATE TABLE departments (
--     dept_id INT PRIMARY KEY,
--     dept_name VARCHAR(50)
-- );

-- CREATE TABLE employees (
--     emp_id INT PRIMARY KEY,
--     emp_name VARCHAR(50),
--     dept_id INT,
--     hire_date DATE,
--     salary DECIMAL(10, 2)
-- );

-- INSERT INTO departments (dept_id, dept_name) VALUES
--     (1, 'IT'),
--     (2, 'Finance'),
--     (3, 'HR');

-- INSERT INTO employees (emp_id, emp_name, dept_id, hire_date, salary) VALUES
--     (1, 'John', 1, '2020-01-01', 50000),
--     (2, 'Jane', 2, '2020-02-01', 60000),
--     (3, 'Mark', 1, '2020-03-01', 55000),
--     (4, 'Mike', 3, '2020-04-01', 65000);

-- SELECT * FROM departments;
-- SELECT * FROM employees;

-- SELECT emp_name, dept_name
-- FROM employees E
-- INNER JOIN departments D ON E.dept_id = D.dept_id;

------ Question 3 -----
-- Assume there is a table sales with columns product_id, sale_date, and amount. 
-- Write an SQL query to retrieve the total sales amount for each product for the month of January 2021.

-- DROP TABLE sales;

-- CREATE TABLE sales (
--     sale_id INT PRIMARY KEY,
--     product_id INT,
--     sale_date DATE,
--     amount DECIMAL(10, 2)
-- );

-- INSERT INTO sales (sale_id, product_id, sale_date, amount) VALUES
--     (1, 1, '2021-01-01', 100),
--     (2, 2, '2021-01-02', 200),
--     (3, 1, '2021-01-03', 150),
--     (4, 3, '2021-01-04', 300),
--     (5, 2, '2021-02-01', 250),
--     (6, 3, '2021-02-02', 350);

-- SELECT * FROM sales;

-- Solution 1 (incorrect if database has multiple years) --
-- SELECT product_id, SUM(amount)
-- FROM sales
-- WHERE EXTRACT(MONTH FROM sale_date) = 1
-- GROUP BY product_id
-- ORDER BY product_id;

-- Solution 2 --
-- SELECT product_id, SUM(amount) as total_sales
-- FROM sales
-- WHERE sale_date >= '2021-01-01' AND sale_date <= '2021-01-31'
-- GROUP BY product_id;

------ Question 4 -----
-- Assume there is a table logins with columns user_id and login_time. 
-- Write an SQL query to retrieve the number of logins for each user for the month of January 2021.

-- DROP TABLE logins;

-- CREATE TABLE logins (
--     login_id INT PRIMARY KEY,
--     user_id INT,
--     login_time TIMESTAMP
-- );

-- INSERT INTO logins (login_id, user_id, login_time) VALUES
--     (1, 1, '2021-01-01 12:00:00'),
--     (2, 2, '2021-01-01 13:00:00'),
--     (3, 1, '2021-01-02 10:00:00'),
--     (4, 3, '2021-01-02 11:00:00'),
--     (5, 2, '2021-02-01 12:00:00'),
--     (6, 3, '2021-02-01 13:00:00');

-- SELECT * FROM logins;

-- SELECT user_id, COUNT(login_time)
-- FROM logins
-- WHERE login_time >= '2021-01-01' AND login_time <= '2021-01-31'
-- GROUP BY user_id 
-- ORDER BY user_id;

------ Question 5 -----
-- Assume there are two tables, customers and orders. 
-- Write an SQL query to retrieve all customers who have placed at least one order.

-- DROP TABLE customers;
-- DROP TABLE orders;

-- CREATE TABLE customers (
--     customer_id INT PRIMARY KEY,
--     customer_name VARCHAR(50),
--     address VARCHAR(100)
-- );

-- CREATE TABLE orders (
--     order_id INT PRIMARY KEY,
--     customer_id INT,
--     order_date DATE
-- );

-- INSERT INTO customers (customer_id, customer_name, address) VALUES
--     (1, 'John', '123 Main St'),
--     (2, 'Jane', '456 Oak Ave'),
--     (3, 'Mark', '789 Elm St');

-- INSERT INTO orders (order_id, customer_id, order_date) VALUES
--     (1, 1, '2021-01-01'),
--     (2, 2, '2021-01-02'),
--     (3, 1, '2021-01-03'),
--     (4, 3, '2021-01-04');

-- SELECT * FROM customers;
-- SELECT * FROM orders;

-- SELECT DISTINCT(C.customer_id), customer_name
-- FROM customers C
-- INNER JOIN orders O ON C.customer_id = O.customer_id
-- ORDER BY C.customer_id;

------ Question 6 -----
-- Assume there is a table transactions with columns transaction_id, user_id, and amount. 
-- Write an SQL query to retrieve the average transaction amount for each user.

-- DROP TABLE transactions;

-- CREATE TABLE transactions (
--     transaction_id INT PRIMARY KEY,
--     user_id INT,
--     amount DECIMAL(10, 2)
-- );

-- INSERT INTO transactions (transaction_id, user_id, amount) VALUES
--     (1, 1, 50),
--     (2, 2, 100),
--     (3, 1, 75),
--     (4, 3, 200),
--     (5, 2, 125),
--     (6, 3, 150);

-- SELECT * FROM transactions;

-- SELECT user_id, AVG(amount)
-- FROM transactions
-- GROUP BY user_id
-- ORDER BY user_id;

------ Question 7 -----
-- Assume there is a table products with columns product_id and price. 
-- Write an SQL query to retrieve the top 3 most expensive products.

-- DROP TABLE products;

-- CREATE TABLE products (
--     product_id INT PRIMARY KEY,
--     price DECIMAL(10, 2)
-- );

-- INSERT INTO products (product_id, price) VALUES
--     (1, 100),
--     (2, 200),
--     (3, 150),
--     (4, 300),
--     (5, 250);

-- SELECT * FROM products;
-- SELECT product_id, price
-- FROM products
-- ORDER BY price DESC
-- LIMIT 3;

------ Question 8 -----
-- Assume there are two tables, students and grades. 
-- Write an SQL query to retrieve the average grade for each student.

-- DROP TABLE students;
-- DROP TABLE grades;

-- CREATE TABLE students (
--     student_id INT PRIMARY KEY,
--     student_name VARCHAR(50),
--     address VARCHAR(100)
-- );

-- CREATE TABLE grades (
--     grade_id INT PRIMARY KEY,
--     student_id INT,
--     course_name VARCHAR(50),
--     grade DECIMAL(10, 2)
-- );

-- INSERT INTO students (student_id, student_name, address) VALUES
--     (1, 'John', '123 Main St'),
--     (2, 'Jane', '456 Oak Ave'),
--     (3, 'Mark', '789 Elm St');

-- INSERT INTO grades (grade_id, student_id, course_name, grade) VALUES
--     (1, 1, 'Math', 90),
--     (2, 2, 'Math', 95),
--     (3, 1, 'Science', 80),
--     (4, 3, 'Math', 85),
--     (5, 2, 'Science', 92),
--     (6, 3, 'Science', 88);
	
-- SELECT * FROM students;
-- SELECT * FROM grades;

-- SELECT  S.student_id, student_name, AVG(grade)
-- FROM students S
-- INNER JOIN grades G ON S.student_id = G.student_id
-- GROUP BY S.student_id
-- ORDER BY S.student_id;

------ Question 9 -----
-- Assume there are two tables, employees and salaries. 
-- Write an SQL query to retrieve all employees along with their corresponding salary.

-- DROP TABLE employees;
-- DROP TABLE salaries;

-- CREATE TABLE employees (
--     emp_id INT PRIMARY KEY,
--     emp_name VARCHAR(50),
--     hire_date DATE
-- );

-- CREATE TABLE salaries (
--     salary_id INT PRIMARY KEY,
--     emp_id INT,
--     salary DECIMAL(10, 2),
--     start_date DATE,
--     end_date DATE
-- );

-- INSERT INTO employees (emp_id, emp_name, hire_date) VALUES
--     (1, 'John', '2020-01-01'),
--     (2, 'Jane', '2020-02-01'),
--     (3, 'Mark', '2020-03-01'),
--     (4, 'Mike', '2020-04-01');

-- INSERT INTO salaries (salary_id, emp_id, salary, start_date, end_date) VALUES
--     (1, 1, 50000, '2020-01-01', '2020-12-31'),
--     (2, 2, 60000, '2020-01-01', '2020-12-31'),
--     (3, 1, 55000, '2021-01-01', '2021-12-31'),
--     (4, 3, 65000, '2021-01-01', '2021-12-31'),
--     (5, 2, 70000, '2021-01-01', '2021-12-31'),
--     (6, 4, 75000, '2021-01-01', '2021-12-31');

-- SELECT * FROM employees;
-- SELECT * FROM salaries;

-- Make sure to SELECT 'emp_id' from the correct table -- 
-- SELECT E.emp_id, emp_name, AVG(salary)
-- FROM employees E
-- INNER JOIN salaries S ON E.emp_id = S.emp_id
-- GROUP BY E.emp_id
-- ORDER BY E.emp_id;

------ Question 10 -----
-- Assume there is a table orders with columns order_id, order_date, and total_price. 
-- Write an SQL query to retrieve the total sales for each month.

-- DROP TABLE orders;

-- CREATE TABLE orders (
--     order_id INT PRIMARY KEY,
--     order_date DATE,
--     total_price DECIMAL(10, 2)
-- );

-- INSERT INTO orders (order_id, order_date, total_price) VALUES
--     (1, '2021-01-01', 100),
--     (2, '2021-01-02', 200),
--     (3, '2021-02-01', 150),
--     (4, '2021-02-02', 300),
--     (5, '2021-03-01', 250),
--     (6, '2021-03-02', 350);

-- SELECT * FROM orders;

-- SELECT EXTRACT(MONTH FROM order_date) AS sale_month, SUM(total_price) AS sale_per_month
-- FROM orders
-- GROUP BY EXTRACT(MONTH FROM order_date)
-- ORDER BY EXTRACT(MONTH FROM order_date);
