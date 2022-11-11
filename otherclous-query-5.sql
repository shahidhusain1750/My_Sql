 -- whrere clouse other OPERTOR
  -- (IN-and NOT-IN) (between-and not-between), 
  -- like-and or not-like, null-clous -> a string pattern must called mask. 
  -- wildcart (%) (_)
  -- is NULL  CLOUS IS NOT NULL
  
  -- where clouses camparison operator
  

  use sakila;
  -- IN
  
  select*
  from actor
  where first_name in ("Nick", "Johny", "Joe", "VIVIEN", "Zero");
  
  select* 
  from actor
  where actor_id in (1,2,3,4,5,6,7,8,15,20);
  
  -- NOT IN
  select *
  from actor
  where actor_id not in (1,2,3,4,5,6,7,17);
  
  select*
  from actor
  where first_name not in ('NIKE', "JOHNNY", "KENNETH", "VIEVEN", "ZERO");
  
  
  -- sub query in query
  -- IN SUBQUERY
  select*  from actor
  where first_name in ('NIKE', "JOHNNY", "VIEVEN", "joe")
  -- or actor_id in (41,107,166)
  or actor_id in (select actor_id 
			from actor 
			where last_name = "Degeneres");
            
-- AND OPERATOR IN SUB- QUERY

select*from actor
where first_name in ("nick", "johny", "joe", "VIViVN")
-- and actor_id in (41,107,166)
and actor_id in 
			(select actor_id
            from actor
            where last_name = "Degeneres");
            
-- BETWEEN AND 
select* from actor
where actor_id between 11 and 19
or actor_id between 50 and 60;

-- NOT BETWEEN
select* from actor
where actor_id not between 10 and 20;

-- LIKE

select* from actor
where first_name like "A%";

-- practic
select* from actor
where first_name like "S%";

select *from actor
where first_name like "S__I%";

select* from actor
where first_name like "A%"
or last_name like "D%";

select* from actor
where first_name like "A__E";

select* from actor
where first_name like "A__ E%";

select* from actor
where first_name like "A%E%";

-- NULL 
-- is null to cheke values

select* from address 
where address2 is null;

select* from address
where address2 is not null;

