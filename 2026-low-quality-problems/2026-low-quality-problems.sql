# Write your MySQL query statement below

select problem_id from (select problem_id,likes/(likes+dislikes)*100 as m from problems group by problem_id) f where m<60 order by problem_id asc