select * from bellevue.License
where LicenseID in( 238, 42006, 15182)

select * from bellevue.LicenseApproval
where LicenseID in( 238, 42006, 15182)


update bellevue.Business
set active = 1 where BusinessID = 74245
update bellevue.LicenseApproval
set StatusID = 4,
ApproverID = null, ApprovalDate = null
where LicenseID in( 238, 42006, 15182)

update bellevue.License
set GeneralApprovalStatusID =  3, cancelCodeId = null, cancelDate = null
where LicenseID in( 238, 42006, 15182)


select * from GeneralApprovalStatus
select * from ApprovalStatus

select * from LicenseType 

select * from RoleLicenseApproval

select * from [Role]