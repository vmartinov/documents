SELECT * FROM bellevue.Business
WHERE Active = 1
and BusinessID NOT IN (SELECT businessid from Bellevue.FilingFrequency ff WHERE ff.StartDate = '1/1/2014')
ORDER BY BusinessID


SELECT ff1.BusinessId, fft2.FilingFrequency AS Old, fft1.FilingFrequency AS New FROM Bellevue.FilingFrequency ff1
INNER JOIN Bellevue.FilingFrequency ff2 ON ff2.BusinessId = ff1.BusinessId
INNER JOIN dbo.FilingFrequencyType fft1 ON ff1.FilingFrequencyTypeId = fft1.FilingFrequencyTypeId
INNER JOIN dbo.FilingFrequencyType fft2 ON ff2.FilingFrequencyTypeId = fft2.FilingFrequencyTypeId
WHERE ff1.StartDate = '1/1/2014'
AND ff2.StartDate = '1/1/2013'
AND ff1.FilingFrequencyTypeId <> ff2.FilingFrequencyTypeId