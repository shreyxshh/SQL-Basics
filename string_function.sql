select * from products;

--using upper, lower, length function

select upper(name) from products;
select lower(sku_code) from products;
select length(sku_code) from products;

--using substring function 
select substring('make it clap',9,4);

--using left and right function
select left('make it clap', 4); --starts from leftmost element
select right('make it clap', 4); --starts from rightmost element

--using concat function
select concat_ws(':', name, category) as name_with_category from products;

--using trim function
select trim('    makeitclap     ');

--using replace function
select replace(sku_code, left(sku_code, 2), 'GG') from products;

