select L.licenseid, count(*)
from bellevue.license L
inner join bellevue.licenseApproval LA
on L.licenseid = LA.licenseid
where L.licensetypeid = 1 or L.licenseTypeid = 3 or L.licenseTypeid = 7 or L.licenseTypeid = 11
or L.licenseTypeid = 12
group by L.licenseid
having count(*) <> 2

select L.licenseid, count(*)
from bellevue.license L
inner join bellevue.licenseApproval LA
on L.licenseid = LA.licenseid
where L.licensetypeid = 2 or L.licensetypeid = 4 or L.licensetypeid = 5 or L.licensetypeid = 6
or L.licensetypeid = 8
group by L.licenseid
having count(*) <> 3

select L.licenseid, count(*)
from bellevue.license L
inner join bellevue.licenseApproval LA
on L.licenseid = LA.licenseid
where L.licensetypeid = 9 or  L.licensetypeid = 10
group by L.licenseid
having count(*) <> 1



select * from rolelicenseapproval

