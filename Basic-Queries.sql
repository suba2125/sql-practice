-- Create employees table

CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);


-- Q1. Display all employees

SELECT * FROM employees;


-- Q2. Display name and salary

SELECT name, salary
FROM employees;


-- Q3. Employees with salary greater than 50000

SELECT *
FROM employees
WHERE salary > 50000;


-- Q4. Employees from Chennai

SELECT *
FROM employees
WHERE city = 'Chennai';


-- Q5. Display employees by salary in descending order

SELECT *
FROM employees
ORDER BY salary DESC;


-- Q6. Display departments

SELECT department
FROM employees
GROUP BY department;


-- Q7. Count employees in each department

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;


-- Q8. Find average salary

SELECT AVG(salary) AS average_salary
FROM employees;


-- Q9. Employees with salary between 30000 and 60000

SELECT *
FROM employees
WHERE salary BETWEEN 30000 AND 60000;


-- Q10. Departments with average salary greater than 50000

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;
