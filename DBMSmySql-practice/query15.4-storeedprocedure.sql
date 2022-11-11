use sakila;

select *from language;
-- change delimiter
delimiter //
-- Create Stored procedure
create procedure InsertValue(NameofLang varchar(100))
begin
	insert into language (name, Last_update)
    values (NameofLang, now());
    
    select *from language;
end //

-- change delimiter
delimiter ;

call InsertValue('Hindi');
call InsertValue('Marathi');

call InsertValue('Kannada');

select *from language;

drop procedure InsertValue;