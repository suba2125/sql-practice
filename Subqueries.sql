-- =========================================
-- SQL SUBQUERIES
-- =========================================


-- Q1. Find employees whose salary is greater
-- than the average salary

SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


-- Q2. Find the employee with the maximum salary

SELECT name, salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);


-- Q3. Find employees who work in IT or HR departments

SELECT name, salary
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE department_name IN ('IT', 'HR')
);


-- Q4. Find employees whose salary is greater
-- than Ravi's salary

SELECT name, salary
FROM employees
WHERE salary > (
    SELECT salary
    FROM employees
    WHERE name = 'Ravi'
);


-- Q5. Find the second highest salary

SELECT MAX(salary)
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);
