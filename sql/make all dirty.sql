select * from ApplicationSetting

select * from bellevue.taxReturn
where isMaster = 1 
and '2/19/2013' < PeriodEndingDate


update bellevue.taxReturn
set isDirty = 1
where isMaster = 1 
and '2/19/2013' < PeriodEndingDate
