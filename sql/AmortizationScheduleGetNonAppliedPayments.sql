USE [PRAXIS]
GO
/****** Object:  StoredProcedure [Core].[AmortizationScheduleGetNonAppliedPayments]    Script Date: 05/10/2012 13:34:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [Core].[AmortizationScheduleGetNonAppliedPayments]
	@BusinessId INT,
	@AmortizationScheduleId INT,
	@PeriodEndingDate DATE
AS
BEGIN
		
	SELECT P.* 
	FROM [Bellevue].[Payment] P
	LEFT OUTER JOIN [Bellevue].[PaymentApplication] PA 
	ON P.PaymentId = PA.PaymentId 
	WHERE P.BusinessId = @BusinessId
	AND P.PeriodEndingDate = @PeriodEndingDate
	AND PA.AmortizationScheduleId = @AmortizationScheduleId
	AND PA.PaymentApplicationId IS NULL

END
