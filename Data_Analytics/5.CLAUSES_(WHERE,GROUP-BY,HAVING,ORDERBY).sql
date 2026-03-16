-- CLAUSES (WHERE,GROUP BY,HAVING,ORDER BY).

-- 36. Count employee in each department.

select Dep_id , count(emp_id) as employee_count
from employee
group by Dep_id ;

-- 37. Show departments having more than 5 employees.

select Dep_id, count(emp_id) as employee_count
from employee
group by Dep_id
having employee_count > 5;

-- 38. Calculate total salary per department.

select Dep_id, sum(salary) as total_salary
from employee
group by Dep_id ;

-- 39. Display average salary per department.

select Dep_id , avg(salary) as avg_salary
from employee
group by Dep_id ;

-- 40. Find cities having more than 10 customers.

select city, count(customer_id) as total_customers
from customers
group by city
having count(customer_id) > 10 ;

-- 41. Order departments by total salary.

select D.Dept_name , sum(E.salary) as total_salary
from departments as D
inner join employee as E
on D.Dep_id = E.Dep_id
group by D.Dept_name
order by total_salary DESC;

-- 42. Find max salary in each department.

select Dep_id , max(salary) as max_salary 
from employee
group by Dep_id ;

-- 43. Show minimum order amount per customer.

select customer_id, min(amount) as min_amount
from orders
group by customer_id ;

-- 44. Fetch only departments with avg salary >60000.

select Dep_id , avg(salary) as avg_salary
from employee
group by Dep_id
having avg(salary) > 60000 ;

-- 45. Display count of orders by status.

select status, count(order_id) as total_orders
from orders
group by status ;

