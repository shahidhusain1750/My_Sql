-- retrive data based on function

use sakila;
select *
from payment;

-- integer function

select amount,
round(amount) Amit,
round(amount,1) Amit1,
-- nearest lovest values
floor(amount) FloorAmnt,
-- upper values 
ceiling(amount) CelingAmnt
from sakila.payment;

-- example 
select round(4.35,1);

-- String operator
select* 
from actor;

-- string operator
-- concat
select concat(first_name, " ", last_name) as Fullname
from actor;

-- Left Function
select concat(first_name, " ", last_name) as Fullname,
	concat(left(first_name, 1), " ", left(last_name,2)) as FirstInitial
    from actor;
    
-- Length Function
select concat(first_name, " ", last_name) as Fullname,
		length(concat(first_name, " ", last_name)) as length,
        length(first_name) as length,
        concat(left(first_name,2), ' ', left(last_name,1)) as FirstInitial
from actor;

 -- various Function
select concat(first_name, ' ', last_name) as Fullname,
	reverse(concat(first_Name, ' ', last_name)) as ReverseFullName,
    replace(concat(first_name, ' ', last_name), 'S', '$') as ReplaceExample
    from actor;


use world;
select *from country;
select SurfaceArea,
SurfaceArea - 9 as subtSurfaceArea,
SurfaceArea * 9 as multySurfaceArea,
SurfaceArea / 9 as divideSurfaceArea,
SurfaceArea + 9 as addSurfaceArea,
SurfaceArea % 9 as modeSurfaceArea
from country;



