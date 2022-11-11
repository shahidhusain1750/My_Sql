-- function 
use sakila;

select *from language;

-- change delimiter
delimiter //

-- create function
create function GetLanguage(Lang_Id int)
returns varchar(100)
deterministic
begin
	declare LangName varchar(100);
    
    select name 
    into LangName
    from language
    where language_id = Lang_id;
    
    return (LangName);
    
end //

-- change delimiter
delimiter ;
drop function GetLanguage;
-- call  Get function
select GetLanguage(1) as Language_name;
select GetLanguage(2);
select GetLanguage(3);
select GetLanguage(4);

select *from film;
select *from language;

select film_id, title, Language_id, GetLanguage(Language_id) as movieLanguage
from film;

update film
set language_id = 2
where film_id = 2;
/*In this example we have use our function in select statement*/

select title, Language_id, Getlanguage(language_id) as MovieLanguage
from film
where getlanguage(language_id) = 'English';
-- we can use function in where clouse

drop function getlanguage;