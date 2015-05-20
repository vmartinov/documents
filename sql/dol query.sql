declare @Business as Table
(Old_Registrattion_Number NVARCHAR(125),
 New_Registration_Number INT not null primary key,
 Business_TaxId_9 NVARCHAR(125),
 Business_id NVARCHAR(125),
 Location_id NVARCHAR(125),
 Legal_Entity_Type NVARCHAR(125),
 Business_Name NVARCHAR(125),
 Business_DBA NVARCHAR(125),
 City_limit_code NVARCHAR(125),
 Bus_street_number NVARCHAR(125),
 Bus_street_name NVARCHAR(125),
 Business_suite NVARCHAR(125),
 business_zip_1 NVARCHAR(125),
 business_zip_2 NVARCHAR(125),
 Business_mail_st_address NVARCHAR(125),
 business_mail_city NVARCHAR(125),
 business_mail_state NVARCHAR(125),
 business_mail_zip_1 NVARCHAR(125),
 business_mail_zip_2 NVARCHAR(125),
 business_mail_attn NVARCHAR(125),
 BusinessStart_Date NVARCHAR(125),
 Customer_Cancel_Date NVARCHAR(125),
 Business_Area_code NVARCHAR(125),
 Business_phone NVARCHAR(125))

INSERT INTO @Business
(Old_Registrattion_Number,
 New_Registration_Number,
 Business_TaxId_9,
 Business_id,
 Location_id,
 Legal_Entity_Type,
 Business_Name ,
 Business_DBA,
 City_limit_code,
 BusinessStart_Date,
 Customer_Cancel_Date)

select distinct
	b.RegistrationNumber,
	b.BusinessId,
	le.UBI AS Business_TaxId_9,
	b.BusinessUBI ,
	b.LocationUBI,
	let.Code,
	le.name,
	b.Name,
	case when b.CityLimit = 1 then 'Y' else 'N' end,
	CONVERT(NVARCHAR, b.FirstActivityDate, 112),
	CONVERT(NVARCHAR, l.CancelDate, 112)
from Bellevue.Business b
inner join bellevue.License l on b.BusinessID = l.BusinessID and l.LicenseTypeID = 1
inner join Bellevue.LegalEntity le ON b.LegalEntityID = le.LegalEntityID
left join LegalEntityType let ON le.LegalEntityTypeID = let.LegalEntityTypeID
Where b.Temporary = 0 

-- PHYS ADDRESS
UPDATE b
  SET 
	b.Bus_street_number = a.AddressNumber,
	b.Bus_street_name = a.DeliveryPoint,
	b.Business_suite = a.AddressLine2,
	b.business_zip_1 = a.PostalCode,
	b.business_mail_zip_2 = a.Zip4
  FROM @Business b
  left join bellevue.BusinessAddress ba ON b.New_Registration_Number = ba.BusinessID
  left join Bellevue.Address a ON ba.AddressID = a.AddressID
  where a.AddressTypeID = 1 and a.Retired = 0
  

-- mailing ADDRESS
UPDATE b
  SET 
	b.Business_mail_st_address = a.AddressLine1,
	b.business_mail_city = a.City,
	b.business_mail_state = u.Name,
	b.business_mail_zip_1 = a.PostalCode,
	b.business_mail_zip_2 = a.Zip4,
	b.business_mail_attn = a.AddressLine3
  FROM @Business b
  left join bellevue.BusinessAddress ba ON b.New_Registration_Number = ba.BusinessID
  left join Bellevue.Address a ON ba.AddressID = a.AddressID
  left join USStates u on a.StateID = u.StateID
  where a.AddressTypeID = 2 and a.Retired = 0


  --phone
  UPDATE b
  SET 
	b.Business_Area_code = p.AreaCode,
	b.Business_phone = p.Number
 FROM @Business b
  left join bellevue.BusinessPhone bp ON b.New_Registration_Number = bp.BusinessID
  left join Bellevue.Phone p ON bp.PhoneID = p.PhoneID
    where p.PhoneTypeId = 1 and p.Retired = 0


select 
 ISNULL(Old_Registrattion_Number, ''),
 New_Registration_Number,
 ISNULL(Business_TaxId_9, ''),
 ISNULL(Business_id, ''),
 ISNULL(Location_id, ''),
 ISNULL(Legal_Entity_Type, ''),
 ISNULL(Business_Name, ''),
 ISNULL(Business_DBA, ''),
 ISNULL(City_limit_code, ''),
 ISNULL(Bus_street_number, ''),
 ISNULL(Bus_street_name, ''),
 ISNULL(Business_suite, ''),
 ISNULL(business_zip_1, ''),
 ISNULL(business_zip_2, ''),
 ISNULL(Business_mail_st_address, ''),
 ISNULL(business_mail_city, ''),
 ISNULL(business_mail_state, ''),
 ISNULL(business_mail_zip_1, ''),
 ISNULL(business_mail_zip_2, ''),
 ISNULL(business_mail_attn, ''),
 ISNULL(BusinessStart_Date, ''),
 ISNULL(Customer_Cancel_Date, ''),
 ISNULL(Business_Area_code, ''),
 ISNULL(Business_phone, '')
from @Business
ORDER BY New_Registration_Number