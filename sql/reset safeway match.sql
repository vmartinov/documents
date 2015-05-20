/*
Run this script on:

vcobinetdv02.PRAXIS_DEV    -  This database will be modified

to synchronize it with:

vcobinetdv02.PRAXIS_STAGING

You are recommended to back up your database before running this script

Script created by SQL Data Compare version 8.1.0 from Red Gate Software Ltd at 1/3/2011 3:01:40 PM

*/
		
SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO
BEGIN TRANSACTION
-- Pointer used for text / image updates. This might not be needed, but is declared here just in case
DECLARE @pv binary(16)

-- Drop constraints from [Bellevue].[Business]
ALTER TABLE [Bellevue].[Business] DROP CONSTRAINT [FK_Business_Business]
ALTER TABLE [Bellevue].[Business] DROP CONSTRAINT [FK_Business_BusinessType]
ALTER TABLE [Bellevue].[Business] DROP CONSTRAINT [FK_Business_LegalEntity]
ALTER TABLE [Bellevue].[Business] DROP CONSTRAINT [FK_Business_LegalEntity1]

-- Update rows in [Bellevue].[Business]
UPDATE [Bellevue].[Business] SET [Name]=N'SAFEWAY TRAINING SCHOOL                 ', [FirstActivityDate]='2009-01-01 00:00:00.000', [BusinessUBI]=N'001', [LocationUBI]=N'0362', [ProductsAndServices]=N'PART OF SAFEWAY, INC. AND IS USED TO TRAIN EMPLOYE', [SquareFootage]=0, [NAIC]=NULL WHERE [BusinessID]=89344
-- Operation applied to 1 rows out of 685

-- Add constraints to [Bellevue].[Business]
ALTER TABLE [Bellevue].[Business] ADD CONSTRAINT [FK_Business_Business] FOREIGN KEY ([PriorBusinessID]) REFERENCES [Bellevue].[Business] ([BusinessID])
ALTER TABLE [Bellevue].[Business] ADD CONSTRAINT [FK_Business_BusinessType] FOREIGN KEY ([BusinessTypeID]) REFERENCES [dbo].[BusinessType] ([BusinessTypeID])
ALTER TABLE [Bellevue].[Business] ADD CONSTRAINT [FK_Business_LegalEntity] FOREIGN KEY ([LegalEntityID]) REFERENCES [Bellevue].[LegalEntity] ([LegalEntityID])
ALTER TABLE [Bellevue].[Business] ADD CONSTRAINT [FK_Business_LegalEntity1] FOREIGN KEY ([PriorLegalEntityID]) REFERENCES [Bellevue].[LegalEntity] ([LegalEntityID])
COMMIT TRANSACTION
GO