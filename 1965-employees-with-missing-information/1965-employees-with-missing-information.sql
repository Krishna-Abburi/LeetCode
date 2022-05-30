# Write your MySQL query statement below

select * from (select employee_id from employees where employee_id not in (select employee_id from salaries)
union
select employee_id from salaries where employee_id not in (select employee_id from employees)) m order by employee_id asc
