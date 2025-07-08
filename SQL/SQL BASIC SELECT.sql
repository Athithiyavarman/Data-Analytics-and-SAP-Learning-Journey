# Author : Athithiya Varman AK
1.--Employee-Names--
select name from employee order by name;

2.--Employee-Salaries--
select name from employee where salary > 2000 and months <10 order By employee_id;

3.--Higher-Than-75-Marks--
select name from students where marks > 75 order by right(name,3),id asc;

4.--American-Cities--
select * from city where countrycode="USA";

5.--American-Cities'-Names--
select name from city where CountryCode="USA";

6.--Revising-the-select-Query-1--
SELECT * FROM CITY WHERE population > 100000 AND Countrycode ="USA";

7.--Revising-the-select-Query-2--
Select name from city where population > 120000 and Countrycode = "USA";

8.--Select-All--
Select * from city

9.--Select-By-ID--
select * from city where ID=1661;

10.--Weather-Observation-Station-1--
select city,State from station;

11.--Weather-Observation-Station-2--
Select distinct city from station where ID%2=0;

12.--Weather-Observation-Station-3--
lect count(city) - count(distinct city) from station;  

13.--Weather-Observation-Station-4-
select city,length(city) from station order By length(city) asc, city asc limit 1;
select distinct(City),length(city) from station order by length(city) desc, city asc limit 1;

14.--Weather-Observation-Station5--
select distinct city from station where left(city,1) in('a','e','i','o','u')
  
15.--Weather-Observation-Station-6--
select distinct city from station where right(city,1) in('a','e','i','o','u')
  
16.--Weather-Observation-Station-7--
select distinct city from station where left(city,1) in('a','e','i','o','u') and right(city,1) in('a','e','i','o','u') 
  
17.--Weather-Observation-Station-8--
select distinct city from station where left(city,1) not in('a','e','i','o','u') 
  
18.--Weather-Observation-Station-9--
select distinct(city) from station where
city not like "%a" and
city not like "%e" and
city not like "%i" and
city not like "%o" and
city not like "%u";

19.--Weather-Observation-Station-10--
select distinct city from station where left(city,1) not in('a','e','i','o','u') or right(city,1) not in('a','e','i','o','u');

20.--Weather-Observation-Station-11--

select name from employee where salary > 2000 and months <10 order By employee_id;
