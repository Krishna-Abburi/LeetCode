select * from (select seat_id from (select seat_id,free,lag(free,1) over() as a from cinema) m where free=a and free=1
union
select seat_id from (select seat_id,free,lead(free,1) over() as a from cinema) m where free=a and free=1) t order by seat_id
