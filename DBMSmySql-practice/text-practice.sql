create database company;
use company;

create table employee
(
	emp_id int not null,
    emp_name varchar(50) not null,
    emp_phone varchar(12) not null unique,
    emp_email varchar(20) not null unique,
    primary key (emp_id)
);
select *from employee;
truncate table employee;
insert into employee(emp_id, emp_name, emp_phone, emp_email)
			values(1, 'Shahid', '9001133456', 'sh@gmail.com'),
            (2, 'Raza', '0987823456', 'rz@gmail.com'),
            (3, 'shivam', '9983223456', 'shiv@gmail.com'),
            (4, 'mohammed', '9832123541', 'mohd@gmail.com'),
            (5, 'Aryan', '9800023456', 'ar@gmail.com');
--  insert into employee values (6, 'shahid', '0099887766', 'hid@gmail.com');
--  insert into employee values(7, 'Ali', '9832199891', 'ali@gmail.com');
            
select *from employee;
-- alter
Alter table employee
add column salary int default 30000;

select *from employee;

create table customer
(
	cust_id int not null,
    emp_id int not null,
    cust_name varchar(50) not null,
    address varchar(50) not null,
    cust_age int,
    last_update timestamp not null default current_timestamp on update current_timestamp,
    foreign key(emp_id) references employee(emp_id)
);
select *from customer;


insert into customer values(1, 2, 'rahul', 'kurla', 22, default);
insert into customer values(2, 1, 'shivam', 'kalyan', 22, default);
insert into customer values(3, 3, 'aryan', 'colaba', 22, default);
insert into customer values(4, 4, 'macno', 'bhivandi', 22, default);
insert into customer values(5, 5, 'rushi', 'kalyan', 22, default);
insert into customer values(6, 2, 'soniya', 'kalyan', 22, default);
insert into customer values(7, 5, 'rahul', 'kalyan', 22, default);


select *from customer;
select *from employee;

alter table employee
add column DOP timestamp not null default current_timestamp on update current_timestamp;
-- drop table customer;

-- joint 
select employee.*, customer.*
from employee
inner join customer on employee.emp_id = customer.cust_id;


select emp.*, cust.*
from employee emp
inner join customer cust on emp.emp_name = cust.cust_name;

select emp.emp_id as EMPLOYEEID, emp.emp_name as AMPLOYEENAME,
		cust.cust_id as CUSTOMERID, cust.cust_name as CUSTOMERNAME
from employee emp
inner join customer cust on emp.emp_name = cust.cust_name;

select emp.emp_id as EMPLOYEEID, emp.emp_name as AMPLOYEENAME,
		cust.cust_id as CUSTOMERID, cust.cust_name as CUSTOMERNAME
from employee emp
left outer join customer cust on emp.emp_name = cust.cust_name;

-- unoin 
select emp.emp_id as EMPLOYEEID, emp.emp_name as AMPLOYEENAME
from employee emp
union all
select cust.cust_id as CUSTID, cust.cust_name as CUSTNAME
from customer cust
order by EMPLOYEEID;

select emp.emp_id as EMPLOYEEID, emp.emp_name as AMPLOYEENAME
from employee emp
union 
select cust.cust_id as CUSTID, cust.cust_name as CUSTNAME
from customer cust
order by EMPLOYEEID;

-- views
create view vw_Allemp
as
select *from employee; 

select *from vw_allemp;

select *from vw_Allemp
where emp_name like 'A%';

select *from vw_Allemp
where emp_name like 's%';

create view vw_Allcust
as
select *from vw_Allemp;

select *from vw_Allcust;
drop view vw_Allemp;
drop view vw_Allcust;

-- data security

select *from customer;
select *from employee;

select emp.emp_id, emp.emp_name, emp.emp_phone,
		cust.cust_id, cust.cust_name, cust.cust_age, emp.salary
from employee emp
inner join customer cust on
cust.cust_id = emp.emp_id
where emp.emp_id = 2;

-- stored procedure




