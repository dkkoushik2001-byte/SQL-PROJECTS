-- LIKE AND LIMIT.

-- 66. Find employees whose name starts with 'A'.

select * from employee
where employee_name like 'A%' ;

-- 67. Find customers whose city ends with "ai".

select * from customers
where city like 'Ai %' ;

-- 68. Fetch products containing word 'Pro'.

select * from products
where product_name like '% PRO %';

-- 69. Display top 3 expensive products.

select * from products
order by price desc
limit 3 ;

-- 70. Skip first 5 employees and fetch next 5.

select employee_name  from employee
limit 5 offset 5 ;
