
select distinct B.businessId from 
bellevue.business B
inner join bellevue.license L ON b.businessId = L.BusinessId
where L.generalApprovalstatusId = 1
and '5/1/2011' <= IssueDate and IssueDate <= '5/7/2011'


[Reports].[NewRegistrationsIssued] 1, '1/1/2011', '12/31/2011'

	@RETURN AS INT,
	@FromDate AS DATETIME,
	@ToDate AS DATETIME	

select * from generalApprovalstatus

select * from approvalstatus