-- turn on Event 

set global event_scheduler = on;

use demo;

create table Event_Audit
(
	Id int not null auto_increment,
    Last_update timestamp,
    primary key (Id)
);

-- change delimiter
delimiter //
create event one_time_event
on schedule at now() + interval 5 second
do begin
	insert into Event_Audit(last_update)
    values (now());
    
end //

delimiter ;

select *from Event_Audit;

drop table Event_Audit;
drop event one_time_event;

-- recurring event
-- turn on Event scheduler

set global event_scheduler = on;

create table event_Audit
(
	Id int not null auto_increment,
    Last_update timestamp,
    primary key (Id)
);

delimiter //

create event Recurring_time_event
on schedule every 2 second
starts now()
do begin
	insert into Event_Audit (last_update)
    values (now());
    
end //

delimiter ;

select *from Event_Audit;
drop table event_Audit;