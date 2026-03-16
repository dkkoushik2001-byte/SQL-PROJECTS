-- STORED PROCEDURE & FUNCTIONS.

-- 94. Create stored procedure to fetch all employees.

Delimiter //

create procedure get_all_employees()
begin
     select * from employee ;
End //

Delimiter ;


-- 95. Stored procedure to get employees by dept_id.

Delimiter //
 create procedure get_employee_by_dept ( in deptid int)
 Begin
     select * from employee
     where Dep_id = Deptid ;
End  //

Delimiter ;


-- 96. Stored procedure to insert employee record.

Delimiter //

create procedure Insertemployee (
in p_emp_id int,
in p_employee_name varchar(100),
in Dep_id int,
in manager_id int,
in salary bigint,
in hire_date date
)
begin
insert into employee
(emp_id, employee_name, Dep_id, manager_id, salary,hire_date)
values
(34,'Adhithya',133,81,40000,'2025-06-08') ;
end //
delimiter ;
 

-- 97. Stored procedure with in and out parameter.
 
 Delimiter //
create procedure get_orders (
in O_id int, 
out total_count int
)
begin
select count(*) 
into total_count
from orders
where order_id = O_id;
end //

delimiter ;


-- 98. Create function to calculate yearly salary.

Delimiter //

create function YearlySalary(monthly_salary
decimal(10,2))
returns decimal(10,2)
deterministic
begin
   return monthly_salary * 12 ;
end //

Delimiter //


-- 99. Function to return total order amount for customer.

Delimiter //

create function GetTotalOrderAmount (cust_id int)
returns decimal (10,2)
deterministic
begin
   declare total_amount decimal (10,2) ;
 
 select sum( total_amount)
 into total_amount
 from orders
 where customer_id = cust_id ;
 
 return total_amount;
 end //
 
 delimiter ;
 

  -- 100. Call stored procedure and Function.
 
 call get_all_employees() ;
 
 call get_employee_by_dept(101) ;
 
call insertemployee(34, 'Adhithya',133,81,40000,'2025-06-08') ;

call get_orders(101, @total) ;
 
select  YearlySalary(40000) as  Yearly_Salary ;

select  GetTotalOrderAmount(1021) ;
 
 