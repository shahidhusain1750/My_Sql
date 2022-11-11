use sakila;
select *from rental 
where customer_id = 2;
select*
from customer;
select * from inventory;

-- change delimiter
delimiter //

-- create function
create function RentelCountbyCust(cust_id int)
returns int 
deterministic
begin
	declare RentalCount int;
    
    select count(*)
    into rentalCount
    from rental
    where customer_id = cust_id;
    
return(rentalCount);

end //

-- change delimiter
delimiter ;

select * from rental;
select *from customer;

select RentelCountbyCust(1);
select RentelCountbyCust(2);
select RentelCountbyCust(100);
select RentelCountbyCust(699);

-- call function
select customer_id,  first_name, last_name,
		RentelCountbyCust(customer_id) as Rentcount
        from customer;
        
drop function RentalCountsbycust;