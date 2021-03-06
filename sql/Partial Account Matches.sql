/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [BusinessID]
      ,[PartialBusinessMatch]
      ,[PartialDetectionMatch]
  FROM [PRAXIS_DEV].[Bellevue].[Business]
  where [PartialBusinessMatch] = 1 or [PartialDetectionMatch] = 1

 update [PRAXIS_DEV].[Bellevue].[Business]
set partialDetectionMatch = 0
 where businessid in (95534,94869,
94884)
  
update [PRAXIS_DEV].[Bellevue].[Business]
set partialBusinessMatch = 0
 where businessid in (25)
94869,
94884,
95138,
95143,
95154,
95200,
95265,
95285,
95286,
95288,
95323,
95342,
95414,
95533,
95534,
95552,
95560,
95568)