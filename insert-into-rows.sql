-- insert statements
create database plural;

use plural;

create table actorsample
(
	actor_id int not null auto_increment,
    first_name varchar(45) not null,
    last_name varchar(45),
    last_update timestamp not null default current_timestamp on update current_timestamp,
    primary key(actor_id)
);
 -- Inasert Single Now

 insert into actorsample (first_name, last_name, last_update)
 values ("addul", "gani", "2022-05-26");
 
 -- check data
 select* from actorsample;

-- Insert single row
insert into  actorsample
values (default, "mohd", "Mekno", default);

-- check data
select* from actorsample;

-- insert single row
insert into actorsample (first_name, last_name)
values ("kshitij", "Dave");

-- check data
select* from actorsample;

-- insert signal row 
insert into actorsample(first_name)
values ("shivam");

-- check data
select* from actorsample;

-- insert single row
-- Error
insert into actorsample (last_name, first_name)
values ("Dave", "shahid");

-- check data
select* from actorsample;

-- insert single row
insert into actorsample (first_name, last_name, last_update)
values("Pinal", NULL, default);

-- check data
select* from actorsample;

-- Insert Multiple row

insert into actorsample (first_name, last_name, last_update)
values ("Pinal", "Dave",default),
		("Nupar", "dave", default),
        ("Huzefa", "abx", default),
        ("Shivam", "Dave", default);
        
	-- check data
    select* from actorsample;
    
    -- Sub query
    
    insert into actorsample(first_name, last_name, last_update)
    select first_name, last_name, last_update
    from sakila.actor
    where first_name = "Nick";
    
    -- check data
    select * from actorsample;
    
    -- Clean up
    drop table actorsample;
    
    


