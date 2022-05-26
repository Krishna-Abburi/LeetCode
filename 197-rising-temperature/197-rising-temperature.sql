

select id from (select id,temperature as a,lag(temperature,1) over(order by recorddate) as b,lag(recorddate,1) over() as t,recorddate as s from weather ) m where a>b and datediff(s,t)=1