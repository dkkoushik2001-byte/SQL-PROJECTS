-- DQL (SELECT).

-- 26. Fetch all records from employee.

select * from employee ;

-- 27. Display only emp_name and salary.

select employee_name, salary
from employee ;

-- 28. Find employee with salary > 50000.

select * from employee
where salary > 50000;

-- 29. Display distinct cities of customers.

select distinct City
from customers; 

-- 30. Sort employee by salary descending.

select * from employee
order by salary desc ;

-- 31. Display top 5 highest paid employee.

select * from employee
order by salary desc
limit 5 ; 

-- 32. Find employee hired after 2020.

select * from employee
where year (hire_date) > 2020 ;

-- 33. Display customers from chennai.

select * from  customers
where City = 'Chennai' ;

-- 34. Fetch orders placed in 2024.

select * from orders
where year (order_date) = 2024;

-- 35. Show products under 'Electronics' category.

select * from products
where category = 'Electronics';


