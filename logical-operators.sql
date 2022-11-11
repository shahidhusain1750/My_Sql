-- logical operator

--  where clouse comparison Operator

-- AND 
use sakila;

select*
from actor
where first_name = "kenneth";

select*
from actor
where first_name = "kenneth" and actor_id <100;

select*
from actor
where first_name = "kenneth" and actor_id <100 and last_name = "Torn";

-- OR OPERATOR (||)
select*
from actor
where first_name = "kenneth" or last_name =  "Temple";

select*
from actor
where first_name = "kenneth" or actor_id <100;

select*
from actor 
where first_name = "kenneth" or actor_id <100 or last_name = "Temple";

-- NOT OPERATOR
select actor_id, first_name, last_name
from actor
where not actor_id = 5;

select actor_id, first_name, last_name
from actor
where actor_id <> 5;


