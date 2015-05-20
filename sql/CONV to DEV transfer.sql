-- FILING FREQUENCY
SET IDENTITY_INSERT Bellevue.FilingFrequency ON
insert into Bellevue.FilingFrequency
(FilingFrequencyId,FilingFrequencyTypeId, BusinessId, startDate, EndDate)
select
FilingFrequencyId, FilingFrequencyTypeId, BusinessId, startDate, EndDate
FROM [PRAXIS_KRISSE].Bellevue.FilingFrequency
SET IDENTITY_INSERT Bellevue.FilingFrequency OFF


-- TAX RETURNS
SET IDENTITY_INSERT Bellevue.TaxReturn ON
insert into Bellevue.TaxReturn
(TaxReturnId, BusinessId, BatchId, PeriodEndingDate, PostMarkDate, Payment, PaymentTypeId, IsMaster, IsDirty)
SELECT 
TaxReturnId, BusinessId, BatchId, PeriodEndingDate, PostMarkDate, Payment, PaymentTypeId, IsMaster, IsDirty
FROM [PRAXIS_KRISSE].Bellevue.TaxReturn
SET IDENTITY_INSERT Bellevue.TaxReturn OFF

-- sections
SET IDENTITY_INSERT Bellevue.TaxReturnSection ON
insert into Bellevue.TaxReturnSection
(TaxReturnSectionId, TaxReturnId, TaxCategoryId)
SELECT 
TaxReturnSectionId, TaxReturnId, TaxCategoryId
FROM [PRAXIS_KRISSE].Bellevue.TaxReturnSection
SET IDENTITY_INSERT Bellevue.TaxReturnSection OFF

-- am schedule
SET IDENTITY_INSERT Bellevue.AmortizationSchedule ON
insert into Bellevue.AmortizationSchedule
([AmortizationScheduleId]
      ,[TaxReturnId]
      ,[PaymentTypeId]
      ,[BusinessId]
      ,[PeriodEndingDate]
      ,[PostMarkDate]
      ,[Payment]
      ,[Credit]
      ,[TaxDue]
      ,[PenaltyDue]
      ,[InterestDue]
      ,[TotalInterestDue]
      ,[PenaltyAdjusted]
      ,[InterestAdjusted]
      ,[InterestWaived]
      ,[InterestCredit]
      ,[InterestCreditPaid]
      ,[InterestCalculatedDate]
      ,[TaxBalance]
      ,[InitialTaxBalance]
	  ,[TaxBalanceWaived]
      ,[DueDate]
      ,[CommentText]
      ,[UserId])
SELECT
[AmortizationScheduleId]
      ,[TaxReturnId]
      ,[PaymentTypeId]
      ,[BusinessId]
      ,[PeriodEndingDate]
      ,[PostMarkDate]
      ,[Payment]
      ,[Credit]
      ,[TaxDue]
      ,[PenaltyDue]
      ,[InterestDue]
      ,[TotalInterestDue]
      ,[PenaltyAdjusted]
      ,[InterestAdjusted]
      ,[InterestWaived]
      ,[InterestCredit]
      ,[InterestCreditPaid]
      ,[InterestCalculatedDate]
      ,[TaxBalance]
      ,[InitialTaxBalance]
	  ,[TaxBalanceWaived]
      ,[DueDate]
      ,[CommentText]
      ,[UserId]
 FROM [PRAXIS_KRISSE].Bellevue.AmortizationSchedule
--where taxreturnid not in (79845, 33959, 76070)
SET IDENTITY_INSERT Bellevue.AmortizationSchedule OFF

-- detail
SET IDENTITY_INSERT Bellevue.TaxReturnDetail ON
insert into Bellevue.TaxReturnDetail
(TaxReturnDetailId, TaxReturnSectionId, TaxTypeId, GrossReceipts, Deductions, 
TaxableReceipts, TaxDue, CommentText, UserId, IsDeleted)
SELECT 
TaxReturnDetailId, TaxReturnSectionId, TaxTypeId, GrossReceipts, Deductions, 
TaxableReceipts, TaxDue, NULL, NULL, 0
FROM [PRAXIS_KRISSE].Bellevue.TaxReturnDetail
SET IDENTITY_INSERT Bellevue.TaxReturnDetail OFF

-- schedule A
SET IDENTITY_INSERT Bellevue.ApportionmentDetail ON
insert into Bellevue.ApportionmentDetail
(ApportionmentDetailId, TaxReturnId, ApportionmentCodeId, Amount, CommentText, UserId, IsDeleted)
SELECT 
ApportionmentDetailId, TaxReturnId, ApportionmentCodeId, Amount, NULL, NULL, 0
FROM [PRAXIS_KRISSE].Bellevue.ApportionmentDetail
SET IDENTITY_INSERT Bellevue.ApportionmentDetail OFF

