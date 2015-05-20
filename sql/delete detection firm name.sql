select * from bellevue.detection
where Business = 'firm-name'

delete from bellevue.detection
where Business = 'firm-name'


delete from history.detectionHistory
where Business = 'firm-name'

delete from bellevue.detectionAddress
where detectionid in (select detectionId from bellevue.detection
					where Business = 'firm-name')


select address from bellevue.detectionAddress
where detectionid in (select detectionId from bellevue.detection
					where Business = 'firm-name')

delete from bellevue.address
where addressid in (select addressid from bellevue.detectionAddress 
					where detectionid in 
					(select detectionId from bellevue.detection	where Business = 'firm-name'))

delete from bellevue.address where addressid in (
146119,
146120,
146519,
146520,
146521,
146522,
146835,
146836,
146837,
146838,
146839,
146840,
147121,
147122,
147123,
147124,
147125,
147126,
147127,
147128,
147419,
147420,
147421,
147422,
147425,
147426,
147427,
147428,
147431,
147432,
147718,
147719,
147722,
147723,
147726,
147727,
147728,
147729,
147730,
147731,
147732,
147733,
148019,
148020,
148023,
148024,
148027,
148028,
148029,
148030,
148031,
148032,
148033,
148034,
148035,
148036,
148319,
148320,
148323,
148324,
148329,
148330,
148331,
148332,
148333,
148334,
148335,
148336,
148337,
148338,
148339,
148340)