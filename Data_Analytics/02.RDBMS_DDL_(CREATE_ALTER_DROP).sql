-- DDL(CREATE,ALTER,DROP)

-- 1. Create employees table with emp_id as primary key
 
 use  data_analytics;
 
Create table employee(
emp_id int primary key,
emp_name varchar(60) NOT NULL,
dept_id int,
manager_id int NOT NULL,
salary int,
hire_date date,
City varchar(50)
);

-- 2.Create departments table with dept_id as primary key.

Create table departments(
dept_id int primary key,
dept_name varchar(50) NOT NULL,
Location varchar(50)
);

-- 3. Add a foreign key from employee.dept_id to departments.dept_id.

Alter table employee
add constraint fk_dept
foreign key (dep_id)
references department(dep_id);

-- 4.  Add a city column to employee.

Alter table employee
add City varchar(50);

-- 5. Rename column emp_name to employee_name.

Alter table employee
rename column emp_name to employee_name;

-- 6. Drop column city from employee.

Alter table employee
drop column City ;

-- 7. Create orders table with amount having 2 decimal points.

Alter table orders
modify amount decimal(10,2);

-- 8. Drop the product table.

Drop table product;

-- 9. Truncate the order_items table.

truncate table Order_items;

-- 10. Modify salary column to BIGINT.

Alter table employee
modify salary BIGINT;






