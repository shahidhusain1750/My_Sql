-- Stored procedure

use sakila;
select *from language;

-- change delimetere
delimiter //
 -- create store procedure
 
 create procedure GetLanguage()
 begin
		select *from language;
end//

-- Again change delimeter
delimiter ;

-- call Stored Procedure
call GetLanguage();
-- Drop Procedures
drop procedure GetLanguage;
