UPDATE Bellevue.Business
SET LegalEntityID = (SELECT legalEntityId FROM Bellevue.LegalEntity le WHERE le.UBI = '600651000')
WHERE BusinessID = 147853  