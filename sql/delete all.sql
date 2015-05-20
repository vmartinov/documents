DELETE FROM Warehouse.BusinessFact

DELETE FROM ARD.DownloadedFiles

delete from History.FilingFrequencyHistory

delete from bellevue.FilingFrequency

delete from bellevue.BusinessPhone

delete from bellevue.PersonPhone

DELETE FROM History.PhoneHistory

DELETE FROM Bellevue.DetectionPhone

DELETE FROM Bellevue.Phone

delete from bellevue.businessAddress

DELETE FROM Bellevue.PersonAddress

DELETE FROM Bellevue.DetectionAddress

DELETE FROM History.AddressHistory

DELETE from Bellevue.RefundAddress

delete from bellevue.address

delete from history.licenseApprovalhistory

delete from bellevue.licenseApproval


delete from bellevue.licenseApplicationPurpose

DELETE FROM History.LicenseApplicationHistory

delete from bellevue.licenseApplication

DELETE FROM History.LicenseHistory

delete from bellevue.license

delete from bellevue.dba

delete from history.businessHistory

delete from bellevue.businessComment

DELETE FROM History.BatchDetailHistory

DELETE FROM Bellevue.BatchDetail

DELETE FROM Bellevue.PaymentApplication

DELETE FROM History.PaymentHistory

DELETE FROM Bellevue.RefundPayment

DELETE from Bellevue.Payment

DELETE FROM Bellevue.Penalty

DELETE FROM History.AmortizationScheduleHistory

DELETE FROM Bellevue.AmortizationSchedule

DELETE FROM History.TaxReturnDetailHistory

DELETE FROM Bellevue.TaxReturnDetail

DELETE FROM Bellevue.TaxReturnSection

DELETE FROM History.TaxReturnHistory

DELETE FROM History.DelinquencyHistory

DELETE FROM Bellevue.Delinquency

DELETE FROM History.MatcExternalDetailHistory

DELETE FROM Bellevue.MatcExternalDetail

DELETE FROM History.MatcInternalDetailHistory

DELETE FROM Bellevue.MatcInternalDetail

DELETE from Bellevue.DeductionDetail

DELETE from History.SquareFootageDetailHistory

DELETE FROM Bellevue.SquareFootageDetail

DELETE FROM History.ApportionmentDetailHistory

DELETE FROM Bellevue.ApportionmentDetail

DELETE FROM Bellevue.TaxReturn

DELETE FROM History.BatchHistory

DELETE FROM Bellevue.Batch

DELETE FROM Bellevue.BusinessLetter

DELETE FROM Bellevue.DetectionLetter

DELETE FROM Bellevue.Letter 

SET NOCOUNT ON;
DECLARE @r INT;
SET @r = 1;
WHILE @r > 0
BEGIN
  BEGIN TRANSACTION;
 
  DELETE TOP (10) -- this will change
   Bellevue.letter
  
   SET @r = @@ROWCOUNT;

  COMMIT TRANSACTION;
END



DELETE FROM bellevue.balanceDueLetterQueue

DELETE FROM bellevue.balanceDueLetterQueue


DELETE FROM Bellevue.Letter

DELETE  FROM Bellevue.DetectionComment

DELETE FROM History.DetectionHistory

DELETE FROM Bellevue.Detection

DELETE FROM History.RefundHistory

DELETE FROM Bellevue.RefundDetail

DELETE FROM Bellevue.Refund

DELETE FROM Bellevue.BusinessZoneRestriction

DELETE FROM Bellevue.BusinessMessage

delete from bellevue.business


DELETE FROM Bellevue.LockboxFile



DELETE FROM History.PersonHistory

delete from bellevue.Person

DELETE FROM Bellevue.ExportParameter

DELETE FROM Bellevue.ExportQueue


DELETE FROM History.LegalEntityHistory

delete from bellevue.LegalEntity


DELETE FROM DolDownload_Error

DELETE FROM ELMAH_Error

DELETE FROM Exception

DELETE FROM GarbageCollector

DELETE FROM [UserRole]

DELETE FROM [User]

DELETE from Bellevue.GeneralMessage

DELETE from Bellevue.Penalty