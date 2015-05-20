USE [PRAXIS_STAGING]
GO

/****** Object:  StoredProcedure [Core].[TaxReturnInsert]    Script Date: 05/16/2012 12:28:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Core].[TaxReturnInsert]
	@TaxReturnId INT,
	@BusinessId INT,
	@BatchId INT,
	@PeriodEndingDate DATE,
	@PostMarkDate DATE,
	@Payment MONEY,
	@PaymentTypeId INT,
	@IsMaster BIT,
	@IsDirty BIT
AS
BEGIN
	DECLARE @Amendment INT
	SET @Amendment = 2
	DECLARE @Installment INT
	SET @Installment = 3
	DECLARE @PrevMasterId INT
	DECLARE @PrevAmortizationScheduleId INT
	
	-- get prev master
	SELECT @PrevMasterId = TR.TaxReturnId,
	@PrevAmortizationScheduleId = AM.AmortizationScheduleId
	FROM [Bellevue].[TaxReturn] TR
	INNER JOIN [Bellevue].[AmortizationSchedule] AM
	ON TR.TaxReturnId = AM.TaxReturnId
	WHERE TR.BusinessId = @BusinessId
	AND TR.PeriodEndingDate = @PeriodEndingDate
	AND TR.IsMaster = 1
		
	-- make prev master dirty if this is installment
	IF (@PaymentTypeId = @Installment AND @PrevMasterId IS NOT NULL)
		UPDATE [Bellevue].[TaxReturn] 
		SET IsDirty = 1
		WHERE TaxReturnId = @PrevMasterId

	
	-- make all TR touched by prev master to be dirty
	IF (@PaymentTypeId = @Amendment AND @PrevAmortizationScheduleId IS NOT NULL)
		UPDATE TR
		SET TR.IsDirty = 1
		FROM [Bellevue].[TaxReturn] TR
		INNER JOIN [Bellevue].[AmortizationSchedule] AM
		ON TR.TaxReturnId = AM.TaxReturnId
		INNER JOIN [Bellevue].[PaymentApplication] PA
		ON AM.AmortizationScheduleId = PA.AmortizationScheduleId
		WHERE PA.AmortizationScheduleSourceId = @PrevAmortizationScheduleId
		AND TR.IsMaster = 1

	
	-- make prev master non-Master
	IF (@IsMaster = 1 AND @PrevMasterId IS NOT NULL)
		UPDATE [Bellevue].[TaxReturn] 
		SET IsMaster = 0
		WHERE TaxReturnId = @PrevMasterId
		
	
	INSERT INTO [Bellevue].[TaxReturn] 
	   (BusinessId,
		BatchId,
		PeriodEndingDate,
		PostMarkDate,
		Payment,
		PaymentTypeId,
		IsMaster,
		IsDirty)
	VALUES
	   (@BusinessId,
		@BatchId,
		@PeriodEndingDate,
		@PostMarkDate,
		@Payment,
		@PaymentTypeId,
		@IsMaster,
		@IsDirty)
	
	SELECT CAST(SCOPE_IDENTITY() as int)
	
END

GO


