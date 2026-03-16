-- VIEWS

-- 86. Create a view for employee details with department.

create view employee_details as
select E.emp_id,
       E.employee_name,
       E.salary,
       D.Dept_name
from employee E
inner join departments D
on E.Dep_id = D.Dep_id ;

show create view  employee_details ;

-- 87. Create view for customer total purchase.

create view customer_total_purchase as
select C.customer_id,
       C.customer_name,
       sum(O.amount) as total_purchase
from customers C
join orders O
on C.customer_id = O.customer_id
group by C.customer_id, C.customer_name ;

show create view  customer_total_purchase ;

-- 88. Update data using view.

create view employee_view as
select emp_id, employee_name, salary
from employee ;

update employee_view 
set salary = 22000
where emp_id = 1 ;

 show create view employee_view ;

-- 89. Drop a View.

drop view employee_view ;

-- 90. Check view definition.

show create view employee_details ;


       
       