select distinct author_id as id from views where author_id in (select viewer_id from views) and author_id=viewer_id order by  author_id asc