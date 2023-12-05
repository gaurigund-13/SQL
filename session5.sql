create database Saturday;
-- 1. Use the database
use Saturday;


-- 2. show tables
show tables;

-- 3. View entire startups table
select * from startups;

-- 4. Order by Query by default orders in ascending

select * from startups order by profit;
-- 5. Order by MKT in descending order
select * from startups order by mkt desc;

-- 6. Order by STATE 
select * from startups order by state;

-- 7. Order by State descending order
select * from startups order by state desc;

-- 8. Order by STATE and PROFIT
select * from startups order by state,profit;


-- 9. Order by STATE in asc , Profit in Desc
select * from startups order by state , profit desc;

-- 10. Find out different states counts

select state, count(*) from startups 
group by state; 
-- 11. Find out average profit based on states and arange avg profit in desc order

select state, avg(profit) as avg_profit
 from startups 
 group by state 
order by avg_profit desc;

-- 12. Find out Max MKT based on states and arrange MKT in ascending order

select state, max(mkt) as max_mkt from startups group by state order by max_mkt ;

-- 13. Find out std deviation for ADMIN based on states

select state, stddev(admin) as std_admin from startups group by state;

-- 14. Find out total Spend by startups
select  state, (rnd+mkt+admin) as total_spend from startups;

-- 15. Find out min total spend based on states 
select state, min(rnd+mkt+admin) as min_total_spend from startups group by state;

select *
from startups
where mkt = (select min(mkt) from startups);
-- 16. view tables

select * from startups;

-- 17. view the tips table

select * from tips;

-- 18. Find avg of total bill based on day and time

select avg(total_bill) as bill_spend_dayTime from tips group by day, time;

-- 19. Find out sum of total bill and tips based on smoker and gender 
-- order by tips desc

select smoker, sex, sum(total_bill) as sum_totalbill, 
sum(tip) as sum_tips from tips 
group by smoker,sex order by sum_tips desc;

-- 20. Find out top 5 tips in the data

select * from tips order by tip desc limit 5;

-- 21. Find out bottom 3 total_bill in the data

select * from tips order by total_bill limit 3;

-- 22. Find out highest size in the data
select max(size) as highest_size from tips;

-- 23. Find out highest total bill

select max(total_bill) as highest_bill from tips;

-- 23. Find out highest tip by female and non smoker

select sex,smoker, max(tip) as highest_tip from tips 
where sex='female' and smoker='NO';

-- 24. Find out third highest tip by female and non smoker

select * from tips 
where sex='female' and smoker='NO' order by tip limit 1 offset 2;

-- 25. Find out the entry where lowest tip was paid

select min(tip) from tips;

-- 26. Nested query
select count(*) from tips
where tip=(select min(tip) from tips) ;

-- Find out 5th lowest tip paid by female, smoker

select * from tips 
where sex='female' and smoker='yes' 
order by tip asc 
limit 1 offset 4;


