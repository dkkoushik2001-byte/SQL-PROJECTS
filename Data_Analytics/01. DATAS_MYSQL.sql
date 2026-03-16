-- 1. create database 

create database Data_Analytics;

Use  Data_Analytics;

-- 2. Create table departments

create table Departments(
Dep_id int primary key,
Dept_name varchar(100),
Location varchar(100)
);

insert into Departments(Dep_id,Dept_name,Location)
values


(101,'sales','Aluva'),
(102,'Marketing','Muttom'),
(103,'sales','kochi'),
(104,'Expansion','Marayoor'),
(105,'Accounts','Adimali'),
(106,'Marketing','Ambalathara'),
(107,'Mech','Munnar'),
(108,'BDE','Idukki'),
(109,'GST','Thrissur'),
(110,'HR','Thodupuzha'),
(111,'Civil','Kannur'),
(112,'EEE','Eettumanoor'),
(113,'CSE','Coimbatore'),
(114,'Mech','Ramanadhapuram'),
(115,'ECE','Ooty'),
(116,'Civil','Kodaikanal'),
(117,'EEE','Pollachi'),
(118,'GST','Udumalai'),
(119,'Mech','Kochi'),
(120,'HR','Idukki');

select * from departments;

-- 3. Create tabel employee

create table employee(
emp_id int primary key,
emp_name varchar(100),
Dep_id int,
manager_id int,
salary int,
hire_date date,
City varchar(100),
foreign key (Dep_id)
references Departments (Dep_id)
);

insert into employee(
emp_id,emp_name,Dep_id,manager_id,salary,hire_date,City)
values
(2,'Abishek',102,51,100,'2001-03-02','Madurai'),
(3,'Sona',103,52,200,'2000-01-03','Kochi'),
(4,'Binitha',104,53,250,'2000-03-03','Adimali'),
(5,'Raveena',105,54,200,'2025-04-03','Aluva'),

(6,'Kousalya',106,55,350,'2023-04-26','Muttom'),
(7,'Anu priya',107,56,300,'2000-06-03','Thodupuzha'),
(8,'Meena',108,57,150,'2002-02-07','Bangalore'),
(9,'Ambika',109,58,500,'2025-03-11','Manjummal'),
(10,'Raveena',110,59,550,'2024-05-02','Thrissur'),

(11,'Divya',111,60,400,'2024-04-01','Paravur'),
(12,'Sruthi',112,61,450,'2024-02-08','Alappuzha'),
(13,'Abi',113,62,700,'2024-03-03','Virudhunagar'),
(14,'Aravidhan',114,63,850,'2022-02-14','Paramakudi'),
(15,'Atchaya',115,64,300,'2002-04-03','Madurai'),

(16,'Sukanya',116,65,340,'2000-03-07','kattapana'),
(17,'Akhila',117,66,240,'2000-05-02','kattapana'),
(18,'Vishnu',118,67,670,'2024-04-02','Adimali'),
(19,'Binitha',119,68,900,'2023-01-01','Rajakkad'),
(20,'Chandra sekar',120,69,800,'1998-04-04','Nellur');

select * from employee;

-- 4. Create table Customers

create table Customers(
customer_id int primary key,
customer_name varchar(100),
city varchar(100),
signup_date date
);

insert into customers (
customer_id,customer_name,city,signup_date)
values
(21,'Nandhu','Aluva','2001-03-04'),
(22,'Needhu','Kochi','2002-01-01'),
(23,'Manikandan','Marayoor','1998-09-13'),
(24,'Kavya','Marayoor','2000-03-16'),
(25,'keerthana','Rajakkad','2001-02-03'),

(26,'Dhaniya','Rajakumari','2024-04-04'),
(27,'Nydya','Rajakumari','1997-10-11'),
(28,'Mahan','suryaneli','2000-11-05'),
(29,'Saravanan','idukki','1977-06-10'),
(30,'Sree lakshimi','Kottayam','2004-12-01'),

