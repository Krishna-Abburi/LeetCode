# Write your MySQL query statement below

select distinct(num) as ConsecutiveNums from (select num,lag(num,1) over() as a,lead(num,1) over() as b from logs) m where num=a and num=b;