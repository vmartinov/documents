declare @BusinessId INT
set @BusinessId = 96353

delete from History.ApportionmentDetailHistory
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId)

delete from Bellevue.ApportionmentDetail
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId)

delete from History.SquareFootageDetailHistory
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId)

delete from Bellevue.SquareFootageDetail
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId)

delete from History.MatcInternalDetailHistory
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId)

delete from Bellevue.MatcInternalDetail
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId)

delete from History.MatcExternalDetailHistory
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId)

delete from Bellevue.MatcExternalDetail
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId)

delete from History.DeductionDetailHistory
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId)

delete from Bellevue.DeductionDetail
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId)

delete from History.TaxReturnDetailHistory
where taxReturnSectionId in (select taxReturnSectionId from Bellevue.TaxReturnSection
	where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId))

delete from Bellevue.TaxReturnDetail
where taxReturnSectionId in (select taxReturnSectionId from Bellevue.TaxReturnSection
	where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId))

delete from Bellevue.TaxReturnSection
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId)

delete from Bellevue.paymentApplication
where amortizationScheduleId in (select amortizationScheduleid from bellevue.amortizationSchedule
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId))

delete from Bellevue.payment
where amortizationScheduleSourceId in (select amortizationScheduleid from bellevue.amortizationSchedule
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId))

delete from history.penaltyHistory
where amortizationScheduleId in (select amortizationScheduleid from bellevue.amortizationSchedule
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId))


delete from bellevue.penalty
where amortizationScheduleId in (select amortizationScheduleid from bellevue.amortizationSchedule
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId))


delete from History.amortizationScheduleHistory
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId)

delete from Bellevue.amortizationSchedule
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId)

delete from Bellevue.Delinquency
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId)


delete from History.taxReturnHistory
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId)

delete from bellevue.taxReturn
where taxReturnId in (select taxReturnId from bellevue.taxReturn where businessid = @BusinessId)