-- Aggregate function

use world;

select *from country;
select count(Population) as count
from country;
select count(code) as count 
from country;

select sum(Population) as totalPopulation,
	avg(Population) as AvegPopulation
from country;

select name, max(Population) as MaxPopulation
from country
where Population = 0;

select count(Indepyear) as TotalRows from country;
 
 select* from country
 where population = 0;
 
 select min(Population) as smallestPopulation
 from country;
 
 select max(Population) as maximumPopulation
 from country;
 
 select *from country 
 where Population between 1000 and 10000
 order by Population;
 
 select *from country where Population = 0;
 select *from country where Population >= 100000000;
 
 select*from country;
 -- Group by
 select count(code) as RowCount, region
 from country
 group by region
 order by RowCount;
 
 -- having. -- between also use
 select region, count(code) as Count
from country
group by region
having Count >= 15;


-- PRACTICE OF AGGREGATE FUNCTION

-- count function
select *from country;
select count(Population) as count
from country;

-- SUM(FUNCTION) & avg function
select *from country;
select sum(Population) as TotalPopulation,
	avg(Population) as Totalavg
    from country;

-- MAX (function)

select *from country;
select max(Population) as MaximumPopulation from country
where Population = 0;

select *from country;
select min(Population) as minPopulation from country;

select *from country
where  Population = 0;

select *from country where Population between 1000 and 10000
order by Population;

-- GROP BY
select *from country;
select count(code) as RowCount, region
from country
group by region
order by region, RowCount;

-- having
select *from country;
select region, count(code) as Count
from country
group by region
having count > 10
order by region, count;

-- Test Practice

use world;
select *from country;

select count(code) as TotalRows
from country;

select max(Population) as MaxPopulation
from country;

select min(Population) as Population
from country;

select name, sum(Population) as totalPopulation,
 avg(Population) as avgOfPopulation
 from country;

select *from country
where Population between 1000 and 10000
order by Population;


-- group by
select *from country;
select count(code) as RowCount , region
from country
group by region
order by region, RowCount; 

select *from country;
select region, count(code) as RowCount
from country
group by region
having count > 15
order by RowCount, region;

select *from country;
select region, count(code) as Count
from country
group by region
having Count > 10
order by region, count
