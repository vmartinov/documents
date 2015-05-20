-- postal code
UPDATE a 
SET a.PostalCode = la.ZipCode
FROM Bellevue.Address a 
inner JOIN StreetType st ON a.StreetTypeID = st.StreetTypeID
INNER JOIN LisAddress la ON a.AddressNumber = la.StreetNumber
							AND a.DeliveryPoint = la.StreetNamePart
							AND st.StreetType = la.StreetType			
							AND a.City = la.PostalCity			
							AND a.PostalCode <> la.ZipCode
WHERE a.Retired = 0 AND a.IsParsed = 1 and a.Validated = 0 AND City = 'BELLEVUE'

-- STE
UPDATE a 
SET a.AddressLine2 = 'STE ' + a.AddressLine2
FROM Bellevue.Address a 
inner JOIN StreetType st ON a.StreetTypeID = st.StreetTypeID
INNER JOIN LisAddress la ON a.AddressNumber = la.StreetNumber
							AND a.DeliveryPoint = la.StreetNamePart
							AND st.StreetType = la.StreetType			
							AND a.City = la.PostalCity			
							AND a.PostalCode = la.ZipCode
							AND la.UnitDetail  = 'STE ' + a.AddressLine2
WHERE a.Retired = 0 AND a.IsParsed = 1 and a.Validated = 0 AND City = 'BELLEVUE'


-- APT
UPDATE a 
SET a.AddressLine2 = 'APT ' + a.AddressLine2
FROM Bellevue.Address a 
inner JOIN StreetType st ON a.StreetTypeID = st.StreetTypeID
INNER JOIN LisAddress la ON a.AddressNumber = la.StreetNumber
							AND a.DeliveryPoint = la.StreetNamePart
							AND st.StreetType = la.StreetType			
							AND a.City = la.PostalCity			
							AND a.PostalCode = la.ZipCode
							AND la.UnitDetail  = 'APT ' + a.AddressLine2
WHERE a.Retired = 0 AND a.IsParsed = 1 and a.Validated = 0 AND City = 'BELLEVUE'

-- unit
UPDATE a 
SET a.AddressLine2 = 'UNIT ' + a.AddressLine2
FROM Bellevue.Address a 
inner JOIN StreetType st ON a.StreetTypeID = st.StreetTypeID
INNER JOIN LisAddress la ON a.AddressNumber = la.StreetNumber
							AND a.DeliveryPoint = la.StreetNamePart
							AND st.StreetType = la.StreetType			
							AND a.City = la.PostalCity			
							AND a.PostalCode = la.ZipCode
							AND la.UnitDetail  = 'UNIT ' + a.AddressLine2
WHERE a.Retired = 0 AND a.IsParsed = 1 and a.Validated = 0 AND City = 'BELLEVUE'


-- bldg
UPDATE a 
SET a.AddressLine2 = 'BLDG ' + a.AddressLine2
FROM Bellevue.Address a 
inner JOIN StreetType st ON a.StreetTypeID = st.StreetTypeID
INNER JOIN LisAddress la ON a.AddressNumber = la.StreetNumber
							AND a.DeliveryPoint = la.StreetNamePart
							AND st.StreetType = la.StreetType			
							AND a.City = la.PostalCity			
							AND a.PostalCode = la.ZipCode
							AND la.UnitDetail  = 'BLDG ' + a.AddressLine2
WHERE a.Retired = 0 AND a.IsParsed = 1 and a.Validated = 0 AND City = 'BELLEVUE'


UPDATE a 
SET a.AddressLine2 = la.UnitDetail 
FROM Bellevue.Address a 
inner JOIN StreetType st ON a.StreetTypeID = st.StreetTypeID
INNER JOIN LisAddress la ON a.AddressNumber = la.StreetNumber
							AND a.DeliveryPoint = la.StreetNamePart
							AND st.StreetType = la.StreetType			
							AND a.City = la.PostalCity			
							AND a.PostalCode = la.ZipCode
							AND REPLACE(REPLACE(REPLACE(REPLACE(a.AddressLine2, 'STE', ''), 'UNIT', ''), 'APT', ''), 'BLDG', '')  = REPLACE(REPLACE(REPLACE(REPLACE(la.UnitDetail, 'STE', ''), 'UNIT', ''), 'APT', ''), 'BLDG', '')
WHERE a.Retired = 0 AND a.IsParsed = 1 and a.Validated = 0 AND City = 'BELLEVUE'
