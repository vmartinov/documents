select * from bellevue.LegalEntity where legalEntityId = 9937

select * from bellevue.business where BusinessID = 13402

select * from bellevue.business where RegistrationNumber = 'A1324'

select * from bellevue.business
where LegalEntityID = 29697

select * from LegalEntityTMP where ubi = '603182251'

declare @BusinessId INT
declare @legalEntityId INT

set @BusinessId = 13402
set @legalEntityId = 9937


delete from bellevue.FilingFrequency
where businessId = @BusinessId

delete from bellevue.businessPhone
where businessId = @BusinessId

delete from bellevue.businessAddress
where businessId = @BusinessId

delete from bellevue.licenseApproval
where licenseId in ( select licenseid from bellevue.license where businessId = @BusinessId)

delete from bellevue.licenseApplicationPurpose
where licenseApplicationId in (select licenseApplicationId  from bellevue.licenseApplication
				where businessId = @BusinessId)


delete from bellevue.licenseApplication
where businessId = @BusinessId



delete from bellevue.license
where businessId = @BusinessId

delete from bellevue.dba
where businessId = @BusinessId

delete from history.businessHistory
where businessId = @BusinessId


delete from bellevue.businessComment
where businessId = @BusinessId


delete from bellevue.business
where businessId = @BusinessId

delete from bellevue.personPhone
where personId in (select personId from bellevue.person
where LegalEntityID = @legalEntityId)

delete from bellevue.personAddress
where personId in (select personId from bellevue.person
where LegalEntityID = @legalEntityId)
delete from bellevue.person
where LegalEntityID = @legalEntityId

delete from bellevue.LegalEntity
where legalEntityId = @legalEntityId

