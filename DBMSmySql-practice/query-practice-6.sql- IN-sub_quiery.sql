  -- sub query in query
  -- IN SUBQUERY
  use sakila;
  -- sub query in query
  -- IN SUBQUERY
--   select*  from actor
--   where first_name in ('NIKE', "JOHNNY", "VIEVEN", "joe")
--   -- or actor_id in (41,107,166)
--   or actor_id in (select actor_id 
-- 			from actor 
-- 			where last_name = "Degeneres");

-- SUB-QUERY-PRACTICE
select *from actor
where first_name in ("johnny", "joe", "gina", "nick", "grace")
or actor_id in (select actor_id
				from actor
                where last_name = "Degeneres");

select *from actor
where first_name in ("nick", "FRED", "joe", "GRACE")
and actor_id in (select actor_id
				from actor
                where last_name = "Degeneres");

-- BETWEEN AND | OR
select* from actor
where actor_id between 10 and 20
or actor_id between 50 and 200;

-- NOT-BETWEEN 
select * from actor
where actor_id not between 20 and 50
and actor_id not between 60 and 150;

-- NULL values
select *from address
where address2 is null;

--  IS NOT NULL
select* from address
where address2 is not null;

-- concate
select concat(first_name, " ", last_name) as FullName
from actor;

select concat(first_name, " ", last_name) as FullName,
concat(left(first_name, 2), " ", left(last_name, 1)) as FirstInitial
from actor;

-- LENGTH FUNCTION
select concat(first_name, " ", last_name) as FullName,
length(concat(first_name, " ", last_name)) as length,
length(first_name) as length
from actor;

-- practice
select concat(first_name, " ", last_name) as FullName,
length (concat(first_name, " ", last_name)) as length,
length(first_name) as length
from actor;
-- practice
select concat(first_name, " ", last_name) as FullName,
length (concat(first_name, " ", last_name)) as FullLength,
length (first_name) as length,
concat(left(first_name, 2), " ", left(last_name, 1)) as FirstInitial
from actor;
-- practice
select concat(first_name, " ", last_name) as FullName,
length (concat(first_name, " ", last_name)) as FullLength,
length(first_name) as length,
concat(left(first_name, 1), " ", left(last_name, 3)) as FirstInitial
from actor;

select *from address
where address2 is not null;




