create database college;
use college;

create table Student
(
	st_Id int auto_increment,
    st_name varchar(50) not null,
    phone_number varchar (12) not null unique,
    email  varchar (50) not null,
    address varchar (100) not null,
    primary key(st_Id)
);

insert into Student values (1, ' Shahid', '7645363217', 'sh@email.com', 'Nagpada'),
			(2, 'Husain', '6578988976', 'hh@gmail.com', 'Colaba'),
            (3, 'Ali', '7657890009', 'al@gmail.com', 'Colaba'),
            (4, 'Aryan', '7211234537', 'ar@gmail.com', 'kalyan'),
            (5, 'Aryan', '7212134537', 'ar@gmail.com', 'kalyan');
select *from Student;

create table course
(
	course_id int not null,
    st_Id int not null,
    course_name varchar(50),
    staff_name varchar(50),
    course_fees int,
    foreign key(st_Id) references Student (st_Id)
);
drop table course ;
insert into course values(1, 2, 'DBMS', 'Gani', 7500);
insert into course values(2, 1, 'Java', 'Aiman', 7500);
insert into course values(3, 3, 'C-prog', 'Gani', 7500);
insert into course values(4, 2, 'Data-Structure', 'Aiman', 7500);
insert into course values(5, 1, 'python', 'Aiman', 7500);

select *from Student;
select *from course;

delimiter //
create procedure InsertRow(course_id int, st_Id int, course_name varchar(50), staff_name varchar(50), course_fees int )
begin
		insert into course (course_id, st_id, course_name, staff_name, course_fees)
	    values (course_id, st_Id, course_name, staff_name, course_fees);
	select *from course;
    
end //
delimiter ;

call insertRow(6, 2, 'JavaScript', 'Gani', 7500);