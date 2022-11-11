-- self join practice 

create database Test2;
use Test2;

create table Testing
(
	employeID  int primary key,
    name varchar (50),
    ManagerID int
);
drop database Test2;

insert into Testing values (1, 'Mike', 1),
						(2, 'David', 3),
                        (3, 'rogher', Null),
                        (4, 'marry', 2),
                        (5, 'joseph', 2),
                        (7, 'ben', 2);
select *from Testing;

select e1.name as EmployeName, e2.name as ManagerName
		from employe e1
        inner join employe e2 on e1.EmployeID = e2.ManagerID;


-- Outer join
select e1.name as EmployeeName, ifnull(e2.Name, 'Top Manager') as ManagerName
from employee e1
left join employee e2 on e1.managerID = e2.EmployeeId;


/*Union All*/

use test;

select *from table1;
select *from table2;


select	t1.ID as T1ID, t1.value as T1NAME
        from table1 as t1
        union all
        select t2.ID as T2ID, t2.value as T2VALUE
        from table2 as t2;

/* Union all*/
-- Error
/*Union operator will work if both the select statement should have same number of columns*/
select t1.ID as T1ID
from table1 as t1
union all
select t2.ID as T2ID, t2.value as T2VALUE
from table2 as t2;

/*Union eliminate repeated rows*/
select t1.ID as T1ID, t1.value as T1NAME
from table1 as t1
union 
select t2.ID as T2ID, t2.value as T2NAME
from table2 as t2;


-- /* Union all support orderby clouse*/
select t1.ID as T1ID, t1.value as T1NAME
from table1 as t1
union all
select t2.ID as T2ID, t2.value as T2NAME
from table2 as t2
order by T1ID desc;

/* notice that always the column name is of 1st table*/

-- Full outer join

select t2.ID as T2ID, t2.value as T2NAME,
		t2.ID as T2ID, t2.value as T2VALUE
        from table1 t1
        left join table2 t2 on t1.ID = t2.ID
        union all 
        select t1.ID as T1ID, t1.Value as T1VALUE,
        t2.ID as T2ID, t2.value as T2VALUE
	from  table1 t1
    right join table2 t2 on t1.ID = t2.ID;
    
   select t2.ID as T2ID, t2.value as T2NAME,
		t2.ID as T2ID, t2.value as T2VALUE
        from table1 t1
        left join table2 t2 on t1.ID = t2.ID
union 
select t1.ID as T1ID, t1.Value as T1VALUE,
				t2.ID as T2ID, t2.value as T2VALUE
	from  table1 t1
    right join table2 t2 on t1.ID = t2.ID;
