create  database  visuallabs;
use visuallabs;
create table student
(
name varchar(50),
phone_number varchar(20),
course varchar (20),
course_fees int
);
select *from student;
drop table student;
drop database visuallabs;
insert into student values("Shahid", "12345678910", "DBMS", 7500);
insert into student values("Mohammed", "12345678910", "DBMS", 7500);
insert into student values("Raza", "1234567757", "DBMS", 7500);
insert into student values("sohail", "12345678910", "DBMS", 7500);
truncate table student;
use sakila;
select * from customer;
select * from city;
use world;
select * from sakila.language;






