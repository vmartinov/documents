DECLARE @Business as TABLE(
	BusinessId int,
	IssueDate date,
	OriginalIssueDate date
)

INSERT INTO @Business(BusinessId, IssueDate, OriginalIssueDate)
SELECT DISTINCT l.BusinessID, l.IssueDate, lh.IssueDate FROM bellevue.License l
INNER JOIN History.LicenseHistory lh
ON l.LicenseID = lh.LicenseID
WHERE l.LicenseTypeID = 1 AND l.IssueDate <> lh.IssueDate AND lh.IssueDate IS NOT null

 UPDATE a 
 SET a.IssueDate= b.OriginalIssueDate
 FROM Bellevue.license a INNER JOIN @Business b ON a.BusinessID = b.BusinessId
 