select ad_id,ifnull(round(a/(a+b)*100,2),0.00) as ctr from (select ad_id,
sum(case when action='Clicked' then 1 else 0 end) as a,
sum(case when action='Viewed' then 1 else 0 end) as b
from ads group by ad_id) m group by ad_id order by ctr desc,ad_id asc
