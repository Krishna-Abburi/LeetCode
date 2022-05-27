select country_name,
case when avg(weather_state)<=15 then 'Cold' 
    when avg(weather_state)>=25 then 'Hot'
    else 'Warm' end as weather_type from countries a join weather b on a.country_id=b.country_id where extract( month from day)=11 group by a.country_id 