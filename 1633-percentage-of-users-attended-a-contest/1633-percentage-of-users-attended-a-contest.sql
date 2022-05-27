
select contest_id,ifnull(round(count(distinct b.user_id)/(select count(user_id) from users )*100,2),0.00) as percentage from register b group by contest_id order by percentage desc ,contest_id asc

