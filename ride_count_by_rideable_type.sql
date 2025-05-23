# ride count by member_casual and rideable_count 

WITH jan_ride_count AS ( SELECT member_casual, rideable_type, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.january` GROUP BY rideable_type, member_casual ),
	feb_ride_count AS ( SELECT member_casual, rideable_type, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.february` GROUP BY rideable_type, member_casual ),
	march_ride_count AS ( SELECT member_casual, rideable_type, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.march` GROUP BY rideable_type, member_casual ), 
	april_ride_count AS ( SELECT member_casual, rideable_type, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.april` GROUP BY rideable_type, member_casual ), 
	may_ride_count AS ( SELECT member_casual, rideable_type, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.may` GROUP BY rideable_type, member_casual ), 
	june_ride_count AS ( SELECT member_casual, rideable_type, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.june` GROUP BY rideable_type, member_casual ), 
	july_ride_count AS ( SELECT member_casual, rideable_type, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.july` GROUP BY rideable_type, member_casual ), 
	aug_ride_count AS ( SELECT member_casual, rideable_type, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.august` GROUP BY rideable_type, member_casual ), 
	sept_ride_count AS ( SELECT member_casual, rideable_type, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.september` GROUP BY rideable_type, member_casual ), 
	oct_ride_count AS ( SELECT member_casual, rideable_type, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.october` GROUP BY rideable_type, member_casual ), 
	nov_ride_count AS ( SELECT member_casual, rideable_type, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.november` GROUP BY rideable_type, member_casual ), 
	dec_ride_count AS ( SELECT member_casual, rideable_type, COUNT(ride_id) AS ride_count FROM `st-project-454917.divvy_rides.december` GROUP BY rideable_type, member_casual ) 

SELECT jan.member_casual, jan.rideable_type, 
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
LEFT JOIN feb_ride_count feb ON jan.member_casual=feb.member_casual AND jan.rideable_type=feb.rideable_type 
LEFT JOIN march_ride_count march ON feb.member_casual=march.member_casual AND feb.rideable_type=march.rideable_type 
LEFT JOIN april_ride_count april ON march.member_casual=april.member_casual AND march.rideable_type=april.rideable_type 
LEFT JOIN may_ride_count may ON april.member_casual=may.member_casual AND april.rideable_type=may.rideable_type 
LEFT JOIN june_ride_count june ON may.member_casual=june.member_casual AND may.rideable_type=june.rideable_type 
LEFT JOIN july_ride_count july ON june.member_casual=july.member_casual AND june.rideable_type=july.rideable_type 
LEFT JOIN aug_ride_count aug ON july.member_casual=aug.member_casual AND july.rideable_type=aug.rideable_type 
LEFT JOIN sept_ride_count sept ON aug.member_casual=sept.member_casual AND aug.rideable_type=sept.rideable_type 
LEFT JOIN oct_ride_count oct ON sept.member_casual=oct.member_casual AND sept.rideable_type=oct.rideable_type 
LEFT JOIN nov_ride_count nov ON oct.member_casual=nov.member_casual AND oct.rideable_type=nov.rideable_type 
LEFT JOIN dec_ride_count dec ON nov.member_casual=dec.member_casual AND nov.rideable_type=dec.rideable_type 

ORDER BY jan.rideable_type, jan.member_casual