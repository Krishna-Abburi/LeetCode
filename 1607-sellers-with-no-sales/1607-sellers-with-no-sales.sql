

select seller_name from seller where seller_id not in (select a.seller_id from seller a join orders b on a.seller_id=b.seller_id and extract(year from sale_date)=2020)  order by seller_name asc




