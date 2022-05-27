with cte as 
(
select distinct sub_id as post_id from submissions where parent_id is null)

select post_id,count(distinct sub_id) as number_of_comments from submissions a right join cte b on post_id=parent_id group by post_id