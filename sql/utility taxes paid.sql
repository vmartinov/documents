SELECT DISTINCT b.BusinessID, b.Name, fft.FilingFrequency FROM Bellevue.Business b
INNER JOIN Bellevue.FilingFrequency ff ON b.BusinessID = ff.BusinessId and ff.StartDate = '1/1/2014'
INNER JOIN dbo.FilingFrequencyType fft ON ff.FilingFrequencyTypeId = fft.FilingFrequencyTypeId
INNER JOIN Bellevue.TaxReturn tr ON b.BusinessID = tr.BusinessID and tr.PeriodEndingDate BETWEEN '1/1/2014' AND '12/31/2014'
INNER JOIN Bellevue.TaxReturnSection trs ON tr.TaxReturnId = trs.TaxReturnId
INNER JOIN Bellevue.TaxReturnDetail trd ON trs.TaxReturnSectionId = trd.TaxReturnSectionId
INNER JOIN dbo.TaxType tt ON trd.TaxTypeId = tt.TaxTypeId 
and tt.Code IN ('40', '41', '42', '43', '44', '45', '46', '47', '48', '60', '61', '62', '63', '64')
