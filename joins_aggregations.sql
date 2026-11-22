-- Part A — JOIN Exercises--
-- Exercise 1: Employees and Department Budgets--
SELECT
    employees.name AS employee_name,
    employees.department AS employee_department,
    employees.salary AS employee_salary,
    departments.budget AS department_budget
FROM employees
JOIN departments
    ON departments.name = employees.department;

--Exercise 2: Employees and Their Managers--
select e.name as employee_name,
m.name as manager_name
from employees e
left join employees m on m.id == e.manager_id;

--Part B — Aggregation Exercises--
--Exercise 3: Employee Count by Department--

select department , count(*) as employee_count from employees
  group by department order by employee_count desc;

--Exercise 4: Average Salary by Department--
select department, round(avg(salary),2 ) as average_salary  from employees
   group by department
  order by average_salary DESC;

--Exercise 5: Salary Summary by Department
SELECT department, 
  MIN(salary) as minimum_salary,
  MAX(salary) as maximum_salary,
  SUM(salary) as total_salary,
  COUNT(id) as total_employees
  FROM employees 
  group by department;

