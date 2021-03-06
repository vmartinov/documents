SELECT distinct
ba.BusinessID, a.AddressNumber, d1.Directional as PreDirectional, a.DeliveryPoint, st.StreetType, d2.Directional as PostDirectional, a.AddressLine2 as Unit, a.PostalCode,
la.StreetNumber, la.PreDirectional, la.StreetNamePart, la.StreetType, la.PostDirectional, la.UnitDetail, la.ZipCode
FROM bellevue.businessaddress ba
INNER JOIN Bellevue.Address a ON ba.AddressID = a.AddressID
left JOIN StreetType st ON a.StreetTypeID = st.StreetTypeID
LEFT JOIN Directionals d1 ON a.PreDirectionalID = d1.DirectionalID
LEFT JOIN Directionals d2 ON a.PostDirectionalID = d2.DirectionalID
INNER JOIN LisAddress la ON a.AddressNumber = la.StreetNumber 
	AND a.DeliveryPoint = la.StreetNamePart
	AND st.StreetType = la.StreetType
	AND (a.PostalCode <> la.ZipCode)
	AND (a.AddressLine2 <> la.UnitDetail OR (a.AddressLine2 IS NOT NULL AND la.UnitDetail is NULL))
WHERE  a.AddressTypeID = 1 AND a.Retired = 0 AND a.IsParsed = 1 and a.Validated = 0 AND City = 'BELLEVUE'
AND a.MultipleLisMatch = 0

SELECT distinct
ba.BusinessID, a.AddressNumber, d1.Directional as PreDirectional, a.DeliveryPoint, st.StreetType, d2.Directional as PostDirectional, a.PostalCode,
la.StreetNumber, la.PreDirectional, la.StreetNamePart, la.StreetType, la.PostDirectional, la.ZipCode
FROM bellevue.businessaddress ba
INNER JOIN Bellevue.Address a ON ba.AddressID = a.AddressID
left JOIN StreetType st ON a.StreetTypeID = st.StreetTypeID
LEFT JOIN Directionals d1 ON a.PreDirectionalID = d1.DirectionalID
LEFT JOIN Directionals d2 ON a.PostDirectionalID = d2.DirectionalID
INNER JOIN LisAddress la ON a.AddressNumber = la.StreetNumber 
	AND a.DeliveryPoint = la.StreetNamePart
	AND st.StreetType = la.StreetType
	AND (a.PostalCode <> la.ZipCode)
WHERE  a.AddressTypeID = 1 AND a.Retired = 0 AND a.IsParsed = 1 and a.Validated = 0 AND City = 'BELLEVUE'
AND a.MultipleLisMatch = 0


SELECT distinct
ba.BusinessID, a.AddressNumber, d1.Directional as PreDirectional, a.DeliveryPoint, st.StreetType, d2.Directional as PostDirectional, a.AddressLine2 as Unit, 
la.StreetNumber, la.PreDirectional, la.StreetNamePart, la.StreetType, la.PostDirectional, la.UnitDetail
FROM bellevue.businessaddress ba
INNER JOIN Bellevue.Address a ON ba.AddressID = a.AddressID
left JOIN StreetType st ON a.StreetTypeID = st.StreetTypeID
LEFT JOIN Directionals d1 ON a.PreDirectionalID = d1.DirectionalID
LEFT JOIN Directionals d2 ON a.PostDirectionalID = d2.DirectionalID
INNER JOIN LisAddress la ON a.AddressNumber = la.StreetNumber 
	AND a.DeliveryPoint = la.StreetNamePart
	AND st.StreetType = la.StreetType
	AND la.UnitDetail LIKE '%' + a.AddressLine2 + '%'
WHERE  a.AddressTypeID = 1 AND a.Retired = 0 AND a.IsParsed = 1 and a.Validated = 0 AND City = 'BELLEVUE'
AND a.MultipleLisMatch = 0

SELECT distinct
ba.BusinessID, a.AddressNumber, d1.Directional as PreDirectional, a.DeliveryPoint, st.StreetType, d2.Directional as PostDirectional, a.AddressLine2 as Unit, 
la.StreetNumber, la.PreDirectional, la.StreetNamePart, la.StreetType, la.PostDirectional, la.UnitDetail
FROM bellevue.businessaddress ba
INNER JOIN Bellevue.Address a ON ba.AddressID = a.AddressID
left JOIN StreetType st ON a.StreetTypeID = st.StreetTypeID
LEFT JOIN Directionals d1 ON a.PreDirectionalID = d1.DirectionalID
LEFT JOIN Directionals d2 ON a.PostDirectionalID = d2.DirectionalID
INNER JOIN LisAddress la ON a.AddressNumber = la.StreetNumber 
	AND a.DeliveryPoint = la.StreetNamePart
	AND st.StreetType = la.StreetType
	AND la.UnitDetail  = 'STE ' + a.AddressLine2
