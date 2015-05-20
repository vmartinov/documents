SELECT * FROM JobAnnouncement ja
WHERE ja.JobID = 3962

SELECT * FROM JobApplicationInProcess jaip
WHERE JobID = 3962

SELECT * FROM ApplicantProfile ap WHERE ap.LastName = 'Zukowski PE'

SELECT * FROM [User] u WHERE u.LastName = 'Zukowski'

SELECT * FROM submittedApplication sa
WHERE JobID = 3962 and sa.ApplicantID = 50784

SELECT * FROM ApplicantTracking at
WHERE at.SubmittedApplicationID = 177082

UPDATE ApplicantTracking
SET Proceed = null
where TrackingID IN (950362,
950363,
950364,
950365)




