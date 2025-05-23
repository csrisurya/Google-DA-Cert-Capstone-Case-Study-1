# ride count by member_casual and day_of_week
WITH jan_ride_count AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.january` GROUP BY member_casual, day_of_week ), 
	feb_ride_count AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.february` GROUP BY member_casual, day_of_week ), 
	march_ride_count AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.march` GROUP BY member_casual, day_of_week ), 
	april_ride_count AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.april` GROUP BY member_casual, day_of_week ), 
	may_ride_count AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.may` GROUP BY member_casual, day_of_week ), 
	june_ride_count AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.june` GROUP BY member_casual, day_of_week ), 
	july_ride_count AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.july` GROUP BY member_casual, day_of_week ), 
	aug_ride_count AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.august` GROUP BY member_casual, day_of_week ), 
	sept_ride_count AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.september` GROUP BY member_casual, day_of_week ), 
	oct_ride_count AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.october` GROUP BY member_casual, day_of_week ), 
	nov_ride_count AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.november` GROUP BY member_casual, day_of_week ), 
	dec_ride_count AS ( SELECT member_casual, EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.december` GROUP BY member_casual, day_of_week ) 

SELECT jan.member_casual, jan.day_of_week, 
	jan.ride_count AS jan_ride_count, 
	feb.ride_count AS feb_ride_count, 
	march.ride_count AS march_ride_count, 
	april.ride_count AS april_ride_count, 
	may.ride_count AS may_ride_count, 
	june.ride_count AS june_ride_count, 
	july.ride_count AS july_ride_count, 
	aug.ride_count AS aug_ride_count, 
	sept.ride_count AS sept_ride_count, 
	oct.ride_count AS oct_ride_count, 
	nov.ride_count AS nov_ride_count,
	dec.ride_count AS dec_ride_count 

FROM jan_ride_count jan 
LEFT JOIN feb_ride_count feb ON jan.member_casual=feb.member_casual AND jan.day_of_week=feb.day_of_week 
LEFT JOIN march_ride_count march ON feb.member_casual=march.member_casual AND feb.day_of_week=march.day_of_week 
LEFT JOIN april_ride_count april ON march.member_casual=april.member_casual AND march.day_of_week=april.day_of_week 
LEFT JOIN may_ride_count may ON april.member_casual=may.member_casual AND april.day_of_week=may.day_of_week 
LEFT JOIN june_ride_count june ON may.member_casual=june.member_casual AND may.day_of_week=june.day_of_week 
LEFT JOIN july_ride_count july ON june.member_casual=july.member_casual AND june.day_of_week=july.day_of_week 
LEFT JOIN aug_ride_count aug ON july.member_casual=aug.member_casual AND july.day_of_week=aug.day_of_week 
LEFT JOIN sept_ride_count sept ON aug.member_casual=sept.member_casual AND aug.day_of_week=sept.day_of_week 
LEFT JOIN oct_ride_count oct ON sept.member_casual=oct.member_casual AND sept.day_of_week=oct.day_of_week 
LEFT JOIN nov_ride_count nov ON oct.member_casual=nov.member_casual AND oct.day_of_week=nov.day_of_week 
LEFT JOIN dec_ride_count dec ON nov.member_casual=dec.member_casual AND nov.day_of_week=dec.day_of_week 

ORDER BY jan.day_of_week, jan.member_casual