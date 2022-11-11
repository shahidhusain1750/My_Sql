use sakila;
select *from address
order by district;

select *from address
order by address2;

select* from address
order by district, postal_code desc;

select concat(first_name, " ", last_name) as FullName
from actor
order by concat(first_name, " ", last_name);

select  actor_id, concat(first_name, " ", last_name) as FullName
from actor
order by FullName desc, actor_id;

select actor_id, concat(first_name, " ", last_name) as FullName
from actor
order by 2;

select actor_id, concat(first_name, " ", last_name) as FullName
from actor
order by 1;

