-- AGGREGATION FUNCTIONS.

-- 71. Find total salary paid.

select sum(salary)
from employee ;

-- 72. Find average order amount.

select avg(amount) from orders ;

-- 73. Count total number of orders.

select count(*) as total_orders
from orders ;

-- 74. Find highest product price.

select max(price) as highest_price
from products ;

-- 75. Find lowest employee salary.

select min(salary) as lowest_salary
from employee ;

