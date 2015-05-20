select tr.taxReturnId, tr.periodendingDate, tr.PostmarkDate, isDirty, tr.isMaster, am.amortizationScheduleId, 
am.taxBalance, am.interestDue, am.penaltyDue, am.interestCredit, am.InterestCreditPaid, am.InterestCalculatedDate, am.DueDate
from bellevue.taxReturn tr
inner join bellevue.amortizationSchedule am ON tr.taxreturnid = am.taxreturnid
where tr.businessId = 147824  and IsMaster = 1
order by periodEndingDate desc

