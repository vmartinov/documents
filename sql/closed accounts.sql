select b.businessId, l.CancelDate from bellevue.Business b
inner join bellevue.license l on b.businessId = l.BusinessID
where active = 0 and LicenseTypeID = 1
order by l.CancelDate

select b.businessId, cast(l.CancelDate as nvarchar),
SUM(TaxBalance + InterestCredit - InterestCreditPaid + InterestDue + PenaltyDue)
	AS AccountBalance
from bellevue.Business b
inner join bellevue.license l on b.businessId = l.BusinessID and l.LicenseTypeID = 1
left Join bellevue.AmortizationSchedule am on b.businessid = am.BusinessID
left JOIN [Bellevue].TaxReturn tr ON am.TaxReturnId = tr.TaxReturnId
where active = 0 and (tr.IsMaster = 1 or tr.isMaster is null)
group by b.BusinessID, l.CancelDate
order by l.CancelDate

select * from bellevue.business
where BusinessID = 57278

select * from bellevue.License
where BusinessID = 57278


select * from bellevue.AmortizationSchedule
where BusinessID = 57278


