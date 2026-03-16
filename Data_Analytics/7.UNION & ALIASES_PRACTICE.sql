-- UNION & ALIASES.

-- 61. Combine customer and employee cities using UNION.

select City from customers
union
select City from employee ;

-- 62. Use UNION all to merge two tables.

select emp_id, employee_name from employee
union all
select Dep_id, Dept_name from departments ;

-- 63. Rename salary as monthly_salary.

select salary as monthly_salary
from employee ;

-- 64. Alias table names in joins.

select e.employee_name
from employee as e
join departments as d
on e.Dep_id = d.Dep_id ;

-- 65. Display calculated column with alias.

select employee_name , salary * 12 as annual_salary
from employee ;
