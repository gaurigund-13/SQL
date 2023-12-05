-- create database
create database sqljoin;

-- use database sqljoin
use sqljoin;

-- create table 1
create table table1
(id int);

-- insert values in table1
insert into table1
values(1), (1), (1), (2), (3), (3), (3);

-- show values in tabel1
select * from table1;

-- create table 2
create table table2
(id int);

-- insert values in table2
insert into table2
values(1), (1), (2), (2), (4), (null);

-- show values in table2
select * from table2;

-- inner join
select * from table2 t2
join
table1 t1 on t2.id=t1.id;

-- count of records
 select count(*) from table1 t1
 join
 table2 t2 on t1.id=t2.id;
 
 -- left join
 
 select * from 
 table1 t1
 left join
 table2 t2 on t1.id=t2.id;
 
 -- count of left join
 select count(*) from 
 table1 t1 
 left join
 table2 t2 on t1.id=t2.id;
 
 -- right join
 select * from 
 table1 t1 
 right join
 table2 t2 on t1.id=t2.id;
 
 -- count of right join
 select count(*) from 
 table1 t1 
 right join
 table2 t2 on t1.id=t2.id;
 
 -- cross join
 select * from
 table1 t1
 cross join
 table2 t2;
 
 -- count of cross join
  select count(*) from
 table1 t1
 cross join
 table2 t2;

-- full join
/*select * from
table1 t1
full join 
table2 t2 on t1.id=t2.id;*/

SELECT * FROM table1 t1
LEFT JOIN table2 t2 ON t1.id = t2.id
UNION ALL
SELECT * FROM table1 t3
RIGHT JOIN table2 t4 ON t3.id = t4.id;

-- count of full join
SELECT count(*) FROM table1 t1
LEFT JOIN table2 t2 ON t1.id = t2.id
UNION ALL
SELECT count(*) FROM table1 t3
RIGHT JOIN table2 t4 ON t3.id = t4.id;
