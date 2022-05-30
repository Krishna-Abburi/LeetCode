# Write your MySQL query statement below


select a.employee_id,a.name,count(a.employee_id) as reports_count,round(avg(b.age),0) as average_age from employees a join employees b on a.employee_id=b.reports_to group by employee_id order by employee_id

