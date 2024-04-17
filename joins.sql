-- CREATE TABLE employees (
--   id INT PRIMARY KEY,
--   name VARCHAR(50) NOT NULL,
--   department VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE salaries (
--   id INT PRIMARY KEY,
--   employee_id INTEGER NOT NULL,
--   salary INTEGER NOT NULL
-- );

-- INSERT INTO employees (id, name, department)
-- VALUES (1, 'John Smith', 'Sales'),
--        (2, 'Jane Doe', 'Marketing'),
--        (3, 'Bob Brown', 'Sales'),
--        (5, 'Sarah Anderson', 'Marketing');

-- INSERT INTO salaries (id, employee_id, salary)
-- VALUES (1, 1, 50000),
--        (2, 2, 60000),
--        (3, 3, 70000),
-- 	   	  (4, 4, 80000);

-- SELECT * FROM employees;
-- SELECT * FROM salaries;


----- *****INNER JOIN***** -----
-- SELECT * FROM employees AS E
-- INNER JOIN salaries AS S ON E.id = S.employee_id;

-- SELECT E.id, E.name, E.department, S.salary FROM employees AS E
-- INNER JOIN salaries AS S ON E.id = S.employee_id;

-- SELECT employees.name, salaries.salary
-- FROM employees
-- INNER JOIN salaries ON employees.id = salaries.employee_id;


----- *****LEFT OUTER JOIN***** -----
-- SELECT * FROM employees AS E
-- LEFT JOIN salaries AS S ON E.id = S.employee_id;

-- SELECT E.id, E.name, E.department, S.salary FROM employees AS E
-- LEFT JOIN salaries AS S ON E.id = S.employee_id;


----- *****RIGHT OUTER JOIN***** -----
-- SELECT * FROM employees AS E
-- RIGHT JOIN salaries AS S ON E.id = S.employee_id;

-- SELECT E.id, E.name, E.department, S.salary FROM employees AS E
-- RIGHT JOIN salaries AS S ON E.id = S.employee_id;


----- *****FULL OUTER JOIN***** -----
-- SELECT * FROM employees AS E
-- FULL OUTER JOIN salaries AS S ON E.id = S.employee_id;

-- SELECT E.id, E.name, E.department, S.salary FROM employees AS E
-- FULL OUTER JOIN salaries AS S ON E.id = S.employee_id;

----- *****CROSS JOIN***** -----
-- SELECT E.name, S.salary FROM employees AS E
-- CROSS JOIN salaries AS S














