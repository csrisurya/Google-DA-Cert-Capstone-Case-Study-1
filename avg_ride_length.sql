# avg ride length by member_casual and day_of_week
WITH jan_avg_ride_length AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, AVG(ended_at - started_at) AS avg_ride_length, FROM `st-project-454917.divvy_rides.january` GROUP BY member_casual, day_of_week ), 
	feb_avg_ride_length AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, AVG(ended_at - started_at) AS avg_ride_length, FROM `st-project-454917.divvy_rides.february` GROUP BY member_casual, day_of_week ), 
	march_avg_ride_length AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, AVG(ended_at - started_at) AS avg_ride_length, FROM `st-project-454917.divvy_rides.march` GROUP BY member_casual, day_of_week ), 
	april_avg_ride_length AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, AVG(ended_at - started_at) AS avg_ride_length, FROM `st-project-454917.divvy_rides.april` GROUP BY member_casual, day_of_week ), 
	may_avg_ride_length AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, AVG(ended_at - started_at) AS avg_ride_length, FROM `st-project-454917.divvy_rides.may` GROUP BY member_casual, day_of_week ), 
	june_avg_ride_length AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, AVG(ended_at - started_at) AS avg_ride_length, FROM `st-project-454917.divvy_rides.june` GROUP BY member_casual, day_of_week ), 
	july_avg_ride_length AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, AVG(ended_at - started_at) AS avg_ride_length, FROM `st-project-454917.divvy_rides.july` GROUP BY member_casual, day_of_week ), 
	aug_avg_ride_length AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, AVG(ended_at - started_at) AS avg_ride_length, FROM `st-project-454917.divvy_rides.august` GROUP BY member_casual, day_of_week ), 
	sept_avg_ride_length AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, AVG(ended_at - started_at) AS avg_ride_length, FROM `st-project-454917.divvy_rides.september` GROUP BY member_casual, day_of_week ), 
	oct_avg_ride_length AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, AVG(ended_at - started_at) AS avg_ride_length, FROM `st-project-454917.divvy_rides.october` GROUP BY member_casual, day_of_week ), 
	nov_avg_ride_length AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, AVG(ended_at - started_at) AS avg_ride_length, FROM `st-project-454917.divvy_rides.november` GROUP BY member_casual, day_of_week ), 
	dec_avg_ride_length AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, AVG(ended_at - started_at) AS avg_ride_length, FROM `st-project-454917.divvy_rides.december` GROUP BY member_casual, day_of_week )

