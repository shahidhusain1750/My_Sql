create database store;

use store;

create table customer(
	cust_id int not null,
    cust_name varchar(50) not null,
    cust_phone varchar(12) not null unique,
    cust_email varchar(50) not null unique,
    primary key(cust_id)
);

select *from customer;
drop table customer;

change delimiter //
create procedure InsertValue(cust_id int, cust_name varchar(50), cust_phone varchar(50), cust_email varchar(50))
begin
insert into customer(cust_id, cust_name, cust_phone, cust_email)
				values(cust_id, cust_name, cust_phone, cust_email);

end //
change delimiter ; 

-- insert values in table by stores procedure
call InsertValue(1, "Shahid", "273617238", "sh123@mail.com");
call InsertValue(2, "Husain", "9809873547", "hu@gmail.com");
call InsertValue(3, "Ali", "0123987456", "ali@gmail.com");
call InsertValue(4, "Shivam", "8726512345", "shiv@gmail.com");

select *from customer;


create table product(
	prod_id int not null,
	cust_id int not null,
    prod_name varchar(50) not null,
    prodCust_name varchar(50) not null,
    prod_price int,
    foreign key(cust_id) references customer(cust_id)
);

insert into product(prod_id, cust_id, prod_name, prodCust_name, prod_price)
			values(1, 1, "Shoes", "Ali", 3000),
            (2, 2, "Shirt", "Shahid", 1000),
            (3, 1, "Jeans", "Husain", 2000),
            (4, 2, "blazer", "Ahmed", 5000);
            
truncate table product;
         
select *from product;
select *from customer;

select customer.*, product.*
from customer
inner join  product on customer.cust_name = product.prodCust_name;

select cu.cust_id as CUSTOMERID, cu.Cust_name as CUSTOMERNAME,
pr.cust_id as PRODUCTID, pr.prod_name as PRODUCTNAME, pr.prodCust_name as PRODUCTCUSTOMERNAME
from customer cu
inner join product pr on pr.cust_id = cu.cust_id;

select *from customer
where cust_name = "Shivam";

select *from customer
where cust_name like "h%";

