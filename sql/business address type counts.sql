
SELECT * FROM BELLEVUE.BUSINESSADDRESS WHERE BUSINESSID = 25

select * from bellevue.address
where addressid in (14393, 14394, 131915, 131916)

select [dbo].[BusinessAddressTypeGetCount](131915, 1)

select ba.businessid, count(*)
from bellevue.businessAddress ba
inner join bellevue.address a
on ba.addressid = a.addressid
where a.Retired = 0
group by ba.businessid
having count(*) >= 2

update bellevue.address set retired = 1 where addressId in (
select addressid
from bellevue.businessAddress
where businessid in (select ba.businessid
from bellevue.businessAddress ba
inner join bellevue.address a
on ba.addressid = a.addressid
where a.Retired = 0
group by ba.businessid
having count(*) >= 2
)
)

EXEC [Core].[AddressInsert]
	1, --@AddressTypeID int,
	'', --@AddressLine1 nvarchar(125),
	'', --@AddressLine2 nvarchar(125),
	'', --@AddressLine3 nvarchar(125),
	100, --@AddressNumber int,
	'', --@AddressNumberSuffix nvarchar(5),
	1, --@DeliveryTypeID int,
	'108th', --@DeliveryPoint nvarchar(50),
	4, --@StreetTypeID int,
	'bellevue', --@City nvarchar(25),
	56, --@StateID int,
	'', --@Province nvarchar(25),
	'', --@Zip4 nchar(4),
	'12345', --@PostalCode nvarchar(10),
	0, --@Validated bit,
	1, --@PreDirectionalID int,
	2, --@PostDirectionalID int,
	242, --@CountryID int,
	0, --@Retired bit,
	'BUSINESS', --@ParentEntityName NVARCHAR(20),
	25, --@ParentID int,
	'1/1/2011' --@SystemTimestamp DateTime
