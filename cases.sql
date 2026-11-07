select * from products;

select name, price,
case
	when price > 1000 then 'Expensive'
	when price between 500 and 1000 then 'Moderate'
	else 'Cheap'
	end as price_tag
From products;

--creatin a new column and updating the value in it
alter table products
add column price_tag text;

update products 
set price_tag = 
case
	when price > 1000 then 'Expensive'
	when price between 500 and 1000 then 'Moderate'
	else 'Cheap'
	end;

alter table products 
add column availability_status text;

update products
set availability_status = 
case 
	when is_available then 'in stock'
	else 'out of stock'
	end;

alter table products
add column stock_label text;

update products 
set stock_label =
case 
	when stock_quantity > 100 then 'high stocks'
	when stock_quantity between 30 and 100 then 'medium stocks'
	else 'low stocks'
	end;