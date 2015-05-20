SELECT b.BusinessID, b.Name, a.AddressLine1 FROM bellevue.business b
INNER JOIN bellevue.BusinessAddress ba ON b.BusinessID = ba.BusinessID
INNER JOIN Bellevue.Address a ON ba.AddressID = a.AddressID AND a.Retired = 0
AND a.PreDirectionalID = 5 and a.DeliveryPoint = '16th' AND a.StreetTypeID = 174 and a.PostalCode = '98005'
AND a.AddressNumber IN (13201,
13203,
13212,
13223,
13228,
13234,
13242,
13340,
13356,
13400,
13410,
13414,
13420,
13427,
13430,
13434,
13440,
13600,
13620,
13640,
13644,
13654,
13662,
13680,
13812,
13814,
13816,
13818)



HouseNumber	StPreDirectional	StNamePart	StType	PlaceName	Zip5	
13201	NE	16TH	ST	Bellevue	98005	Building and Parcel
13203	NE	16TH	ST	Bellevue	98005	Building address only
13212	NE	16TH	ST	Bellevue	98005	Building and Parcel
13223	NE	16TH	ST	Bellevue	98005	Building address only
13228	NE	16TH	ST	Bellevue	98005	Building and Parcel
13234	NE	16TH	ST	Bellevue	98005	Building and Parcel
13242	NE	16TH	ST	Bellevue	98005	Building and Parcel
13340	NE	16TH	ST	Bellevue	98005	Building and Parcel
13356	NE	16TH	ST	Bellevue	98005	Parcel address only
13400	NE	16TH	ST	Bellevue	98005	Building and Parcel
13410	NE	16TH	ST	Bellevue	98005	Building and Parcel
13414	NE	16TH	ST	Bellevue	98005	Building address only
13420	NE	16TH	ST	Bellevue	98005	Building and Parcel
13427	NE	16TH	ST	Bellevue	98005	Building and Parcel
13430	NE	16TH	ST	Bellevue	98005	Building address only
13434	NE	16TH	ST	Bellevue	98005	Building and Parcel
13440	NE	16TH	ST	Bellevue	98005	Building address only
13600	NE	16TH	ST	Bellevue	98005	Building and Parcel
13620	NE	16TH	ST	Bellevue	98005	Building and Parcel
13640	NE	16TH	ST	Bellevue	98005	Building and Parcel
13644	NE	16TH	ST	Bellevue	98005	Parcel address only
13654	NE	16TH	ST	Bellevue	98005	Building and Parcel
13662	NE	16TH	ST	Bellevue	98005	Building and Parcel
13680	NE	16TH	ST	Bellevue	98005	Building and Parcel
13812	NE	16TH	ST	Bellevue	98005	Building and Parcel
13814	NE	16TH	ST	Bellevue	98005	Building and Parcel
13816	NE	16TH	ST	Bellevue	98005	Building and Parcel
13818	NE	16TH	ST	Bellevue	98005	Building and Parcel

SELECT * from dbo.directionals
SELECT * FROM dbo.StreetType st WHERE st.StreetType = 'ST'