create database colleges;
use colleges;

create table students
(
	st_id int not null, 
    st_name varchar(50)not null,
    st_email varchar(30) null unique,
    st_phone varchar(12) null unique,
    address varchar(50)not null,
    last_entry timestamp not null default current_timestamp on update current_timestamp,
    primary key(st_id)
);

select *from students;

insert into students(st_id, st_name, st_email, st_phone, address, last_entry)
			values(1, 'Shahid', 'sh@gmail.com', '7564534321', 'nagpada', default),
            (2, 'Ali', 'ali@gmail.com', '9964761091', 'colaba', default),
            (3, 'Uzaifa', 'hz@gmail.com', '5564565011', 'ms ali road', default),
            (4, 'Shahid', 'sd@gmail.com', '1164534321', 'kalyan', default),
            (5, 'Shivam', 'sv@gmail.com', '7957433432', 'gavandi', default),
            (6, 'Shahid', 'si@gmail.com', '0064534321', 'kurla', default),
            (7, 'Gani', 'gn@gmail.com', '7560900091', 'bandra', default),
            (8, 'Aryan', 'ar@gmail.com', '0698574321', 'jj', default),
            (9, 'Esa', 'es@gmail.com', '7276451321', 'nashik', default),
            (10, 'Ahmen', 'ah@gmail.com', '8576434321', 'aurangabad', default);

select *from students;

create table courses
(
	cours_id int not null,
    st_id int not null,
    course_name varchar(50) not null,
    DOP timestamp not null default current_timestamp on update current_timestamp,
    foreign key(st_id) references students(st_id)
);

select *from courses;
drop table courses;

insert into courses(cours_id, st_id, course_name, DOP)
			values(1, 1, 'DBMS', default),
            (2, 2, 'Python', default),
            (3, 4, 'Java', default),
            (4, 1, 'Javascript', default),
            (5, 5, 'Html-Css', default),
            (6, 7, 'React', default),
            (7, 3, 'DBMS', default),
            (8, 1, 'python', default),
            (9, 2, 'Java', default),
            (10, 1, 'DBMS', default);
            
select *from courses;

alter table courses
add course_fees int  default 7500;

delimiter //
create procedure InsertValue(st_id int, st_name varchar(50), st_email varchar(30),
 st_phone varchar(12), address varchar(50))

begin 
		insert into students(st_id, st_name, st_email, st_phone, address)
				values(st_id, st_name, st_email, st_phone, address);
                
end //

delimiter ;
   
   drop procedure Insertvalue;
call InsertValue(11, 'Shanu', 'sn@gmail.com', '75465412312', 'MyAddress');

