select name from salesperson where sales_id not in (select b.sales_id from salesperson a left join orders b on a.sales_id=b.sales_id join company c on b.com_id=c.com_id where c.name='RED')