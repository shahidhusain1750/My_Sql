use sakila;

select* from actor;

create view vw_AllActor
as select *from actor;

select *from vw_AllActor;

select *from vw_allactor
where first_name like '%A';

select *from vw_allactor
where last_name like 'A%';

create view vw_ActorA as
select *from vw_AllActor
where first_name like 'A%';

select *from vw_ActorA;

select *from vw_ActorA
where last_name like '%A%';

create view vw_Actor as 
select *from vw_ActorA
where last_name like 'A%';

select *from vw_ActorA;

create view vw_ActorAnA as 
select *from vw_Actor
where first_name like 'A%';

select *from vw_ActorAnA;

select *from vw_Actor
where last_name like '%A%';

create view vw_ActorAnA_o as 
select *from vw_ActorAnA
where first_name like 'AL%';

select *from vw_ActorAnA_o;

select *from vw_actorana
order by first_name;

drop view vw_AllActor;
drop view vw_ActorA;
drop view vw_Actor;
drop view vw_ActorAnA;
drop view vw_ActorAnA_o