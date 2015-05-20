select Reason, 
xmlContent.query('data(/Address/RegNum)') as RegNum, 
xmlContent.query('data(/Address/DetNum)') as DetNum, 
xmlContent.query('data(/Address/PersonId)') as PersonId,
xmlContent.query('data(/Address/AddressLine1)') as AddressLine1,
xmlContent.query('data(/Address/City)') as City,
xmlContent.query('data(/Address/State)') as [State],
xmlContent.query('data(/Address/Zip)') as Zip,
xmlContent.query('data(/Address/AddressTypeId)') as AddressType, 
xmlContent 
from GarbageCollector
where convert(nvarchar, xmlContent.query('data(/Address/RegNum)')) <> ''
and convert(nvarchar, xmlContent.query('data(/Address/PersonId)')) = '0'
and Convert(nvarchar, xmlContent.query('data(/Address/AddressTypeId)')) = '2'




