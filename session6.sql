-- 1 Create database institute
create  database institute;

-- 2 use database institute
use institute;

-- 3 create table teacher with columns id,teacher_name,email,contact,doj

create table teacher(id int primary key,
teacher_name varchar(30) not null,
email varchar(100) not null,
contact char(10),
doj date default '2023-01-01');

-- 4 view table teacher

select * from teacher;

-- 5 insert record in table teacher

insert into teacher
values(1,'Anushka','anushka@gmail.com',"9876544567",default),
(2,'Kushal','kushal@gmail.com',"9876547890",default),
(3,'Aayush','aayush@gmail.com',"7654344567",default);

-- 6. view record of table
 
select * from teacher;

-- 7. set the safe update mode to 0

set SQL_SAFE_UPDATES = 0;

update teacher
set email="kushal123@gmail.com"
where id=2;


-- 8. Update the email for any user


update teacher
set email="anushka123@gmail.com"
where id=1;

-- 9. View the records of table

select * from teacher;

-- 10. update  contact and name for any user in existing table



-- 11. View the updated table




-- 12. Add multiple conditions in where clause
update teacher 
set email="kushal@gmail.com"
where id=2 and teacher_name="kushal";

-- 13. Check teacher table again

select * from teacher;

-- 14. Deleting an entry
delete from teacher where teacher_name="kushal";

-- 15 . check teacher table

select * from teacher;

-- update record 1 set email as anushka@gmail.com

-- 16. MySQL DELETE and LIMIT Clause


-- delete FROM teacher ORDER BY name LIMIT 3;  

delete from teacher 
order by id
limit 1;

-- 16. Turn on SQL_SAFE_UPDATES
set SQL_SAFE_UPDATES=0;

-- 17.  Create table student with Autoincrement in sr. no.

create table student
(
rno int primary key auto_increment,
student_name varchar(200) not null,
email varchar(150) unique
);
-- 18. Describe the table

describe student;
-- 19. For first time add a single entry
insert into student
values(rno,"Gauri", "gauri123@gmail.com");

-- 20. Check the table

select * from student;

-- 21. Add multiple entries

insert into student
values(rno,"Priya", "priya@gmail.com"),
(rno,"kiya","kiya123@gmail.com");
-- 22. View the table

select * from student;

-- 23. Adding a column age ALTER

alter table student add age int;

update student 
set age=21
where rno=1;

update student 
set age=23;
-- 24. View the table

select * from student;
