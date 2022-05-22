# Write your MySQL query statement below

select  distinct(b.account_id)  from loginfo a join loginfo b on a.account_id=b.account_id and a.ip_address!=b.ip_address where b.login between a.login and a.logout  