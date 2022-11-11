use sakila;

select *from language;
delimiter //
create procedure GetLanguage()
begin
	select *from language;
end //

delimiter ;
 call GetLanguage();
 drop procedure GetLanguage;
 
use sakila;
delimiter //
create procedure whileloop()

begin
    declare i int default 1;
    while i < 6 do
    select pow(i,i);
    set i = i + 1;
    end while;
end //
delimiter ;
call whileloop();
drop procedure whileloop;

use sakila;
delimiter //
 create procedure FullName(FirstName varchar(100), LastName varchar(100))
 begin
 declare FullName varchar(200);
	set FullName = concat(FirstName, ' ', LastName);
    select FullName;
end //

delimiter ;
call Fullname('Shahid', 'Husain');
call Fullname('Ali', 'Raza');
drop procedure FullName;

use sakila;
select *from language
delimiter //

create procedure InsertValue(nameofLang varchar(100))
begin
	insert into language(name, Last_Update)
    values(nameofLang, now());
    select *from language;
end //
delimiter ;

call InsertValue('Haryanwy');
call InsertValue('Malyalam');
drop procedure InsertValue;


    



    
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 