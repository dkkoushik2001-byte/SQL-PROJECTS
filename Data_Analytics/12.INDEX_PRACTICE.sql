-- INDEX

-- 91. Create index on emp_name.

create index idx_employee_name
on employee(employee_name) ;

show index from employee ;

-- 92. Create composite index on customer_id and order-date.

create index idx_customer_order
on orders (customer_id, order_date) ;

show index  from orders ;

-- 93. Drop an index.

drop index  idx_employee_name on employee ;

