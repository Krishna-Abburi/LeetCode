# Write your MySQL query statement below
select name,sum(amount) as balance from transactions a join users b on a.account=b.account group by name having sum(amount)>10000