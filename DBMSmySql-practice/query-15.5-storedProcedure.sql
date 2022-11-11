use sakila;

select *from language;
-- Change delimiter
delimiter //
-- Create stored procedure
create procedure InsertValue(
in Nameoflang varchar(100),
out Langid int)
begin 
	insert into language (name, Last_update)
    values (NameofLang, now());
    end //
    
    -- change delimiter
    delimiter ;
    
    call InsertValue('Gujrati', @langId);
    
    select concat('Last Language_Id is', @LangId) as Last_Language_Id;
    
    select name, concat('Last Language_Id is', @LangId) as Last_Language_Id
    from language
    where language_Id = @LangId;
    
    select *from Language;
    
    drop procedure InsertValue;
    
    