-- schedule B
SET IDENTITY_INSERT Bellevue.SquareFootageDetail ON
insert into Bellevue.SquareFootageDetail
(SquareFootageDetailId, TaxReturnId, SquareFootageCodeId, Amount, CommentText, UserId, IsDeleted)
SELECT 
SquareFootageDetailId, TaxReturnId, SquareFootageCodeId, Amount, NULL, NULL, 0
FROM [PRAXIS_KRISSE].Bellevue.SquareFootageDetail
SET IDENTITY_INSERT Bellevue.SquareFootageDetail OFF

-- schedule C
SET IDENTITY_INSERT Bellevue.MatcInternalDetail ON
insert into Bellevue.MatcInternalDetail
(MatcInternalDetailId, TaxReturnId, MatcCodeId, TaxableAmount, GrossReceiptsExtracting, GrossReceiptsManufacturing,
Wholesailing, Retailing, Credit, CommentText, UserId, IsDeleted)
SELECT 
MatcInternalDetailId, TaxReturnId, MatcCodeId, TaxableAmount, GrossReceiptsExtracting, GrossReceiptsManufacturing,
Wholesailing, Retailing, Credit, NULL, NULL, 0
FROM [PRAXIS_KRISSE].Bellevue.MatcInternalDetail
SET IDENTITY_INSERT Bellevue.MatcInternalDetail OFF

SET IDENTITY_INSERT Bellevue.MatcExternalDetail ON
insert into Bellevue.MatcExternalDetail
(MatcExternalDetailId, TaxReturnId, MatcCodeId, TaxableAmount, GrossReceiptsBellevue, GrossReceiptsNonBellevue,
Credit, CommentText, UserId, IsDeleted)
SELECT 
MatcExternalDetailId, TaxReturnId, MatcCodeId, TaxableAmount, GrossReceiptsBellevue, GrossReceiptsNonBellevue,
Credit, NULL, NULL, 0
FROM [PRAXIS_KRISSE].Bellevue.MatcExternalDetail
SET IDENTITY_INSERT Bellevue.MatcExternalDetail OFF

-- schedule D
SET IDENTITY_INSERT Bellevue.DeductionDetail ON
insert into Bellevue.DeductionDetail
(DeductionDetailId, TaxReturnId, DeductionCodeId, Amount, CommentText, UserId, IsDeleted)
SELECT 
DeductionDetailId, TaxReturnId, DeductionCodeId, Amount, NULL, NULL, 0
FROM [PRAXIS_KRISSE].Bellevue.DeductionDetail
SET IDENTITY_INSERT Bellevue.DeductionDetail OFF

-- payments
SET IDENTITY_INSERT Bellevue.Payment ON
insert into Bellevue.Payment
(PaymentId, AmortizationScheduleSourceId, PaymentDebitPairId, Amount, 
ReceivedDate, BusinessId, PeriodEndingDate, CreditTypeId, CommentText, UserId)
SELECT 
PaymentId, AmortizationScheduleSourceId, PaymentDebitPairId, Amount, 
ReceivedDate, BusinessId, PeriodEndingDate, CreditTypeId, CommentText, UserId
FROM [PRAXIS_KRISSE].Bellevue.Payment
SET IDENTITY_INSERT Bellevue.Payment OFF

-- payment applications
SET IDENTITY_INSERT Bellevue.PaymentApplication ON
insert into Bellevue.PaymentApplication
([PaymentApplicationId]
      ,[PaymentId]
      ,[AmortizationScheduleId]
      ,[AmortizationScheduleSourceId]
      ,[RunningTaxBalance]
      ,[TaxPaid]
      ,[InterestPaid]
      ,[PenaltyPaid]
      ,[FromDate]
      ,[ToDate])
SELECT 
[PaymentApplicationId]
      ,[PaymentId]
      ,[AmortizationScheduleId]
      ,[AmortizationScheduleSourceId]
      ,[RunningTaxBalance]
      ,[TaxPaid]
      ,[InterestPaid]
      ,[PenaltyPaid]
      ,[FromDate]
      ,[ToDate]
FROM [PRAXIS_KRISSE].Bellevue.PaymentApplication
SET IDENTITY_INSERT Bellevue.PaymentApplication OFF


-- penalties
SET IDENTITY_INSERT Bellevue.Penalty ON
insert into Bellevue.Penalty
([PenaltyId]
      ,[AmortizationScheduleId]
      ,[PenaltyTypeId]
      ,[Amount]
      ,[Adjustment]
      ,[IsWaived]
      ,[CommentText]
      ,[UserId])
SELECT 
[PenaltyId]
      ,[AmortizationScheduleId]
      ,[PenaltyTypeId]
      ,[Amount]
      ,[Adjustment]
      ,[IsWaived]
      ,[CommentText]
      ,[UserId]
      FROM [PRAXIS_KRISSE].Bellevue.Penalty
SET IDENTITY_INSERT Bellevue.Penalty OFF


