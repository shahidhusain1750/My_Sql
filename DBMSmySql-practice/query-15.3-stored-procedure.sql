use sakila;

-- change delimiter
delimiter //
-- create stored procedure with parameters
create procedure Fullname(FirstName varchar(100), LastName varchar(100))
begin 
	declare FullName varchar(200);
    set FullName = concat(FirstName, ' ', LastName);
    select FullName;
end //

-- change delimiter
delimiter ;

-- Call Stores Procedure
call FullName('Abdul', 'Gani');
call FullName('Irfan', 'Memon');
Drop procedure FullName;