create database AssignmentJoin;

use AssignmentJoin;

--  create table continent
create table continent
(
continent_code varchar(50),
continent_name varchar(200)
);


insert into continent
values('AS','Asia'),
('AF','Africa'),
('NA','North America'),
('SA','South America'),
('EU','Europe'),
('AU','Australia');

-- 


--  create table countries

create table countries
(
country_code varchar(100),
country_name varchar(200),
continent_code varchar(200)
);

insert into countries
values ('IN', 'India', 'AS'),
('ZA', ' South Africa', 'AF'),
('US', 'United States of America', 'NA'),
('BR', 'Brazil', 'SA'),
('AU','Australia','AU'),
('AQ','Antarctica','AN');

select * from continent;


select * from countries;
--- Inner join

select * from countries
inner join continent
on countries.continent_code = continent.continent_code;

-- left join

select * from countries
left join continent
on countries.continent_code = continent.continent_code;

-- right join

select * from countries
right join continent
on countries.continent_code = continent.continent_code;

-- full join

select * from countries
cross join continent;


-- self join


SELECT cr1.country_name
FROM countries cr1
JOIN countries cr2 
ON cr1.country_code = cr2.continent_code;