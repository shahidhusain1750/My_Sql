/* Self Join*/

create database test1;
Use Test1;

create table Employee
(
	EmployeeID int primary key,
    Name varchar(50),
    ManagerID int
);


-- insert sample data

insert into Employee values(1, 'Mike', 3),
						(2,'David', 3),
                        (3, 'Roger', Null),
                        (4, 'Marry', 2),
                        (5, 'Joseph', 2),
                        (7, 'Ben', 2);
		-- check data
        select *from Employee;
        
        -- self join -in- Inner join
select e1.name as EmployeeName, e2.name as Managername
from employee e1
inner join employee e2 on e1.managerID = e2.EmployeeID;

-- Outer join
select e1.name as EmployeeName, ifnull(e2.Name, 'Top Manager') as ManagerName
from employee e1
left join employee e2 on e1.managerID = e2.EmployeeId;

/* Inner Join with Natural Join*/
use test;

select *from table1;
select *from table2;

-- Inner join

select t1.ID as T1ID, t1.Value as T1VALUE,
	t2.Id as T2ID, t2.Value as T2VALUE
from table1 t1
inner join table2 t2 on t1.ID = t2.ID;

/* Inner Join with Natural Join*/

select t1.ID as T1ID, t1.Value as T1VALUE,
	t2.Id as T2ID, t2.value as T2VALUE
from table1 t1
Natural inner join table2 t2;

-- left join
select t1.ID as T1ID, t1.Value as T1VALUE,
	t2.Id as T2ID, t2.value as T2VALUE
from table1 t1
left join table2 t2 on t1.ID = t2.ID;

select t1.ID as T1ID, t1.Value as T1VALUE,
	t2.Id as T2ID, t2.value as T2VALUE
from table1 t1
Natural left join table2 t2;