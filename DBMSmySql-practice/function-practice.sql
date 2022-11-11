create database person;
use Person;

create table detail
(
	id int not null auto_increment,
    name varchar(50) not null,
    email varchar(30) not null unique,
    last_update timestamp not null default current_timestamp on update current_timestamp,
    primary key(id)
);
drop table detail;
select *from detail;

insert into detail(id, name, email, last_update)
		values(1, 'Shahid', 'sh@gmail.com', default),
        (2, 'Shivam', 'shi@gmail.com', default),
        (3, 'Shahid', 'sd@gmail.com', default),
        (4, 'Rehan', 'rh@gmail.com', default),
        (5, 'Ahmed', 'ah@gmail.com', default),
        (6, 'Shahid', 'sha@gmail.com', default);
        
select *from detail;

delimiter //
create trigger before_insert_value
before insert on detail
for each row
begin
		set new.name = concat(upper(substring(new.name, 1,1)),
							lower(substring(new.name from 2)));
                            
		end //
        
delimiter ;
        
drop trigger before_insert_value;

insert into detail (name, email) values("Husain", "hs@gmail.com");
select *from detail;

insert into detail (name, email) values("rehaN", "rn@gmail.com");
select *from detail;

insert into detail (name, email) values ('ali', 'al2gmail.com');
select *from detail;

drop table detail;
drop trigger before_insert_value;

use person;
select *from detail;

create table Audit_detail
(
	id int,
    name varchar(50),
    email varchar(30),
    last_update timestamp,
    Rowvalue varchar(50)
);

select *from Audit_detail;

delimiter //
create trigger after_update_value

	after delete on detail
    for each row
    begin
			insert into Audit_detail(id, name, email, Rowvalue)
            values(old.id, old.name, old.email, "delete row");
            
           --  insert into Audit_detail(id, name, email, Rowvalue)
--             values()
end //

delimiter ;
            
delete from detail
where id = 2;

select *from Audit_detail;