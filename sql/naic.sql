select len(ubi) from NAIc2 order by len(ubi) desc

select distinct naic from bellevue.business

insert into dbo.Naic(Naic, Description)
select distinct [Primary naics code], [Primary naics description]
from naic1 where [Primary NAICS Code] <> '0'


insert into Naic2(ubi, naic, description)
select 
	convert(nvarchar, convert(int, [tra id])),
	convert(nvarchar, [primary naics code]),
	[primary naics description] 
from naic1

UPDATE b
  SET b.naic = n.Naic
  FROM bellevue.business b
  inner join bellevue.LegalEntity le ON b.LegalEntityID = le.LegalEntityID
  INNER JOIN naic2 n on le.UBI = n.Ubi
  where n.Naic <> '0'

select b.BusinessID, b.LegalEntityID, le.UBI, n.naic
  FROM bellevue.business b
  inner join bellevue.LegalEntity le ON b.LegalEntityID = le.LegalEntityID
  INNER JOIN naic2 n on le.UBI = n.Ubi
  where n.Naic <> '0'

