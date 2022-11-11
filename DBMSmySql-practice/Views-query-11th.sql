-- Intro views
use sakila;

select *from actor;

create view vw_AllActor
as select* from actor;

-- table actor is called based table
-- Views is an object of database . technically view doesent store any data,
 /*data is retrive in runtime */
 
 select *from vw_AllActor;
 
 select *from vw_AllActor
 where first_name like '%A';
 /*Just like a base table can apply where condition over view*/
 
 create view vw_ActorA
 as
 select * from vw_AllActor
 where first_name like 'A%';
 
 select *
 from vw_ActorA;
 
 select *
 from vw_ActorA
 where last_name like '%A%';
 /*IN reality we have two diffrent conditin on our based table , actor*/
 -- 1st is first_name like A% and 
 -- 2nd is where last_name like %A%
 
 create view vw_Actor
 as 
 select *
 from vw_ActorA
 where last_name like 'A%';
 
 select *
 from vw_ActorA
 where first_name like '%A%';
 /*If we required we can further nest our view into another view*/
  
  create view vw_actorAnA as
  select * from vw_actora
  where last_name like '%A%';
select *from vw_ActorAnA;

/*Our select statement is very simple */
-- though we have 2 differen views and base table pasrt of this query

create view vw_ActorAnA_o
as 
select *
from vw_ActorAnA
order by last_name;
/*We can also write order by claouse on views*/

select *
from vw_ActorAnA_o;
/* if you can to delete any viwes its syntax its symple */

drop view vw_AllActor;
drop view vw_ActorA;
drop view vw_ActorAnA;
drop view vw_ActorAnA_o;

/* Data Security */
use sakila;
select *from payment;
select *from customer;

select pt.payment_id, pt.rental_id,
	cust.first_name, cust.last_name, pt.amount
from payment pt
inner join customer cust on cust.customer_id = pt.customer_id
where payment_id>100;

create view DataSecure
as 
select pt.payment_id, pt.rental_id,
	cust.first_name, cust.last_name, pt.amount
from payment pt
inner join customer cust on cust.customer_id = pt.customer_id
where payment_id > 100;

select* from datasecure;

select payment_id, rental_id
from datasecure
where payment_id >200;

-- 0 rows 
select payment_id, rental_id 
from datasecure
where payment_id = 99;

select payment_id, rental_id
from datasecure
where payment_id = 10;

-- Error
select email
from datasecure;
