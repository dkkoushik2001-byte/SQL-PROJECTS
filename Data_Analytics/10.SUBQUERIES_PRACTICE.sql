-- SUBQUERIES.

-- 76. Find employee earning more than average salary.

select employee_name, salary
from employee
where salary > (select avg(salary) from employee) ;

-- 77. Find second highest salary.

select max(salary) as second_highest_salary 
from employee
where salary < (select max(salary) from employee) ;

-- 78. Employee working in same dept as 'Ravi'.

select employee_name
from employee
where Dep_id = ( select Dep_id from employee where employee_name = 'Ravi');

-- 79. Customers who placed at least one order.

select customer_name from customers
where customer_id in (select customer_id from orders) ;

-- 80. Products never ordered.

select product_name
from products
where product_id not in (select product_id from order_items) ;

-- 81. Employee earning highest salary in each department.

select emp_id ,employee_name ,salary
from employee as E
where salary = (
select max(salary)
from employee
where Dep_id = E.Dep_id
);

-- 82. Orders with amount greater than avg order amount.

select order_id, amount
from orders
where amount > (select avg(amount) from orders ) ;

-- 83. Departments with no employee.

select Dep_id , Dept_name from departments
where Dep_id not in (
select Dep_id from employee
);

-- 84. Customers with highest total purchase.

select C.customer_id , C.customer_name from customers as C
join orders as O
on C.customer_id = O.customer_id
group by C.customer_id, C.customer_name
having sum(O.amount) = (
select max(total_amount)
from (
select sum(amount) as total_amount
from orders
group by customer_id ) as T
);

-- 85. Find employee hired before manager.

select e.employee_name as employee,
e.hire_date as employee_hiring
from employee as e
where e.hire_date < (select m.hire_date from employee as m
where m.emp_id = e.manager_id
);


