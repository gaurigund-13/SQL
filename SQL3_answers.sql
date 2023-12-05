create database ravetetl;
-- View all databases 
show databases;
-- Use the database required
use ravetetl;
-- View the tables in database
show tables;
-- Creating a table Dept
create table Dept
(
Deptid int primary key,
Deptname varchar(100) NOT NULL
);    -- View the table details
describe Dept;
-- View the dept table
select * from dept;
-- Insert into values
insert into Dept
values (1,'Sales'),(2,'HR'),(3,'Manufacturing'),(4,' Purchase');
-- View dept table
select * from dept;

-- Trying to add null value in dept
insert into dept
values ( 5,null);
-- View the table
select * from dept;

-- Trying to add duplicate value in dept

insert into dept
values (4,'Marketing');

-- Viewing the table
select * from dept;


-- insert record in dept table

insert into dept
values (5,'Marketing');

-- create employee table
create table employee(
empid int primary key,
first_name varchar(100) not null,
last_name varchar(100) not null,
email varchar(100) unique,
deptid int not null,
salary decimal(10,2) check (salary>0),
hiredate date default '2023-01-01',
foreign key(deptid) references dept(deptid)
);
   
-- describe emp table
describe employee;

-- view the emp table
select * from employee;

-- Inserting values in emp table
insert into employee
values (1,"jyoti","chavan","jyoti@gmail.com",2,25000,default);

insert into employee
values (2,"shraddha","chavan","shraddha@gmail.com",2,25000,'2023-11-01');
-- View the employee table
select * from employee;

-- Trying to add null values to firstname
insert into employee
values(3,"ram",null,"ram@gmail.com",1,35000,default);
 

-- view the employee table
select * from employee;

-- Adding the employee 2
insert into employee
values(3,"ram","sharma","ram@gmail.com",1,35000,default);

-- view the employee table
select * from employee;

-- Trying to add duplicate email
insert into employee
values(4,"ram","Yadav","ramyadav@gmail.com",3,45000,default);

-- View the table again
select * from employee;

-- Emp3 proper entry


-- View the emp table


-- Adding DeptId which does not exists
insert into employee
values(5,"Rahul","sharma","sharma@gmail.com",10,35000,default);

-- View the table
select * from employee;

-- Correct entry for 4 
insert into employee
values(5,"Rahul","sharma","sharma@gmail.com",5,35000,default);

-- view the emp table again
select * from employee;

-- Trying to add negative or 0 salary
insert into employee
values(6,"Rahul","Patil","rahul@gmail.com",4,0,default);

-- Correct entry for emp 5
insert into employee
values(6,"Rahul","Patil","rahul@gmail.com",4,50000,default);


-- View the emp table
select * from employee;
