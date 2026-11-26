use tata1mg_db; 

# total orders, delivered orders, revenue and AOV of oct 2026

select count(order_id) total_orders from orders
where year(order_datetime) = 2026 and month(order_datetime) = 10;

select count(order_id) delivered_orders from orders 
where order_status = "Delivered" and year(order_datetime) = 2026 and month(order_datetime) = 10;

select sum(order_value) revenue from orders 
where order_status = "Delivered" and year(order_datetime) = 2026 and month(order_datetime) = 10;

select round(sum(order_value)/count(order_id),2) AOV from orders
where year(order_datetime) = 2026 and month(order_datetime) = 10;


# top 10 cities by total orders, % shareof these cities to total orders

select * from customers;
select * from cities;
select * from orders;

select cities.city_name,
count(orders.order_id) total_orders,
concat(round((count(orders.order_id) / (select count(order_id) from orders)) *100,2), "%") percent_of_total
from cities join customers
on cities.city_id = customers.city_id
join orders
on customers.customer_id = orders.customer_id
group by cities.city_name
order by total_orders desc limit 10;


# for each express cities find the percent of express orders delivered after 60 mins.

with cte1 as (select cities.city_name, timestampdiff(minute, orders.order_datetime, orders.delivered_datetime) minutes_taken
from cities join customers
using(city_id)
join orders
using(customer_id)
where orders.delivery_type = "Express")

select city_name, round((sum(minutes_taken > 60)/ count(minutes_taken)) *100,2)  percent_of_late_express_orders
from cte1
group by city_name
order by percent_of_late_express_orders desc;


# compare fever and cold sales in sep-oct 2026 with sep-oct 2025, YOY growth

select * from products;
select * from orders;
select * from order_items;

with cte1 as (select cities.city_name,
orders.order_datetime,
order_items.quantity*order_items.unit_price as sales
from cities join customers 
using (city_id)
join orders
using(customer_id)
join order_items
using (order_id)
join products
using(product_id)
where products.category = "Fever & cold"
and order_items.item_status = "fulfilled")


cte2025 as (select city_name, sum(sales) 2025_sales
from cte1 
where order_datetime >= "2025-09-01" and order_datetime <= "2025-10-31"
group by city_name),

cte2026 as (select city_name, sum(sales) 2025_sales
from cte1 
where order_datetime >= "2026-09-01" and order_datetime <= "2026-10-31"
group by city_name);


select * from cte2025;

