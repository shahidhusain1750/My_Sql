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
 
 insert into actorcopy (first_name, last_name, last_update)
select first_name, last_name, last_update
from sakila.actor;

select *from actorcopy;

-- delete single row
delete
from actorcopy
where actor_id = 1;

select *from actorcopy;

-- delete Multiple row
delete from actorcopy
where actor_id in (3,4,5);

select * from actorcopy;

-- Updating using select statement

delete from actorcopy
where actor_id in(select actor_id
				from sakila.film_actor
                where film_id = 1);
select *from actorcopy;

-- delete all rows from table

delete from actorcopy;

select *from actorcopy;

-- clean up 
drop table actorcopy;





















-- Alter 

alter table actorcopy
modify column last_name varchar(65) not null;

alter table actorcopy
add column salary int default 100000;

alter table actorcopy
drop column salary;

select *from actorcopy;

-- clean uo
drop table actorcopy;
