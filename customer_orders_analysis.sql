use basic_project;

create table customers (
customer_id int primary key,
customer_name varchar(50),
country varchar(50)
);
insert into customers (customer_id, customer_name, country) values
(1,'John Smith','USA'),
(2,'Emma Brown','UK'),
(3,'Liam Johnson','Canada'),
(4,'Olivia Davis','USA'),
(5,'Noah Wilson','Germany');

create table orders (
order_id int primary key,
customer_id int,
product char(50),
amount int,
order_date date
);
insert into orders (order_id, customer_id, product, amount, order_date) values
(101,1,'Laptop',1200,'2023-01-05'),
(102,2,'Phone',800,'2023-01-07'),
(103,1,'Tablet',400,'2023-01-10'),
(104,3,'Laptop',1200,'2023-01-11'),
(105,4,'Headphones',150,'2023-01-15'),
(106,5,'Monitor',300,'2023-01-18'),
(107,2,'Laptop',1200,'2023-01-20'),
(108,3,'Phone',800,'2023-01-22');

select * from customers; -- right table 
select * from orders; -- left table 

-- Project Questions
-- Basic JOIN

-- 1. Show all customer orders with customer name
select * from 
orders as o inner join customers as cx
on cx.customer_id = o.customer_id;

-- 2. Show customer name and product purchased
select cx.customer_name, o.product from 
orders as o 
inner join customers as cx 
on o.customer_id = cx. customer_id;

-- 3.Show customer name and order amount with product
select cx.customer_name, o.product, o.amount from
orders as o inner join customers as cx
on cx.customer_id = o.customer_id;

-- Project Questions Medium

-- 1. Total amount spent by each customer
select cx.customer_name, sum(o.amount) as cx_total_amount from 
orders as o inner join customers as cx 
on cx.customer_id = o.customer_id
group by cx.customer_name
order by cx_total_amount desc;

-- 2. Number of orders per customer
select cx.customer_name, count(o.order_id) as total_order_by_cx from
orders as o inner join customers as cx
on cx.customer_id = o.customer_id
group by cx.customer_name
order by total_order_by_cx desc;

-- 3. Total sales by country
select cx.country, sum(o.amount) as Total_sales_per_country from 
orders as o inner join customers as cx
on cx.customer_id = o.customer_id
group by cx.country
order by Total_sales_per_country desc;

-- Project Questions  - Analyst Level

-- 1. Customer who spent the most money
select cx.customer_name, sum(o.amount) as total_money from
orders as o inner join customers as cx
on cx.customer_id = o.customer_id
group by cx.customer_name
order by total_money desc limit 1;

-- 2. Most purchased product
select product, count(order_id) as total_product from orders 
group by product
order by total_product desc limit 1;

-- 3. Country with highest sales
select cx.country, sum(o.amount) as highest_sales from 
orders as o inner join customers as cx 
on cx.customer_id = o.customer_id
group by cx.country
order by highest_sales desc limit 1;
