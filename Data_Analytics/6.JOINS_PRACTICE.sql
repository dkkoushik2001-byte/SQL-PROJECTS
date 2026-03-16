-- JOINS.

-- 46. Inner join employee and departments.

select E.emp_id, E.employee_name, E.salary,
D.Dept_name
from employee as E
inner join departments as D
on E.Dep_id = D.Dep_id ;

-- 47. Left join employee with departments.

select E.emp_id, E.employee_name, E.salary, D.Dept_name
from employee as E
left join departments as D
on E.Dep_id = D.Dep_id ;

-- 48. Right join employee with departments.

select E.emp_id, E.employee_name, E.salary, D.Dept_name
from employee as E
right join departments as D
on E.Dep_id = D.Dep_id ;

-- 49. Find employee without department.

 select E.emp_id, E.employee_name, D.Dept_name
from employee as E
left join departments as D
on E.Dep_id = D.Dep_id 
where D.Dep_id is NULL ;

-- 50. Find departments without employee.

select D.Dep_id, D.Dept_name, E.employee_name
from departments as D
left join employee as E
on D.Dep_id = E.Dep_id
where E.emp_id is NULL;

-- 51. Join customers and Orders.

select * from customers as C 
join orders as O
on C.customer_id = O.customer_id ;

-- 52. Fetch customer name and total order amount.

select C.customer_name, sum(amount) as 
total_order_amount
from customers as C
join orders as O
on C.customer_id = O.customer_id
group by C.customer_name ;

-- 53. Join orders and order_items.

select * from orders as O
join order_items as otms
on O.order_id = otms.order_id ;

-- 54. Join products and order_items.

select * from products as P
join order_items as OI
on P.product_id = OI.product_id ;

-- 55.Find total quantity sold per product.

select P.product_name , sum(otms.quantity) as
total_quantity
from products as P
left join order_items as otms
on p.product_id = otms.product_id
group by P.product_name ;

-- 56. Self join to find employee-manager pairs.

select E.employee_name as employee, M.employee_name as
manager
from employee as E
left join employee as M
on E.manager_id = M.emp_id ;

-- 57. Display employee earning more than their manager.

select E1. employee_name as employee,
M1.employee_name as manager
from employee as E1
join employee as M1
on E1.manager_id = M1.emp_id
where E1.salary > M1.salary ;

-- 58. Join 3 tables : orders,order_items,products.

select * from orders o
inner join order_items oi
on o.order_id = oi.order_id
inner join product p
on oi.product_id = p.product_id ;

-- 59. Find highest selling product.

select p.product_name, sum(ot.quantity) as total_sold
from products as p
inner join order_items as ot
on p.product_id = ot.product_id
group by p.product_name, p.product_id
order by total_sold desc
limit 1 ;

-- 60. Show employee and therir department locations.

select E.emp_id, E.employee_name, D.Location
from employee as E
inner join departments as D
on E.Dep_id = D.Dep_id ;


