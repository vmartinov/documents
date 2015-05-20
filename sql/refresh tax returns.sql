SELECT * FROM bellevue.TaxReturn tr
WHERE tr.IsMaster = 1 AND tr.PeriodEndingDate > '2/19/2013' AND tr.PaymentTypeId IN (1, 2)
ORDER BY BusinessId, tr.PeriodEndingDate


SELECT DISTINCT businessid FROM bellevue.TaxReturn tr
WHERE tr.IsMaster = 1 AND tr.PeriodEndingDate > '2/19/2013'


update bellevue.TaxReturn 
SET IsDirty = 1
WHERE IsMaster = 1 AND PeriodEndingDate > '2/19/2013' AND PaymentTypeId IN (1, 2)
