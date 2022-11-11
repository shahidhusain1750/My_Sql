create database amazone;
use amazone;
create table employee
 (
	emp_name varchar(50) not null,
    emp_id int not null auto_increment,
    emp_work varchar(50) not null,
    emp_number varchar(12) not null unique,
    emp_salary int not null,
    primary key(emp_id)
);
insert into employee(emp_name, emp_id, emp_work, emp_number, emp_salary)
				values("Shahid", 1, "Software Engineer", "8787865654", 60000),
                ("Raz", 2, "Data Scientist", "8787862121", 60000),
                ("Shahid", 3, "Software Engineer", "8787323454", 60000),
                ("Shiva", 4, "Data Analyst", "1211865654", 60000),
                ("shahid", 5, "Web devloper", "8710095654", 60000),
                ("Ahmed", 6, "Technical Engineer", "8722225654", 60000);
                
select *from employee;

truncate table employee;
 
drop table employee;

create table customer
(
	order_id int not null,
    emp_id int not null,
    cust_name varchar(50) not null,
    email varchar(30) not null unique,
    foreign key(emp_id) references employee(emp_id)
);
select *from customer;

drop table customer;

delimiter //
create procedure InsertValues(order_id int, emp_id int, cust_name varchar(50), email varchar(30))
begin
		Insert into customer(order_id, emp_id, cust_name, email)
				      values(order_id, emp_id, cust_name, email);
end //

delimiter ;

drop procedure InsertValues;
call InsertValues(1, 1, "Shahid", "sh@gmail.com");
call InsertValues(2, 1, "Shiv", "sv@gmail.com");
call InsertValues(3, 2, "Shahid", "sd@gmail.com");
call InsertValues(2, 3, "Raaz", "rz@gmail.com");
call InsertValues(4, 5, "Husain", "hs@gmail.com");
call InsertValues(6, 6, "Shiva", "siv@gmail.com");

select *from customer;
select *from employee;

select e1,  c1
from employee e1
inner join customer c1 on e1.amp_name = c1.cust_name;