create database internship;
use internship;


select * from temp; 
select * from OrderedItems;
select * from orders;
select * from cancelledorders;

-- temp does not have cancelled rows now 

-- create table CancelledOrders as (select * from temp where Order_Status="Cancelled");

-- create table Orders as (select distinct Order_Number , Order_Date , Purchased_By , Customer_Name , Contact_Number ,Amount_Paid ,Discount, Delivery_Charges ,City , State , Pincode from temp );

-- create table OrderedItems as (select Order_Number , SKU , Quantity from temp);

select 
(((select count(distinct customer_name) from orders where order_date < '2024-01-01')-
 (select count(distinct customer_name) from orders where order_date between  '2024-01-01' and '2024-06-30' 
 and (customer_name not in (select customer_name from orders where order_date < '2024-01-01'))))/(select count(distinct customer_name) from orders where order_date < '2024-06-30'))*100 from dual;
 
 select count(distinct customer_name) from orders where order_date < '2024-01-01';
 select count(distinct customer_name) from orders where order_date between  '2024-01-01' and '2024-06-30' 
 and (customer_name not in (select customer_name from orders where order_date < '2024-01-01'));
 select count(distinct customer_name) from orders where order_date < '2024-06-30';


-- Lifetime Sales of Customers
select trim(customer_name) , round(sum(amount_paid),2) from orders  group by trim(customer_name) order by 2 desc;


-- Average Order Value by Month
select concat(Month(order_date),"-",year(order_date)) Month , round(avg(amount_paid),2) avg_sales from orders group by concat(Month(order_date),"-",year(order_date));

-- Customer who ordered more than once
select customer_name , count(order_number) from orders group by customer_name having count(order_number)>2;

-- Monthly Sales Performance
select concat(Month(order_date),"-", year(order_date)) Month , round(sum(amount_paid),2) total_sales, count(order_number) orders, round(avg(amount_paid),2) aov 
from orders group by concat(Month(order_date),"-",year(order_date)) ;

-- Product Sales Analysis
select items , oi.sku , sum(amount_paid) total_sales , sum(quantity) quantity_sold from 
	orders o left join OrderedItems oi on o.order_number = oi.order_number left join items i on oi.sku=i.sku group by items,sku ;


-- Sales by City
select state , city , round(sum(amount_paid),2) total_sales from orders group by state,city;

-- High-Value Customers
select trim(customer_name) customer_name, round(sum(amount_paid),2) total_sales from orders  group by trim(customer_name) order by 2 desc limit 5;


-- Average Discount by Customer
select trim(customer_name) customer_name , round(avg(discount),2) avg_discount from orders  group by trim(customer_name) order by 2 desc ;


