# Write your MySQL query statement below

select id,
case when p_id is null then 'Root'
     when id in (select p_id from tree ) and p_id is not null then 'Inner' else 'Leaf' end as Type 
from tree