WHERE  a.AddressTypeID = 1 AND a.Retired = 0 AND a.IsParsed = 1 and a.Validated = 0 AND City = 'BELLEVUE'
AND a.MultipleLisMatch = 0

SELECT distinct
ba.BusinessID, a.AddressNumber, d1.Directional as PreDirectional, a.DeliveryPoint, st.StreetType, d2.Directional as PostDirectional, a.AddressLine2 as Unit, 
la.StreetNumber, la.PreDirectional, la.StreetNamePart, la.StreetType, la.PostDirectional, la.UnitDetail
FROM bellevue.businessaddress ba
INNER JOIN Bellevue.Address a ON ba.AddressID = a.AddressID
left JOIN StreetType st ON a.StreetTypeID = st.StreetTypeID
LEFT JOIN Directionals d1 ON a.PreDirectionalID = d1.DirectionalID
LEFT JOIN Directionals d2 ON a.PostDirectionalID = d2.DirectionalID
INNER JOIN LisAddress la ON a.AddressNumber = la.StreetNumber 
	AND a.DeliveryPoint = la.StreetNamePart
	AND st.StreetType = la.StreetType
	AND la.UnitDetail  = 'APT ' + a.AddressLine2
WHERE  a.AddressTypeID = 1 AND a.Retired = 0 AND a.IsParsed = 1 and a.Validated = 0 AND City = 'BELLEVUE'
AND a.MultipleLisMatch = 0

SELECT distinct
ba.BusinessID, a.AddressNumber, d1.Directional as PreDirectional, a.DeliveryPoint, st.StreetType, d2.Directional as PostDirectional, a.AddressLine2 as Unit, 
la.StreetNumber, la.PreDirectional, la.StreetNamePart, la.StreetType, la.PostDirectional, la.UnitDetail
FROM bellevue.businessaddress ba
INNER JOIN Bellevue.Address a ON ba.AddressID = a.AddressID
left JOIN StreetType st ON a.StreetTypeID = st.StreetTypeID
LEFT JOIN Directionals d1 ON a.PreDirectionalID = d1.DirectionalID
LEFT JOIN Directionals d2 ON a.PostDirectionalID = d2.DirectionalID
INNER JOIN LisAddress la ON a.AddressNumber = la.StreetNumber 
	AND a.DeliveryPoint = la.StreetNamePart
	AND st.StreetType = la.StreetType
	AND la.UnitDetail  = 'UNIT ' + a.AddressLine2
WHERE  a.AddressTypeID = 1 AND a.Retired = 0 AND a.IsParsed = 1 and a.Validated = 0 AND City = 'BELLEVUE'
AND a.MultipleLisMatch = 0

SELECT distinct
ba.BusinessID, a.AddressNumber, d1.Directional as PreDirectional, a.DeliveryPoint, st.StreetType, d2.Directional as PostDirectional, a.AddressLine2 as Unit, 
la.StreetNumber, la.PreDirectional, la.StreetNamePart, la.StreetType, la.PostDirectional, la.UnitDetail
FROM bellevue.businessaddress ba
INNER JOIN Bellevue.Address a ON ba.AddressID = a.AddressID
left JOIN StreetType st ON a.StreetTypeID = st.StreetTypeID
LEFT JOIN Directionals d1 ON a.PreDirectionalID = d1.DirectionalID
LEFT JOIN Directionals d2 ON a.PostDirectionalID = d2.DirectionalID
INNER JOIN LisAddress la ON a.AddressNumber = la.StreetNumber 
	AND a.DeliveryPoint = la.StreetNamePart
	AND st.StreetType = la.StreetType
	AND la.UnitDetail  = 'BLDG ' + a.AddressLine2
WHERE  a.AddressTypeID = 1 AND a.Retired = 0 AND a.IsParsed = 1 and a.Validated = 0 AND City = 'BELLEVUE'
AND a.MultipleLisMatch = 0




