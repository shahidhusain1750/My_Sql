create database store1;

use  store1;

create table customer
(
	Cust_id int,
    Cust_Name varchar(80) not null,
    Cust_Email varchar(50) not null unique,
    Cust_ph varchar(12) not null unique,
    Address varchar(60) not null,
    primary key(Cust_id)
);

create table Product
(
	Order_id int,
    Cust_id int not null,
    Prod_name varchar(50) not null,
    Price int not null,
    DOP timestamp not null default current_timestamp on update current_timestamp,
    foreign key(Cust_id) references customer(Cust_Id)
);

insert into customer(Cust_Id, Cust_Name, Cust_Email, Cust_Ph, Address)
values(1, 'Esa', 'Esa@gmail.com', '7423745891', 'Bhendi Bazar'),
	(2, 'maknojia', 'Mohd@gmail.com', '1234584309', 'Aghripada'),
    (3, 'gani', 'gani@gmail.com', '8659009832', 'Nagpada'),
    (4, 'Umair', 'Umai@gmail.com', '8674932100', 'Nagpada');
insert into customer values(5, 'Shahid', 'Shahid@gmail.com', '7584392009', 'grantroad');
    
select *from customer;
truncate table product;
insert into product values(1,2, 'Shoes', 500, default);
insert into product values(2,1, 'Glasses', 1000, default);
insert into product values(3,2, 'shirt', 2000, default);
insert into product values(4,3, 'blazer', 7000, default);
insert into product values(5,1,  'Watrch', 3000, default);

select *from product;

-- Error
insert into product values(3,8, 'Shahes', 5000, default);

/* Inner joins */
select cu.Cust_Id as CustomerId, Cu.Cust_name as CustomerName,
	pr.Cust_id as ProdCost_ID, pr.Order_id as OrderId, pr.Prod_name as PrName, pr.Price as Cost
    from customer cu
    inner join Product pr on cu.Cust_Id = pr.Cust_id;
    
    select customer.*, product.*
    from customer
    inner join Product on customer.Cust_Id = product.Cust_Id;


