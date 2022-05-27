# Write your MySQL query statement below


select product_name,sum(unit) as unit from products a join orders b on a.product_id=b.product_id  where extract(month from order_date)=2 group by product_name having sum(unit)>=100