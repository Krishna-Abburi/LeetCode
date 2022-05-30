CREATE PROCEDURE getUserIDs(startDate DATE, endDate DATE, minAmount INT)
BEGIN
	select distinct user_id from purchases where time_stamp between startdate and enddate and amount>=minamount order by user_id ;
	END