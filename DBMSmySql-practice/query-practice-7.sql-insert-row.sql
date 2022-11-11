-- insert-into- rows
create database plural;
use plural;

create table actordetail
(
	actor_id int not null auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50),
    last_update timestamp  not null default  current_timestamp on update current_timestamp,
    primary key (actor_id)
); 

insert into actordetail (first_name, last_name, last_update) values("shahid", "ansari", "2022-08-20");
select* from actordetail;

insert into actordetail values(default, "gani", "ahmed", default);
select* from actordetail;

insert into actordetail (first_name, last_name)values("Mohammed", "Siddiqu");
select* from actordetail;

insert into actordetail (first_name) values ("shivam");
select* from actordetail; 

-- its throug Error because is ther no null applid
insert into actordetail(last_name) values ("adnan");
select *from actordetail;

insert into actordetail (first_name, last_name, last_update) values ("balaji",null, default);
select* from actordetail;

-- insert multi rows 
insert into actordetail (first_name, last_name, last_update) 
	values("Rehan", "Ansari", default),
	("Dilshad", "Raza", default),
    ("Saalim", "Husain", default),
    ("Ahmed", "Mansuri", default),
    ("Shahid", "Husain", default);
    
select *from actordetail;

insert into actordetail (first_name, last_name, last_update)
select first_name, last_name, last_update
from sakila.actor
where first_name  = "joe"
order by first_name;

select *from actordetail
 
