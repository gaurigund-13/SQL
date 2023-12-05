show databases;

use ETLHIVE;

create table wakad_student(
Id int,
Student_Name varchar(30),
Email varchar(30),
Contact char(11),
Payment_status varchar(10)
);

show tables;

select * from wakad_student;

insert into wakad_student values(101, "Gauri", 
"gaurigund@gmail.com", "932237629", "Complete"),
 (102, "Nikita", "nikitagund@gmail.com", "932298445", "Complete"),
(103, "Dipti", "diptit@gmail.com", "997043357", "Complete");

select * from wakad_student;

create table staff(
id int,
Teacher_Name varchar(30),
Email varchar(30),
Sub varchar(20));

insert into staff values(
(112,"Utkarsh Gaikawad", "utkarsha.etlhive.com","Machine Learning"),
(113, "Pradnya", "pradnya.etlhive.com", "SQL"));

select * from staff;