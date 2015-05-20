-- original
SELECT COUNT(*) FROM bellevue.businessaddress ba
INNER JOIN Bellevue.Address a ON ba.AddressID = a.AddressID
AND a.AddressTypeID = 1 AND a.DeliveryTypeID = 1 AND a.Retired = 0 AND a.IsParsed = 1 AND City = 'BELLEVUE'

SELECT COUNT(*) FROM bellevue.businessaddress ba
INNER JOIN Bellevue.Address a ON ba.AddressID = a.AddressID
AND a.AddressTypeID = 2 AND a.DeliveryTypeID = 1 AND a.Retired = 0 AND a.IsParsed = 1 AND City = 'BELLEVUE'

-- success
SELECT COUNT(*) FROM bellevue.businessaddress ba
INNER JOIN Bellevue.Address a ON ba.AddressID = a.AddressID
AND a.AddressTypeID = 1 AND a.DeliveryTypeID = 1 AND a.Retired = 0 AND a.IsParsed = 1 AND City = 'BELLEVUE' AND a.Validated = 1

SELECT COUNT(*) FROM bellevue.businessaddress ba
INNER JOIN Bellevue.Address a ON ba.AddressID = a.AddressID
AND a.AddressTypeID = 2 AND a.DeliveryTypeID = 1 AND a.Retired = 0 AND a.IsParsed = 1 AND City = 'BELLEVUE' AND a.Validated = 1

--multiple match
SELECT COUNT(*) FROM bellevue.businessaddress ba
INNER JOIN Bellevue.Address a ON ba.AddressID = a.AddressID
AND a.AddressTypeID = 1 AND a.DeliveryTypeID = 1 AND a.Retired = 0 AND a.IsParsed = 1 AND City = 'BELLEVUE' AND a.Validated = 0 AND a.MultipleLisMatch = 1

SELECT COUNT(*) FROM bellevue.businessaddress ba
INNER JOIN Bellevue.Address a ON ba.AddressID = a.AddressID
AND a.AddressTypeID = 2 AND a.DeliveryTypeID = 1 AND a.Retired = 0 AND a.IsParsed = 1 AND City = 'BELLEVUE' AND a.Validated = 0 AND a.MultipleLisMatch = 1

--failed
SELECT COUNT(*) FROM bellevue.businessaddress ba
INNER JOIN Bellevue.Address a ON ba.AddressID = a.AddressID
AND a.AddressTypeID = 1 AND a.DeliveryTypeID = 1 AND a.Retired = 0 AND a.IsParsed = 1 AND City = 'BELLEVUE' AND a.Validated = 0 AND a.MultipleLisMatch = 0

SELECT COUNT(*) FROM bellevue.businessaddress ba
INNER JOIN Bellevue.Address a ON ba.AddressID = a.AddressID
AND a.AddressTypeID = 2 AND a.DeliveryTypeID = 1 AND a.Retired = 0 AND a.IsParsed = 1 AND City = 'BELLEVUE' AND a.Validated = 0 AND a.MultipleLisMatch = 0


SELECT * FROM LisAddress la
WHERE la.StreetNumber = 1900
--AND la.Predirectional = 'NE'
AND la.StreetNamePart = '132nd'
AND la.StreetType = 'ave'
AND la.PostDirectional = 'ne'

--update Bellevue.Address 
--SET Validated = 0, Zoning = NULL,MultipleLisMatch = 0

-- update Bellevue.Business
-- set CityLimit = 0


