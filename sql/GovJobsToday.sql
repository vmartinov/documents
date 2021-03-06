UPDATE [dbo].[EducationType_LU]
SET IsInactive = 0
WHERE IsInactive IS null

UPDATE Organization
SET IsInactive = 0
WHERE IsInactive is NULL

UPDATE submittedApplicantEdHistory
SET IsInactive = 0
WHERE IsInactive is NULL

UPDATE submittedApplicantWorkHistory
SET IsInactive = 0
WHERE IsInactive is NULL

UPDATE JobAnnouncement
SET JobRealID = LEFT(NEWID(), 20)
WHERE JobRealID is NULL OR JobRealID = ''

UPDATE ApplicantProfile
SET optionalRaceId = NULL
WHERE OptionalRaceID = 0

delete FROM ApplicantEdHistory 
WHERE ApplicantId NOT IN (SELECT ApplicantId FROM ApplicantProfile ap)

UPDATE ApplicantEdHistory
SET EducationTypeID = NULL
WHERE EducationTypeID IN (-1, 0)

delete FROM JobApplicationInProcess
WHERE ApplicantID NOT IN (SELECT ApplicantID FROM ApplicantProfile ap)

delete FROM ApplicantQuestionResponse WHERE QuestionId
IN (SELECT questionid from  Question WHERE QuestionnaireID
			NOT IN (SELECT QuestionnaireID FROM Questionnaire q))



delete FROM Question WHERE QuestionnaireID
NOT IN (SELECT QuestionnaireID FROM Questionnaire q)

delete FROM Questionnaire
WHERE OrgID NOT IN (SELECT OrgID from organization)

DELETE FROM ApplicantSelectedEdHistory where ApplicantID
NOT IN (SELECT applicantId FROM ApplicantProfile ap)

DELETE FROM ApplicantSelectedEdHistory where JobID
NOT IN (SELECT jobid FROM JobAnnouncement ja )

DELETE FROM ApplicantSelectedEdHistory where AppEducationID
NOT IN (SELECT AppEducationID FROM ApplicantEdHistory aeh)

DELETE FROM ApplicantSelectedSkill where ApplicantID
NOT IN (SELECT applicantId FROM ApplicantProfile ap)

DELETE FROM ApplicantSelectedWorkHistory
WHERE WorkHistoryID NOT IN (SELECT awh.WorkHistoryID FROM ApplicantWorkHistory awh)

DELETE FROM ApplicantQuestionResponse
WHERE QuestionID IN (SELECT Questionid FROM Question
	WHERE QuestType NOT IN (SELECT questionTypeid FROM QuestionType_lu qtl))
	

DELETE FROM Question
WHERE QuestType NOT IN (SELECT questionTypeid FROM QuestionType_lu qtl)

DELETE FROM applicantTracking 
WHERE applicantId NOT IN (SELECT applicantId FROM ApplicantProfile ap)


delete FROM submittedApplicantEdHistory 
WHERE SubmittedApplicationID NOT IN (SELECT a.SubmittedApplicationID FROM submittedApplication a)

delete FROM submittedApplicantWorkHistory
WHERE SubmittedApplicationID IS NULL

delete FROM submittedApplicantEdHistory
WHERE SubmittedApplicationID IS NULL

delete FROM submittedApplicantWorkHistory
WHERE ApplicantId NOT IN (SELECT applicantId FROM ApplicantProfile ap)

DELETE FROM submittedApplication
WHERE JobID NOT IN (SELECT jobid from jobAnnouncement)

UPDATE submittedApplication
SET optionalraceid = NULL WHERE optionalraceid NOT IN (SELECT raceid FROM Race_lu rl)

delete FROM FilesPublic 
WHERE ApplicantID NOT IN (SELECT ApplicantID FROM ApplicantProfile ap)

delete FROM FilesPrivate
WHERE JobId NOT IN (SELECT JobID FROM JobAnnouncement ja )

delete FROM ApplicantProfile
WHERE ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1)

DELETE FROM ApplicantEdHistory
WHERE ApplicantId IN (SELECT applicantid FROM ApplicantProfile
	WHERE ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1))

DELETE FROM ApplicantSelectedEdHistory
WHERE ApplicantId IN (SELECT applicantid FROM ApplicantProfile
	WHERE ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1))

DELETE FROM ApplicantTracking
WHERE ApplicantId IN (SELECT applicantid FROM ApplicantProfile
	WHERE ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1))

DELETE FROM ApplicantWorkHistory
WHERE ApplicantId IN (SELECT applicantid FROM ApplicantProfile
	WHERE ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1))

DELETE FROM ApplicantSelectedWorkHistory
WHERE ApplicantId IN (SELECT applicantid FROM ApplicantProfile
	WHERE ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1))

DELETE FROM submittedApplicantWorkHistory
WHERE ApplicantId IN (SELECT applicantid FROM ApplicantProfile
	WHERE ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1))

DELETE FROM ApplicantSelectedSkill
WHERE ApplicantId IN (SELECT applicantid FROM ApplicantProfile
	WHERE ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1))

DELETE FROM FilesPrivate
WHERE ApplicantId IN (SELECT applicantid FROM ApplicantProfile
	WHERE ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1))

DELETE FROM FilesPublic
WHERE ApplicantId IN (SELECT applicantid FROM ApplicantProfile
	WHERE ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1))


DELETE FROM ScreeningPhase
WHERE OrgID NOT IN (SELECT orgid FROM Organization o)

DELETE FROM ScreeningProcess
WHERE ScreeningPhaseID NOT IN (SELECT screeningPhaseid FROM ScreeningPhase sp)

DELETE FROM submittedApplicantQuestionResponse
WHERE ApplicantID NOT IN(SELECT applicantid FROM ApplicantProfile ap)

DELETE FROM submittedApplicantQuestionResponse
WHERE QuestionID NOT IN(SELECT questionid FROM Question p)

DELETE FROM submittedApplicantQuestionResponse 
WHERE SubmittedApplicationID IS NULL

DELETE FROM submittedApplicantEdHistory
WHERE ApplicantId NOT IN (SELECT applicantid FROM ApplicantProfile)

DELETE FROM Note
WHERE UserID NOT IN (SELECT userid FROM [User])


delete FROM Note 
WHERE ApplicationID NOT IN (SELECT submittedApplicationId FROM submittedApplication a)


delete FROM submittedApplicantEdHistory 
WHERE educationTypeID NOT IN (SELECT etl.EducationTypeID FROM EducationType_LU etl)

delete FROM submittedApplicantEdHistory 
WHERE SubmittedApplicationID IS NULL

delete FROM submittedApplicantSkill 
WHERE ApplicantID NOT IN (SELECT ApplicantID from applicantProfile)