(31,'Dhanya','Chennai','1678-02-12'),
(32,'Sree','Kaloor','2023-08-03'),
(33,'Anju','Thrissur','2026-02-07'),
(34,'Vanitha','Idukki','2003-03-06'),
(35,'Mufidha','Malappuram','2005-06-02'),

(36,'Aleena','Kakkanad','2007-05-06'),
(37,'Libiya','Palakkad','2002-03-08'),
(38,'Ajith','Dindigul','2007-08-08'),
(39,'Abiram','Kaniyakumari','2008-03-10'),
(40,'Abishek','Madurai','2000-05-03');

select * from customers;


-- 5. Create table Orders

create table Orders(
order_id int primary key,
customer_id int,
order_date date,
amount decimal(10,2),
status varchar(100),
foreign key (customer_id) references customers(customer_id)
);

insert into Orders
values
(1002,22,'2023-03-05',256.23,'Delivered'),
(1003,23,'2024-01-04',567.67,'Returned'),
(1004,24,'2023-05-12',678.89,'Shipped'),
(1005,28,'2001-04-07',100.23,'Cancelled'),
(1006,29,'2000-07-12',101.23,'Shipped'),

(1007,30,'2008-01-09',234.67,'Delivered'),
(1008,31,'2010-06-12',456.87,'Delivered'),
(1009,32,'2020-03-12',567.89,'Dispatched'),
(1010,33,'2021-06-11',789.10,'Confirmed'),
(1011,34,'2025-03-02',567.89,'Refunded'),

(1012,35,'2021-07-09',456.78,'Delivered'),
(1013,36,'2000-07-10',456.89,'Out of Delivery'),
(1014,37,'2002-06-09',457.89,'Processing'),
(1015,38,'2026-06-08',340.67,'Cancelled'),
(1016,39,'2024-05-04',325.78,'Processing'),

(1017,40,'2028-09-08',678.78,'Cancelled'),
(1018,38,'2027-03-11',345.67,'Out of delivery'),
(1019,33,'2026-08-08',456.87,'Refunded'),
(1020,34,'2023-02-02',345.67,'Processing');

select * from orders;

-- 6. Create table Products

create table Products(
product_id int primary key,
product_name varchar(100),
category varchar(100),
price decimal(10,2)
);

insert into Products
values
(202601,'Mobile','Electronics',456.56),
(202602,'Mouse','Electronics',768.67),
(202603,' T shirt','Clothing',678.89),
(202604,'Churidhar','Clothing',678.89),
(202605,'Note Book','Stationary items',567.78),

(202606,'Lipstick','Cosmetics',120.56),
(202607,'Foundation','Cosmetics',345.78),
(202608,'Shampoo','Cosmetics',567.87),
(202609,'Perfume','Cosmetics',589.78),
(202610,'Apple','Fruits',200.67),

(202611,'Egg','Fruits',267.89),
(202612,'Pan','Kitchen items',879.98),
(202613,'Gas','Kitchen items',600.78),
(202614,'Pen','Stationary items',600.78),
(202615,'Sugar','Grocery',600.78),

(202616,'Beetroot','Vegetables',124.78),
(202617,'Onion','Vegetables',56.78),
(202618,'Beans','Vegetables',33.76),
(202619,'Cabbage','Vegetables',68.90),
(202620,'pepsi','Beverage',45.34);

select * from products;

-- 7. Create table Order_items

create table Order_items(
order_item_id int primary key,
order_id int,
product_id int,
Quantity int,
foreign key (order_id) references Orders(order_id),
foreign key (product_id) references products(product_id)
);

insert into Order_items
values
(501,1002,202601,3),
(502,1003,202602,2),
(503,1004,202603,1),
(504,1005,202604,5),
(505,1006,202605,7),

(506,1007,202606,1),
(507,1008,202607,2),
(508,1009,202608,4),
(509,1010,202609,1),
(510,1011,202610,7),

(511,1012,202611,9),
(512,1013,202612,3),
(513,1014,202613,8),
(514,1015,202614,2),
(515,1016,202615,7),

(516,1017,202616,1),
(517,1018,202617,3),
(518,1019,202618,1),
(519,1020,202619,8),
(520,1014,202616,9);























































