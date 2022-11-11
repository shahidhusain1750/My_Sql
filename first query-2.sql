create database amazon;
use amazon;
create table customer
(
 customer_name varchar(50),
 customer_id int,
 customer_address varchar(50),
 customer_email varchar(20),
 customer_age int
);
select *from customer;

insert into customer values("ovaiz", "7573", "mumbai bandra", "ovaiz7573@", 26);

insert into customer(customer_name, customer_id, customer_address)values("Mohammed", 22, "myaddress");

select customer_name,customer_id, customer_address from customer;

use sakila;
select *from actor;

-- order by firsname
select *
from actor
order by first_name;

-- order by firstname in desc
select*
from  actor
order by first_name desc;

-- orde by actor id in descending
select*
from actor
order by actor_id desc;

-- order by actor_id in assending
select* 
from actor
order by first_name, actor_id desc;

-- order by firstname & lastname
select*
from actor
order by first_name, actor_id desc;

select actor_id, first_name, last_name
from actor
order by first_name, actor_id, last_name desc;

-- where clause
select *
from actor
where first_name != "Nike";

select*
from actor
where actor_id >= 100;

select*
from actor
where first_name = "Nick"
order by actor_id desc;

select*
from actor 
where actor_id <= 100
order by first_name, actor_id desc;

-- Empty table result where clouse
select* 
from actor
where 3 = 1;

-- Aliases

select *
from rental;

select rental_date, inventory_id, return_date
from rental;

select 
rental_date as RentalDate,
inventory_id as InventryId,
return_date as ReturnDate
from rental;

-- retrives values based on arthmatic expression
select *
from film;

select replacement_cost,
	film_id as FilmID,
	length/60
from film;   

select replacement_cost as CostDiff,
film_id as  FilmID,
length/60 as TimeinHour
from film;

select rental_rate as RentalRate,
	rental_rate + 3 * 4 - 1 as Result1,
    (rental_rate + 3) * 4 -1 as result2,
    (rental_rate + 3) * (4 -1) as Result3,
    rental_rate + (3 * 4) - 1 as Result4
    from film;
    
    select replacement_cost as ReplacementCost,
    replacement_cost / 5 as DesimalRentalRate,
    replacement_cost Div 5 as IntegerRentalRate,
    replacement_cost % 5 as ReminderRentalRate
    from film;
    
    select
    0/2 as A,
    1 div 2 as b
    from film;



