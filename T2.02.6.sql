select  Area as town,
COUNT() as "number of vacancies" , 
round (avg (From),0) as "average start salary", 
round(avg(To),0) as "average top salary"
from vacancy_sp
group by Area
union all
select  Area as town,
COUNT() as "number of vacancies" , 
round (avg (From),0) as "average start salary", 
round(avg(To),0) as "average top salary"
from vacancy_m
group by Area
