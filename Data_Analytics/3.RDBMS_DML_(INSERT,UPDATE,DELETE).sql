-- DML (INSERT,UPDATE,DELETE)

-- 11. Insert 5 records into employee.
-- (Parent table).
insert into departments  
values
(126,'GPS','Madurai'),
(127,'HR','Tenkasi'),
(128,'Service','Thoothukudi'),
(129,'Railway','Delhi'),
(130,'Highway','Trichy');

-- (Child table).
insert into employee
value
(26,'Sasikumar',126,75,789,'2001-01-02'),
(27,'Arjun',127,75,400,'2002-02-11'),
(28,'Ayyanar',128,76,550,'1980-03-10'),
(29,'Meenu',129,77,600,'1678-01-16'),
(30,'Meenu',129,78,160,'2026-08-10'),
(31,'Karthika',130,77,600,'1678-01-16');

-- 12. Insert multiple records into customers.
 
 insert into customers
 values
 (46,'Sabari',' ','2003-01-04'),
 (47,'Abi',' ','2009-02-08'),
 (48,'Guna',' ','2002-07-09'),
 (50,'Deepthi',' ','2000-06-02');
 
select * from customers;

-- 13. Update salary of employees working in dept 101.

update employee
set salary = 1200
where dep_id = 101;

select * from employee;

-- 14. Increase salary by 10% for all employee.

set SQL_SAFE_UPDATES= 0 ;
update employee
set salary = salary * 0.10 ;

select * from employee;

-- 15. Delete employee with salary < 20000.

delete from employee
where salary <20000;

-- 16. Update city as 'Bangalore' for all customers.

update customers
set City = 'Bangalore';

-- 17. Delete orders with status = ' Cancelled'.

Delete from orders
where status = 'Cancelled';

select * from orders;

-- 18. Insert data into orders using SELECT.

INSERT INTO orders(order_id, customer_id, order_date, amount, status)
SELECT 
order_id + 100,
customer_id,
order_date,
amount,
status
FROM orders
WHERE status = 'Completed';

-- 19. Udate department for a specific employee.

update departments
set Dept_name = 'Operation'
where Dep_id = 103 ;

-- 20. Delete all records from order_items.

delete from order_items;

-- 21. Insert today's date into order_date.

 insert into orders (order_id, order_date)
 values(1021,curdate());

-- 22. Update NULL city values as 'Unknown'.

update customers
set City ='Unknown' 
where City = ' NULL' ;

-- 23. Delete duplicate records from employee.

select employee_name, count(*)
from employee
group by employee_name
having count(*) > 1;

select * from employee
where employee_name = ' Meenu';

delete from employee
where emp_id = 29;

-- 24. Insert data respecting foreign key constraints.

-- Parent Table.

insert into departments
values
(131,'Survey','Marayoor'),
(132,'GST','Munnar') ;

-- Child Table.

insert into employee
values
(32,'Deepa', 131,79,50000,'2001-07-06'),
(33,'Sukanya', 132,80,10000,'2003-02-09');

-- 25. Roll back a delete operation (Using Transaction).

start transaction;
delete from employee
where salary < 20000 ;
rollback ;
















