create database college;
use college;

create table teacher
(
 teacher_id varchar (10),
 teacher_name varchar(50),
 teacher_subject varchar(20),
 teacher_address varchar(50),
 salary int
);

insert into teacher values("1750", "SanaKhan", "DBMS", "MyAddress", 5700 );
insert into teacher values("1001", "farhaAnsari", "C-Prog", "MyAddress", 75000 );
insert into teacher values("1743", "MyTeacher", "Data-Structure", "MyAddress", 33000 );
insert into teacher values("1122", "SanaKhan", "Java", "MyAddress", 2111 );
insert into teacher values("1234", "SalehaKhan", "Sql-surver", "MyAddress", 6600 );
select *from teacher;

use world;
select* from country;

select concat(Name, " ", Code) as NameCode, Continent, Region, SurfaceArea
from country;

select* from country
where Population <= 100000
order by Population desc;

select* from country
where Population between 100000 and 1000000
order by population;

select* from country
where Population not between 10000 and 100000
order by Population;

select *from country
where region like "w%"
order by region;

select *from country
where Continent like "a__a"
order by Continent;

select *from country
where Region like "M%E%";

select *from country
where Region like "ME%";






