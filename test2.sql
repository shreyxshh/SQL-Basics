select * from products;

--question 1 - using subquery
select name, price from products
where price = (select min(price) from products);

--question 2 
select avg(price) from products 
where category in ('Home & Kitchen', 'Fitness');

--question 3 
select name, stock_quantity from products 
where is_available = TRUE and stock_quantity > 50 and price != 299.00; 

--question 4 
select category, max(price) as max_price from products
group by category;

--question 5
select DISTINCT category from products
order by category DESC;