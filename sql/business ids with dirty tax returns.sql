	SELECT DISTINCT BusinessId, count(*)
	FROM [Bellevue].[TaxReturn]
	WHERE IsMaster = 1 AND IsDirty = 1
	group by businessId
	order by businessid
	
	
	SELECT tr.BusinessId
	--, count(*)
	, SUM(TaxBalance + InterestCredit - InterestCreditPaid + InterestDue + PenaltyDue)
	,a.bo_current_balance
	, SUM(TaxBalance + InterestCredit - InterestCreditPaid + InterestDue + PenaltyDue) - a.bo_current_balance
	FROM [Bellevue].[TaxReturn] tr
	INNER JOIN [Bellevue].[AmortizationSchedule] am
	ON am.TaxreturnId = tr.TaxReturnId
	inner join AlphaBalance a
	on tr.businessid = a.businessId
	WHERE IsMaster = 1
	group by tr.businessId, a.bo_current_balance
	having  SUM(TaxBalance + InterestCredit - InterestCreditPaid + InterestDue + PenaltyDue) <> a.bo_current_balance
	order by SUM(TaxBalance + InterestCredit - InterestCreditPaid + InterestDue + PenaltyDue) - a.bo_current_balance
	
	select * from bellevue.taxreturn
	where businessid = 706 and periodendingDate = '6/30/2008'
	
	select * from bellevue.amortizationSchedule
	where taxreturnid = 649628
	
	select * from bellevue.Penalty
	where amortizationScheduleId = 2979

	SELECT tr.BusinessId
	--, count(*)
	, SUM(TaxBalance)
	,a.bo_current_balance
	, SUM(TaxBalance) - a.bo_current_balance
	FROM [Bellevue].[TaxReturn] tr
	INNER JOIN [Bellevue].[AmortizationSchedule] am
	ON am.TaxreturnId = tr.TaxReturnId
	inner join AlphaBalance a
	on tr.businessid = a.businessId
	WHERE IsMaster = 1 AND IsDirty = 1
	group by tr.businessId, a.bo_current_balance
	having  SUM(TaxBalance) <> a.bo_current_balance
	order by SUM(TaxBalance) - a.bo_current_balance
	