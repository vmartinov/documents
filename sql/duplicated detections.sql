select ubi, businessubi, locationUbi, count(*)
from bellevue.Detection
where DetectionStatusID = 4
group by ubi, BusinessUBI, Locationubi
having count(*) > 1





