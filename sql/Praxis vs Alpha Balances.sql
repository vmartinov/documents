SELECT am.BusinessId, bo.BO_CURRENT_BALANCE,
SUM(TaxBalance + InterestCredit - InterestCreditPaid + InterestDue + PenaltyDue) AS AccountBalance
FROM  [Bellevue].[AmortizationSchedule] am
inner join bellevue.business b on am.businessId = b.businessId
inner join BUSINESS_OCCUPATION bo
ON b.RegistrationNumber = bo.REGISTER_NUMBER
group by am.businessId, bo.BO_CURRENT_BALANCE
having bo.BO_CURRENT_BALANCE = SUM(TaxBalance + InterestCredit - InterestCreditPaid + InterestDue + PenaltyDue)

SELECT am.BusinessId, bo.BO_CURRENT_BALANCE,
SUM(TaxBalance + InterestCredit - InterestCreditPaid + InterestDue + PenaltyDue) AS AccountBalance
FROM  [Bellevue].[AmortizationSchedule] am
inner join bellevue.business b on am.businessId = b.businessId
inner join BUSINESS_OCCUPATION bo
ON b.RegistrationNumber = bo.REGISTER_NUMBER
group by am.businessId, bo.BO_CURRENT_BALANCE
having bo.BO_CURRENT_BALANCE <> SUM(TaxBalance + InterestCredit - InterestCreditPaid + InterestDue + PenaltyDue)
order by abs(bo.BO_CURRENT_BALANCE - SUM(TaxBalance + InterestCredit - InterestCreditPaid + InterestDue + PenaltyDue)) desc

select BO_CURRENT_BALANCE from business_occupation where register_number = '73013'


SELECT am.BusinessId, bo.BO_CURRENT_BALANCE,
SUM(TaxBalance + InterestCredit - InterestCreditPaid + InterestDue + PenaltyDue) AS AccountBalance
FROM  [Bellevue].[AmortizationSchedule] am
inner join bellevue.business b on am.businessId = b.businessId
inner join BUSINESS_OCCUPATION bo
ON am.businessId = bo.REGISTER_NUMBER
where am.businessId = 98760 
group by am.businessId, bo.BO_CURRENT_BALANCE

SELECT am.BusinessId, am.periodEndingDate,
TaxBalance + InterestCredit - InterestCreditPaid + InterestDue + PenaltyDue AS AccountBalance
FROM  [Bellevue].[AmortizationSchedule] am
where am.businessId = 73013 

SELECT * from bellevue.AmortizationSchedule
where businessId = 98760 and periodEndingDate = '12/31/2001'

select * from bellevue.paymentApplication
where AmortizationScheduleId = 348239

select AmortizationScheduleId, Payment, taxDue, Credit, interestDue, penaltyDue, credit, taxBalance
from bellevue.AmortizationSchedule
where businessId = 98760

select * from bellevue.Penalty
where amortizationScheduleId = 348247

select Payment, taxDue, interestDue, penaltyDue, credit, taxBalance
from bellevue.AmortizationSchedule
where taxDue <> TaxBalance

select Payment, taxDue, credit, interestDue, penaltyDue, credit, taxBalance
from bellevue.AmortizationSchedule
where Payment = 0 
and ABS((TaxDue - Credit + InterestDue + PenaltyDue) - TaxBalance) < 1
and 0 < ABS((TaxDue - Credit + InterestDue + PenaltyDue) - TaxBalance)
and businessid = 98760

update bellevue.AmortizationSchedule
set TaxBalance = TaxDue - Credit
where Payment = 0 
and ABS((TaxDue - Credit + InterestDue + PenaltyDue) - TaxBalance) < 1
and 0 < ABS((TaxDue - Credit + InterestDue + PenaltyDue) - TaxBalance)
and businessid = 98760


-- Krisse Arthur adjustment
UPDATE bellevue.amortizationSchedule
set TaxBalance = TaxBalance 
