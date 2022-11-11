create database demo;

use demo;

create table language
(
	Language_id int primary key auto_increment,
    name varchar(60) not null,
    last_update timestamp not null default current_timestamp on update current_timestamp
);

insert into language (name, last_update)
(select name, last_update
	from sakila.language);
    
use sakila;

select *from language;

delete from language
where language_id between 1 and 2;

-- function substring

select lower(substring('Shivam', 1,3));
select upper(substring('shivam' from 3));

delimiter //

create trigger language_Before_Insert
before insert on language
for each row

begin
	set new.name = concat(upper(substring(new.name, 1,1)),
						lower(substring(new.name from 2)));
end //

delimiter ;

insert into language (name)
values ('Spanish');

insert into language (name)
values('HINDI');

insert into language (name)
values ('gUZRATI');

-- lets check our table language

select *from language;
drop trigger Language_Before_Insert;