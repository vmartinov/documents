CREATE VIEW [Bellevue].[BusinessAddressType]
WITH SCHEMABINDING
AS
SELECT		BA.BusinessID, A.AddressTypeID, A.Retired
FROM		Bellevue.BusinessAddress AS BA 
			INNER JOIN  Bellevue.Address AS A 
			ON BA.AddressID = A.AddressID
			WHERE A.Retired = 0
