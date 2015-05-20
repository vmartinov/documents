SELECT businessId, periodendingdate
FROM Bellevue.TaxReturn tr
WHERE (DATEPART(mm, tr.PeriodEndingDate) = 1 AND DATEPART(dd, tr.PeriodEndingDate) <> 31)
OR (DATEPART(mm, tr.PeriodEndingDate) = 2 AND DATEPART(dd, tr.PeriodEndingDate) <> 28 AND DATEPART(dd, tr.PeriodEndingDate) <> 29)
OR (DATEPART(mm, tr.PeriodEndingDate) = 3 AND DATEPART(dd, tr.PeriodEndingDate) <> 31)
OR (DATEPART(mm, tr.PeriodEndingDate) = 4 AND DATEPART(dd, tr.PeriodEndingDate) <> 30)
OR (DATEPART(mm, tr.PeriodEndingDate) = 5 AND DATEPART(dd, tr.PeriodEndingDate) <> 31)
OR (DATEPART(mm, tr.PeriodEndingDate) = 6 AND DATEPART(dd, tr.PeriodEndingDate) <> 30)
OR (DATEPART(mm, tr.PeriodEndingDate) = 7 AND DATEPART(dd, tr.PeriodEndingDate) <> 31)
OR (DATEPART(mm, tr.PeriodEndingDate) = 8 AND DATEPART(dd, tr.PeriodEndingDate) <> 31)
OR (DATEPART(mm, tr.PeriodEndingDate) = 9 AND DATEPART(dd, tr.PeriodEndingDate) <> 30)
OR (DATEPART(mm, tr.PeriodEndingDate) = 10 AND DATEPART(dd, tr.PeriodEndingDate) <> 31)
OR (DATEPART(mm, tr.PeriodEndingDate) = 11 AND DATEPART(dd, tr.PeriodEndingDate) <> 30)
OR (DATEPART(mm, tr.PeriodEndingDate) = 12 AND DATEPART(dd, tr.PeriodEndingDate) <> 31)