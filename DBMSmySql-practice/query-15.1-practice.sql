create database college1;
use college1;

create table student1
(
	st_Id int not null,
    st_Name varchar(50) not null,
    st_phone varchar(12) not null unique,
    address varchar(100) not null,
    st_subject varchar(50) not null,
    primary key(st_Id)
);

select *from student1;
insert into student1(st_Id, st_Name, st_phone, address, st_subject)
			values(1, 'Shahid', '1523890865', 'Nagpada', 'Dbms'),
            (2, 'Shivam', '1511190865', 'Colaba', 'Java'),
            (3, 'Aryan', '1509870865', 'Colaba', 'data-structure'),
            (4, 'Ali', '1522534165', 'Kalyan', 'Python'),
            (5, 'Mohammed', '0093890865', 'Kurla', 'C-prog');
select *from student1;

create table course
(
	cours_Id int unique,
    st_Id int not null,
    cours_name varchar(30) not null,
    staff_name varchar(50) not null,
    foreign key (st_Id) references student1(st_Id)
);
select *from course;
drop table course;
insert into course(cours_Id, st_Id, cours_name, staff_name)
  values(1, 2,  'DBMS','Gani'),
        (2, 1, 'JAVA', 'Aiman'),
        (3, 3, 'C-PROG', 'Gani'),
        (4, 1, 'DATA-STRUCTURE', 'Aiman'),
        (5, 2, 'PYTHON', 'Aiman');
truncate table course;
select *from course;
select *from student1;

-- use alter to add column in a table
alter table course
add column course_fees int default 7500;

select *from course;

delimiter //
create procedure InsertIntoNewRow(cours_Id int,st_Id int , cours_name varchar(30), staff_name varchar(50), course_fees int)
begin 
	insert into course(cours_Id, st_Id, cours_name, staff_name, course_fees)
                values(cours_Id, st_Id, cours_name, staff_name, course_fees);
        select *from course;
end //

delimiter ;
drop procedure InsertIntoNewRow;
call InsertIntoNewRow(6, 2, 'C#', 'harshit', 7500);
call InsertIntoNewRow(7, 1, 'Javascript', 'Harshit', 7500);


-- joints 
select student1.*, course.*  
from student1
inner join course on student1.st_subject= course.cours_name 
