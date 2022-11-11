use sakila;
-- change delimiter
delimiter //
-- Create Stored procedure
create procedure whileloop()
begin
	declare i int default 1;
    while i <6 do
			select pow(i, i);
		end while;
        end //

-- change delimiter
delimiter ;
-- Call Stored Procedure
call whileLoop();

drop procedure whileloop;