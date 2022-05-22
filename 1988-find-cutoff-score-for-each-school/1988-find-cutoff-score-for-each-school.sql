select school_id,ifnull(min(score),-1) as score from schools a left join exam b on capacity>=student_count group by school_id


