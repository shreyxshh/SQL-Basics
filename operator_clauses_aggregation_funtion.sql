create table products(
	product_id serial primary key,
	name varchar(50) not null,
	sku_code char(8) unique not null check(char_length(sku_code)=8),
	price numeric(10,2) default 0 check (price>=0),
	stock_quantity int default 0 check(stock_quantity >=0),
	is_available boolean default TRUE,
	category text not null, 
	added_on date default current_date,
	last_updated timestamp default now()
);

insert into products(name, sku_code, price, stock_quantity, is_available, category)
values 
('Wireless Mouse', 'WM123456', 699.99, 50, TRUE, 'Electronics'),
('Bluetooth Speaker', 'BS234567', 1499.00, 30, TRUE, 'Electronics'),
('Laptop Stand', 'LS345678', 799.50, 20, TRUE, 'Accessories'),
('USB-C Hub', 'UC456789', 1299.99, 15, TRUE, 'Accessories'),
('Notebook', 'NB567890', 99.99, 100, TRUE, 'Stationery'),
('Pen Set', 'PS678901', 199.00, 200, TRUE, 'Stationery'),
('Coffee Mug', 'CM789012', 299.00, 75, TRUE, 'Home & Kitchen'),
('LED Desk Lamp', 'DL890123', 899.00, 40, TRUE, 'Home & Kitchen'),
('Yoga Mat', 'YM901234', 499.00, 25, TRUE, 'Fitness'),
('Water Bottle', 'WB012345', 349.00, 60, TRUE, 'Fitness');

--seeing the whole table 
select * from products;

--looking for only single column from the table
select is_available from products where is_available = TRUE;

--using 'select' clause
select name, price from products;

--using 'where' clause
select * from products where category = 'Electronics';

--using 'group by' clause
select category from products group by category;

--using 'having' clause and count() function
select category, count(*) from products 
group by category
having count(*) > 1;

--using 'order by' clause - ascending and descending 
select * from products
order by price;

--using limit clause
select * from products 
limit 3;

--using 'as' clause
select name as item_name, price as item_price from products;

--using 'distinct' clause
select distinct category from products;

--using 'operator'
select * from products where price < 1000 and category = 'Electronics';

--using 'range(between)' for multiple and condition  
select *from products where price between 400 and 1000;

--using 'set(in)' for multiple in condition 
select * from products where category in ('Electronics', 'Home & Kitchen', 'Fitness');

--using 'pattern(like)' uses %value%
select * from products where sku_code like '%123%';
select * from products where sku_code like '_B%';

--using COUNT() function
select count(product_id) from products;

--using SUM() function
select sum(price) from products;

--using AVG() function
select round(avg(price),2) from products where category = 'Electronics';

--using MIN() 
select MIN(price) from products where category = 'Fitness';

--using MAX() 
select MAX(price) from products;

