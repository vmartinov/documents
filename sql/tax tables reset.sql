-- schedule A
delete from History.ApportionmentDetailHistory
DBCC CHECKIDENT ("History.ApportionmentDetailHistory", RESEED, 1);

delete from Bellevue.ApportionmentDetail
DBCC CHECKIDENT ("Bellevue.ApportionmentDetail", RESEED, 1);

-- schedule B
delete from History.SquareFootageDetailHistory
DBCC CHECKIDENT ("History.SquareFootageDetailHistory", RESEED, 1);

delete from Bellevue.SquareFootageDetail
DBCC CHECKIDENT ("Bellevue.SquareFootageDetail", RESEED, 1);

-- schedule C
delete from History.MatcInternalDetailHistory
DBCC CHECKIDENT ("History.matcInternalDetailHistory", RESEED, 1);

delete from Bellevue.MatcInternalDetail
DBCC CHECKIDENT ("Bellevue.matcInternalDetail", RESEED, 1);

delete from History.MatcExternalDetailHistory
DBCC CHECKIDENT ("History.MatcExternalDetailHistory", RESEED, 1);

delete from Bellevue.MatcExternalDetail
DBCC CHECKIDENT ("Bellevue.MatcExternalDetail", RESEED, 1);

-- schedule D
delete from History.DeductionDetailHistory
DBCC CHECKIDENT ("History.DeductionDetailHistory", RESEED, 1);

delete from Bellevue.DeductionDetail
DBCC CHECKIDENT ("Bellevue.DeductionDetail", RESEED, 1);

-- details
delete from History.TaxReturnDetailHistory
DBCC CHECKIDENT ("History.TaxReturnDetailHistory", RESEED, 1);

delete from Bellevue.TaxReturnDetail
DBCC CHECKIDENT ("Bellevue.TaxReturnDetail", RESEED, 1);

-- sections
delete from Bellevue.TaxReturnSection
DBCC CHECKIDENT ("Bellevue.TaxReturnSection", RESEED, 1);

-- penalty
delete from History.PenaltyHistory
DBCC CHECKIDENT ("History.PenaltyHistory", RESEED, 1);

delete from Bellevue.Penalty
DBCC CHECKIDENT ("Bellevue.Penalty", RESEED, 1);

-- payment Application
delete from Bellevue.PaymentApplication
DBCC CHECKIDENT ("Bellevue.PaymentApplication", RESEED, 1);

-- refund
delete from History.RefundHistory
DBCC CHECKIDENT ("History.RefundHistory", RESEED, 1);

delete from Bellevue.RefundPayment
DBCC CHECKIDENT ("Bellevue.RefundPayment", RESEED, 1);

delete from Bellevue.Refund
DBCC CHECKIDENT ("Bellevue.Refund", RESEED, 1);


-- payment
delete from History.PaymentHistory
DBCC CHECKIDENT ("History.PaymentHistory", RESEED, 1);

delete from Bellevue.Payment
DBCC CHECKIDENT ("Bellevue.Payment", RESEED, 1);


-- am
delete from History.AmortizationScheduleHistory
DBCC CHECKIDENT ("History.AmortizationScheduleHistory", RESEED, 1);

delete from Bellevue.AmortizationSchedule
DBCC CHECKIDENT ("Bellevue.AmortizationSchedule", RESEED, 1);

-- tr
delete from History.TaxReturnHistory
DBCC CHECKIDENT ("History.TaxReturnHistory", RESEED, 1);

delete from Bellevue.TaxReturn
DBCC CHECKIDENT ("Bellevue.TaxReturn", RESEED, 1);

-- filing frequency
delete from Bellevue.FilingFrequency
DBCC CHECKIDENT ("Bellevue.FilingFrequency", RESEED, 1);