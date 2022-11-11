-- update statements
use plural;

create table actorcopy
(
	actor_id int not null auto_increment,
    first_name varchar(45) not null,
    last_name varchar(45),
    last_update timestamp not null default current_timestamp on update current_timestamp,
    primary key(actor_id)
);

 insert into actorcopy (first_name, last_name, last_update)
 values ("addul", "gani", "2022-05-26");
 
 select *from actorcopy;
 -- truncate 
 truncate actorcopy;
insert into actorcopy (first_name, last_name, last_update)
select first_name, last_name, last_update
from sakila.actor;

select * from actorcopy; 
 
 -- updating single row single copy
 
 update actorcopy
 set first_name = "gani"
 where actor_id = 1;
 
 update actorcopy
 set last_name = "memon"
 where actor_id = 1;
 
 update actorcopy
 set first_name = "Huzafa"
 where first_name = "gani";
 
 -- check data
 select *from actorcopy;
 
 -- updating single row multiple column
 update actorcopy
 set first_name = "gani", last_name = "memon"
 where actor_id = 2;
 
 -- check data
 select *from actorcopy;
 
 -- Updating multiple Row Single column
 update actorcopy
 set first_name = "mohd"
 where actor_id in (3,4,5);

select *from actorcopy;

-- Updating multiple row an multiple column
update actorcopy
set first_name = "Shahid",
	last_name = "Husain",
    last_update = default
where actor_id between 6 and 8;

select *from actorcopy;

-- Update using select statements
update actorcopy
set first_name = "Shahid"
where actor_id in (select actor_id
					from sakila.film_actor
                    where film_id = 1);
select *from actorcopy;

-- clean up 
drop table actorcopy;


                    
 