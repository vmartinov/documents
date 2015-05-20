select * from bellevue.BusinessAddress
where businessId = 129004

select len(addressLine1), len(addressLine2),* from bellevue.Address
where addressid in (105502, 105503)



select addressId, addressLine1, addressLine2,  rtrim(substring(addressLine1, 0, len(addressLine1) - len(addressLine2) + 1))
from bellevue.address
where AddressLine2 is not null
and substring(addressLine1, len(addressLine1) - len(addressLine2) + 1, len(addressLine2)) = addressLine2
order by addressTypeId

update bellevue.address
set addressLine1 = rtrim(substring(addressLine1, 0, len(addressLine1) - len(addressLine2) + 1))
where AddressLine2 is not null
and substring(addressLine1, len(addressLine1) - len(addressLine2) + 1, len(addressLine2)) = addressLine2

select addressLine1, addressline2
from bellevue.address
where addressid = 15093

