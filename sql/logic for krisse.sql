/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 
	*
     FROM [PRAXIS_ALPHA].[dbo].[ALPHA_BO_QUARTERLY_PAYMENT_HISTORY]
     WHERE AMENDED_FLAG <> 'A'
     AND PRIOR_BO_TAX_PAID > 0
     and CHANGED_BY = 'INSTALLMENT'
     order by CHANGED_BY
     
     
     select [REGISTER_NUMBER],[QUARTER_ENDING_DATE]
     from [PRAXIS_ALPHA].[dbo].[ALPHA_BO_QUARTERLY_PAYMENT_HISTORY]
     group by [REGISTER_NUMBER],[QUARTER_ENDING_DATE]
     having COUNT(*) > 1
     
