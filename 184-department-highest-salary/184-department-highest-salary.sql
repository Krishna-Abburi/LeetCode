/* Write your PL/SQL query statement below */

select department,employee,salary from (select b.name as department,a.name as employee, salary,dense_rank() over(partition by departmentid order by salary desc) as rnk from employee a join department b on a.departmentid=b.id) m where rnk=1