create database Startup50;

-- 1. use database
use Startup50;

-- 2. show tables
show tables;

-- 3. Viewing Entire startups table 
-- * means show all the columns
select * from startups;

-- 4. Selecting specific columns
select RND from startups;

-- 5. Select distinct values from table
select distinct(state) from startups;

-- 6. Find out startups which belong to New York

select * from startups where state="New York";

-- 7. Find out startups whose profit more than 150000

select * from startups where profit > 150000 ;
-- 8. Find out startups whose profit is in between 1 lakh and 1.5 lakh

select * from startups where profit between 100000 and 150000;

-- 9. Startup State is california or florida

select * from startups where state="california" or state="florida";

-- 10. Not equal to new york
select * from startups where state != "new york" ;

-- 11. Find out startups whose profit is in between 1lakh to 1.5 lakh and state is California or New York

select * from startups where (profit between 100000 and 150000) and (state="california" or state="new york");
-- 12. find out state who start with letter C
select * from startups where state like 'c%';

-- 13. find out state which ends with letter a
select * from startups where state like '%a';

-- 14. Find out state that contains characters 'Yor'

select * from startups where state like '%yor%';

-- 15. Find out state that starts with flo

select * from startups where state like 'flo%';
-- 16. Find out states that ends with 'ia'

select * from startups where state like "%ia";

-- 17. in query (Fetch startups that belong to new york or florida)
select * from startups where state in('new york', 'florida');

-- 18. Startups whose profit more than 1.5 lakhs and belong to California or Florida

select * from startups where (profit > 150000) and  state in('california', 'florida');

-- 19. Find out startups which does NOT belong to florida

select * from startups where state != 'florida';

-- 20. Find the startups with profit between 1lakh and 1.5 lakh, show state and profit only

select state,profit from startups where (profit between 100000 and 150000); 
-- 21. Counting number of rows in table
select count(*) from startups;
-- 22. Show count as StartupCount

select count(*) from startups as StartupsCount;

-- 23. Show sum of profit of the startups

select sum(profit) from startups;

-- 23. Find out sum of RND, ADMIN, MKT and Profit

select sum(RND), sum(admin), sum(mkt), sum(profit) from startups;
-- 24. Find out average RND spend for the data

select avg(rnd) from startups;

-- 24. Find out average Profit and MKT

select avg(profit), avg(MKT) from startups;

-- 25. Find out maximum RND, MKT, ADMIN 

select max(rnd), max(mkt), max(admin) from startups;

-- 26. Find out minimum profit and RND

select min(profit), min(rnd) from startups;

-- 27. Combination Show count of startups, Average profit, min and max profit

select count(*) , avg(profit), min(profit), max(profit) from startups;

-- 28. Count the disctinct states
select count(distinct(state)) from startups;

-- 29. Find out number of startups which belong to New York
select count( *) from startups where state='new york';

-- 30. Find out number of startups which belong to florida and avg, max ,min , Profit
select count(*) , avg(profit) , max(profit), min(profit) from startups
where state='florida';