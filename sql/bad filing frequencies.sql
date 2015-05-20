select businessid, startDate, endDate, fft.FilingFrequency, u.UserName
from bellevue.FilingFrequency ff
inner join [user] u on ff.UserId = u.UserID
inner join filingFrequencytype fft on ff.FilingFrequencyTypeId = fft.FilingFrequencyTypeId
where datepart(month, startDate) <> 1 or datepart(day, startDate) <> 1 or datepart(month, endDate) <> 12 or datepart(day, endDate) <> 31
order by businessid, StartDate

select * from bellevue.FilingFrequency
where FilingFrequencyId = 419850

select * from [user] where userid = 79637