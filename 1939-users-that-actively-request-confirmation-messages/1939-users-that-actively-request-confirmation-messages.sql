# Write your MySQL query statement below
select distinct a.user_id from confirmations a join confirmations b on a.user_id=b.user_id where a.time_stamp<b.time_stamp and timestampdiff(second,a.time_stamp,b.time_stamp)<=86400

