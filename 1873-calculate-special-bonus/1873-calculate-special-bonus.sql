# Write your MySQL query statement below
select * from (select employee_id,salary=0 as bonus from employees where employee_id%2=0 or name like 'M%'
union 
select employee_id,salary as bonus from employees where employee_id%2!=0 and name not like 'M%') m order by employee_id