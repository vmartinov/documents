USE [PRAXIS_STAGING]
GO

/****** Object:  StoredProcedure [Core].[TaxReturnUpdate]    Script Date: 05/16/2012 12:29:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Core].[TaxReturnUpdate]
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
	BEGIN TRAN
	
	-- get am
	DECLARE @AmortizationScheduleId INT
	SELECT @AmortizationScheduleId = AmortizationScheduleId
	FROM [Bellevue].[AmortizationSchedule]
	WHERE TaxReturnId = @TaxReturnId
	
	-- make all TR touched by it to be dirty
	IF (@IsDirty = 1)
		UPDATE TR
		SET TR.IsDirty = 1
		FROM [Bellevue].[TaxReturn] TR
		INNER JOIN [Bellevue].[AmortizationSchedule] AM
		ON TR.TaxReturnId = AM.TaxReturnId
		INNER JOIN [Bellevue].[PaymentApplication] PA
		ON AM.AmortizationScheduleId = PA.AmortizationScheduleId
		WHERE PA.AmortizationScheduleSourceId = @AmortizationScheduleId
		AND TR.IsMaster = 1
	
	-- make prev master non-master
	IF (@IsMaster = 1)
		UPDATE [Bellevue].[TaxReturn] 
		SET IsMaster = 0
		WHERE BusinessId = @BusinessId
		AND PeriodEndingDate = @PeriodEndingDate
	
	INSERT INTO [History].[TaxReturnHistory]
	(TaxReturnId,
	 BusinessId,
	 BatchId,
	 PeriodEndingDate,
	 PostMarkDate,
	 Payment,
	 PaymentTypeId,
	 IsMaster,
	 IsDirty)
	SELECT 
		TaxReturnId,
		BusinessId,
	    BatchId,
	    PeriodEndingDate,
	    PostMarkDate,
	    Payment,
	    PaymentTypeId,
	    IsMaster,
	    IsDirty
	FROM [Bellevue].[TaxReturn]
	WHERE TaxReturnId = @TaxReturnId
	
	
	UPDATE [Bellevue].[TaxReturn] 
	SET BusinessId = @BusinessId,
		BatchId = @BatchId,
		PeriodEndingDate = @PeriodEndingDate,
		PostMarkDate = @PostMarkDate,
		Payment = @Payment,
		PaymentTypeId = @PaymentTypeId,
		IsMaster = @IsMaster,
		IsDirty= @IsDirty
	WHERE 
		TaxReturnId = @TaxReturnId
	
	
	COMMIT TRAN
END


GO


