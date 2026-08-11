-- INNER JOIN

SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;


-- LEFT JOIN

SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.department_id;


-- RIGHT JOIN

SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id;

SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.department_id

UNION

SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id;


-- JOIN + WHERE

SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
WHERE departments.department_name = 'IT';


-- JOIN + GROUP BY

SELECT departments.department_name, COUNT(employees.id) AS employee_count
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY departments.department_name;

-- 7. JOIN + GROUP BY + HAVING
-- 2-vida adhigamaana employees irukkura departments

SELECT departments.department_name,
       COUNT(employees.id) AS employee_count
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY departments.department_name
HAVING COUNT(employees.id) > 2;


-- 8. MULTIPLE JOIN
-- 3 tables connect pannradhu

SELECT employees.name,
       departments.department_name,
       locations.location_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
INNER JOIN locations
ON departments.location_id = locations.location_id;


-- 9. SELF JOIN
-- Same table-ah itself-oda JOIN pannradhu

SELECT e.name AS employee,
       m.name AS manager
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.id;


-- 10. JOIN WITH MULTIPLE CONDITIONS

SELECT e.name,
       d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
AND e.status = 'Active';
