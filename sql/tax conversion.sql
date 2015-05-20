select * from bellevue.FilingFrequency

--    DELETE FROM bellevue.FilingFrequency
	--DBCC CHECKIDENT ([bellevue.FilingFrequency], RESEED, 1) 


select * from bellevue.business
where registrationNumber is null

select businessId from bellevue.business
where businessId not in (select businessid from bellevue.FilingFrequency)

DELETE FROM bellevue.DeductionDetail
DBCC CHECKIDENT ([bellevue.DeductionDetail], RESEED, 1) 

DELETE FROM History.TaxReturnDetailHistory
DBCC CHECKIDENT ([History.TaxReturnDetailHistory], RESEED, 1) 


DELETE FROM bellevue.TaxReturnDetail
DBCC CHECKIDENT ([bellevue.TaxReturnDetail], RESEED, 1) 

DELETE FROM bellevue.PaymentApplication
DBCC CHECKIDENT ([bellevue.PaymentApplication], RESEED, 1) 

DELETE FROM bellevue.Payment
DBCC CHECKIDENT ([bellevue.Payment], RESEED, 1) 

DELETE FROM bellevue.Penalty
DBCC CHECKIDENT ([bellevue.Penalty], RESEED, 1) 

DELETE FROM bellevue.AmortizationSchedule
DBCC CHECKIDENT ([bellevue.AmortizationSchedule], RESEED, 1) 

DELETE FROM bellevue.TaxReturnSection
DBCC CHECKIDENT ([bellevue.TaxReturnSection], RESEED, 1) 

DELETE FROM bellevue.Delinquency
DBCC CHECKIDENT ([bellevue.Delinquency], RESEED, 1) 

DELETE FROM bellevue.MatcInternalDetail
DBCC CHECKIDENT ([bellevue.MatcInternalDetail], RESEED, 1) 

DELETE FROM bellevue.MatcExternalDetail
DBCC CHECKIDENT ([bellevue.MatcExternalDetail], RESEED, 1) 

DELETE FROM History.TaxReturnHistory
DBCC CHECKIDENT ([History.TaxReturnHistory], RESEED, 1) 

DELETE FROM bellevue.TaxReturn
DBCC CHECKIDENT ([bellevue.TaxReturn], RESEED, 1) 

select * from bellevue.TaxReturn

select * from bellevue.AmortizationSchedule

SELECT * FROM BELLEVUE.Penalty

select * from bellevue.Payment where AmortizationScheduleSourceId = 6

select * from bellevue.PaymentApplication

select * from bellevue.MatcExternalDetail

select * from bellevue.MatcInternalDetail


select * from Exception

SELECT *
	FROM dbo.BO_QUARTERLY_PAYMENT_HISTORY
	WHERE REGISTER_NUMBER = 'A3591'
	ORDER BY QUARTER_ENDING_DATE

select * from bellevue.amortizationSchedule

select * from bellevue.DeductionDetail

update bellevue.taxreturn
set IsDirty = 1
where businessId = 90708 