SELECT jan.member_casual, jan.day_of_week,
	EXTRACT(SECOND FROM jan.avg_ride_length) + EXTRACT(MINUTE FROM jan.avg_ride_length) * 60 + EXTRACT(HOUR FROM jan.avg_ride_length) * 60 * 60 + EXTRACT(DAY FROM jan.avg_ride_length) * 60 * 60 * 24 AS jan_avg_ride_length_in_sec, 
	EXTRACT(SECOND FROM feb.avg_ride_length) + EXTRACT(MINUTE FROM feb.avg_ride_length) * 60 + EXTRACT(HOUR FROM feb.avg_ride_length) * 60 * 60 + EXTRACT(DAY FROM feb.avg_ride_length) * 60 * 60 * 24 AS feb_avg_ride_length_in_sec, 
	EXTRACT(SECOND FROM march.avg_ride_length) + EXTRACT(MINUTE FROM march.avg_ride_length) * 60 + EXTRACT(HOUR FROM march.avg_ride_length) * 60 * 60 + EXTRACT(DAY FROM march.avg_ride_length) * 60 * 60 * 24 AS march_avg_ride_length_in_sec, 
	EXTRACT(SECOND FROM april.avg_ride_length) + EXTRACT(MINUTE FROM april.avg_ride_length) * 60 + EXTRACT(HOUR FROM april.avg_ride_length) * 60 * 60 + EXTRACT(DAY FROM april.avg_ride_length) * 60 * 60 * 24 AS april_avg_ride_length_in_sec, 
	EXTRACT(SECOND FROM may.avg_ride_length) + EXTRACT(MINUTE FROM may.avg_ride_length) * 60 + EXTRACT(HOUR FROM may.avg_ride_length) * 60 * 60 + EXTRACT(DAY FROM may.avg_ride_length) * 60 * 60 * 24 AS may_avg_ride_length_in_sec, 
	EXTRACT(SECOND FROM june.avg_ride_length) + EXTRACT(MINUTE FROM june.avg_ride_length) * 60 + EXTRACT(HOUR FROM june.avg_ride_length) * 60 * 60 + EXTRACT(DAY FROM june.avg_ride_length) * 60 * 60 * 24 AS june_avg_ride_length_in_sec, 
	EXTRACT(SECOND FROM july.avg_ride_length) + EXTRACT(MINUTE FROM july.avg_ride_length) * 60 + EXTRACT(HOUR FROM july.avg_ride_length) * 60 * 60 + EXTRACT(DAY FROM july.avg_ride_length) * 60 * 60 * 24 AS july_avg_ride_length_in_sec, 
	EXTRACT(SECOND FROM aug.avg_ride_length) + EXTRACT(MINUTE FROM aug.avg_ride_length) * 60 + EXTRACT(HOUR FROM aug.avg_ride_length) * 60 * 60 + EXTRACT(DAY FROM aug.avg_ride_length) * 60 * 60 * 24 AS aug_avg_ride_length_in_sec, 
	EXTRACT(SECOND FROM sept.avg_ride_length) + EXTRACT(MINUTE FROM sept.avg_ride_length) * 60 + EXTRACT(HOUR FROM sept.avg_ride_length) * 60 * 60 + EXTRACT(DAY FROM sept.avg_ride_length) * 60 * 60 * 24 AS sept_avg_ride_length_in_sec, 
	EXTRACT(SECOND FROM oct.avg_ride_length) + EXTRACT(MINUTE FROM oct.avg_ride_length) * 60 + EXTRACT(HOUR FROM oct.avg_ride_length) * 60 * 60 + EXTRACT(DAY FROM oct.avg_ride_length) * 60 * 60 * 24 AS oct_avg_ride_length_in_sec, 
	EXTRACT(SECOND FROM nov.avg_ride_length) + EXTRACT(MINUTE FROM nov.avg_ride_length) * 60 + EXTRACT(HOUR FROM nov.avg_ride_length) * 60 * 60 + EXTRACT(DAY FROM nov.avg_ride_length) * 60 * 60 * 24 AS nov_avg_ride_length_in_sec, 
	EXTRACT(SECOND FROM dec.avg_ride_length) + EXTRACT(MINUTE FROM dec.avg_ride_length) * 60 + EXTRACT(HOUR FROM dec.avg_ride_length) * 60 * 60 + EXTRACT(DAY FROM dec.avg_ride_length) * 60 * 60 * 24 AS dec_avg_ride_length_in_sec 

FROM jan_avg_ride_length jan 
LEFT JOIN feb_avg_ride_length feb ON jan.member_casual=feb.member_casual AND jan.day_of_week=feb.day_of_week 
LEFT JOIN march_avg_ride_length march ON feb.member_casual=march.member_casual AND feb.day_of_week=march.day_of_week 
LEFT JOIN april_avg_ride_length april ON march.member_casual=april.member_casual AND march.day_of_week=april.day_of_week 
LEFT JOIN may_avg_ride_length may ON april.member_casual=may.member_casual AND april.day_of_week=may.day_of_week 
LEFT JOIN june_avg_ride_length june ON may.member_casual=june.member_casual AND may.day_of_week=june.day_of_week 
LEFT JOIN july_avg_ride_length july ON june.member_casual=july.member_casual AND june.day_of_week=july.day_of_week 
LEFT JOIN aug_avg_ride_length aug ON july.member_casual=aug.member_casual AND july.day_of_week=aug.day_of_week 
LEFT JOIN sept_avg_ride_length sept ON aug.member_casual=sept.member_casual AND aug.day_of_week=sept.day_of_week 
LEFT JOIN oct_avg_ride_length oct ON sept.member_casual=oct.member_casual AND sept.day_of_week=oct.day_of_week 
LEFT JOIN nov_avg_ride_length nov ON oct.member_casual=nov.member_casual AND oct.day_of_week=nov.day_of_week 
LEFT JOIN dec_avg_ride_length dec ON nov.member_casual=dec.member_casual AND nov.day_of_week=dec.day_of_week 

ORDER BY jan.day_of_week, jan.member_casual