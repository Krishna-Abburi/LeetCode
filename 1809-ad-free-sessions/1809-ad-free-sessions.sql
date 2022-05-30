# Write your MySQL query statement below

select session_id from playback where session_id not in (select session_id from playback a join ads b on a.customer_id=b.customer_id where timestamp between start_time and end_time)