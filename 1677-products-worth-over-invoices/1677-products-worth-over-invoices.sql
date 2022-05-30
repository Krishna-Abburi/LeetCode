# Write your MySQL query statement below


select name,ifnull(sum(rest),0) as rest,ifnull(sum(paid),0) as paid,ifnull(sum(canceled),0) as canceled, ifnull(sum(refunded),0) as refunded from product a left join invoice b on a.product_id=b.product_id group by name order by name