create database gameplayer;
use gameplayer;

create table playerinfo
(
	player_id int not null auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50),
    last_update timestamp not null default current_timestamp on update  current_timestamp,
    primary key(player_id)
);

insert into playerinfo(first_name, last_name, last_update) values ("Shahid", "Ansari", "2002-04-20");
select *from playerinfo;

insert into playerinfo values (default, "Mohammed", "Raza", default);
select *from playerinfo;

insert into playerinfo(first_name, last_name) values ("Shivam", "Sharma");
select *from playerinfo;

insert into playerinfo values(default, "Salman", NULL, default);
select *from playerinfo;

insert into playerinfo(first_name) values ("Rehan");
select *from playerinfo;

insert into playerinfo (first_name,last_name) values ("Rohit", "Khurana");
select *from playerinfo; 

-- insert multi rows column
insert into playerinfo (first_name, last_name, last_update)
						values("Shikhar", "dhawan", default),
						("Virat", "koli", default),
                        ("Ravindra", "Jadeja", default),
                        ("Mohammed", "Shami", default),
                        ("Hardik", "Pandey", default),
                        ("Deepak", "Hooda", default);
select *from playerinfo;

-- sub query

insert into playerinfo (first_name, last_name, last_update)
select first_name, last_name, last_update
from sakila.actor
where first_name = "Nick";

select *from playerinfo

