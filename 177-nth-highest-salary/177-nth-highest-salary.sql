CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (select distinct(salary) as getNthHighestSalary from employee a where n-1=(select count(distinct(salary)) from employee b where a.salary<b.salary));
END