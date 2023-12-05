create database  Athletisc_project;

use Athletisc_project;

create table olympics
(ID	int,
Name varchar(200),
Sex char(2),
Age int,
Height int,
Weight int,
Team varchar(200),
NOC varchar(200),
Games varchar(200),
Year int,
Season varchar(100),
City varchar(200),
Sport varchar(200),
Event varchar(200),
Medal varchar(200)
);


select * from olympics;

load data infile "C:/ProgramData/MySQL/MySQL Server 8.2/Uploads/Athletes_Cleaned.csv"
into table olympics
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows;

select * from olympics
limit 5;

select count(*) from olympics;

-- display countries who secured gold

select medal, count(medal) as meal_count
from olympics
group by medal;

select * from olympics
where medal="Gold";


show variables like 'secure_file_priv';

-- 1. Show how many medal counts present for entire data
select medal, count(medal) as medal_count from olympics
group by medal;

-- 2. Show count of unique sports present in Olympics
select count( distinct sport) as UniqueSportCount
 from olympics;

-- 3. Show how many different medals won by team India

select team, medal, count(*)  from olympics
where team='india'
group by team, medal;

-- 4. Show event wise medals won by India show from highest to lowest medals won in order

select event, medal, count(*) as medalcount  from olympics 
where team='India' and medal is not null
group by event, medal
order by medalcount desc, event;

-- 5. Show event wise medals won by India in order of year

select event, medal, year, count(*) as medalcount
from olympics
where team='India' and medal is not null
group by event, medal, year
order by year, medalcount desc, event;

-- 6. show country who won maximum medals.

SELECT Team, COUNT(*) AS MedalCount
FROM olympics
WHERE Medal IS NOT NULL
GROUP BY Team
ORDER BY MedalCount DESC
LIMIT 1;

-- 7.show top 10 countries whowon gold

select team , count(*) as medal_won from olympics 
where medal='Gold'
group by team
order by medal_won desc
limit 10;


--  8. show in which year did United states won most gold medal

select team, year, count(*) as goldcount from olympics
where medal='Gold' and team='United states'
group by year
order by goldcount desc
limit 1;

-- 9. In which sports United States has most medals.

select team, sport, count(*) as medalcount
from olympics
where team='United states' and medal is not null
group by sport
order by medalcount desc
limit 1;

-- 10. Find top three players who won most medals along with their sports and country

select team, sport,name, count(*) as medalcount
from olympics
where medal is not null
group by sport,name, team
order by medalcount desc
limit 3;


-- 11. Find player with most gold medals in cycling along with his country.

select team , name, count(*) as medalcount 
from olympics
where sport='cycling' and medal='Gold'
group by team, name
order by medalcount desc
limit 1;

-- 12.Find player with most medals (Gold+Silver+Bronze) in Basketball also show his country.

select team, name, count(*) medalcount
from olympics
where medal in('gold','silver','bronze') and sport='Basketball'
group by team, name
order by medalcount desc
limit 1;

-- 13. Find out the count of different medals of the top basketball player Teresa Edwards

select medal, count(*) as medalcount
from olympics
where name='Teresa Edwards' and sport='Basketball' and medal is not null
group by medal;

-- 14. Find out medals won by male,female each year , Export this data and plot graph in excel

select sex, year, medal, count(*) as medalcount
from olympics
where medal is not null
group by year,sex, medal
order by year, sex, medal; 
