--UPDATE [dbo].[EducationType_LU]
--SET IsInactive = 0
--where IsInactive IS null

--UPDATE Organization
--SET IsInactive = 0
--where IsInactive is NULL

--UPDATE submittedApplicantEdHistory
--SET IsInactive = 0
--where IsInactive is NULL

--UPDATE submittedApplicantWorkHistory
--SET IsInactive = 0
--where IsInactive is NULL

SELECT * FROM jobAnnouncement
WHERE JobRealID is NULL OR JobRealID = ''
ORDER BY CreatedDate DESC


--UPDATE ApplicantProfile
--SET optionalRaceId = NULL
--where OptionalRaceID = 0

SELECT *  FROM ApplicantEdHistory 
WHERE ApplicantId NOT IN (SELECT ApplicantId FROM ApplicantProfile ap)
ORDER BY ModifiedDate DESC

--UPDATE ApplicantEdHistory
--SET EducationTypeID = NULL
--where EducationTypeID IN (-1, 0)

SELECT * FROM JobApplicationInProcess
WHERE ApplicantID NOT IN (SELECT ApplicantID FROM ApplicantProfile ap)

SELECT *  FROM ApplicantQuestionResponse WHERE QuestionId
IN (SELECT questionid from  Question WHERE QuestionnaireID
			NOT IN (SELECT QuestionnaireID FROM Questionnaire q))



SELECT * FROM Question WHERE QuestionnaireID
NOT IN (SELECT QuestionnaireID FROM Questionnaire q)
ORDER BY CreatedDate DESC

SELECT * FROM Questionnaire
WHERE OrgID NOT IN (SELECT OrgID from organization)

SELECT * FROM ApplicantSelectedEdHistory where ApplicantID
NOT IN (SELECT applicantId FROM ApplicantProfile ap)

SELECT * FROM ApplicantSelectedEdHistory where JobID
NOT IN (SELECT jobid FROM JobAnnouncement ja )

SELECT * FROM ApplicantSelectedEdHistory where AppEducationID
NOT IN (SELECT AppEducationID FROM ApplicantEdHistory aeh)

SELECT * FROM ApplicantSelectedSkill where ApplicantID
NOT IN (SELECT applicantId FROM ApplicantProfile ap)

SELECT * FROM ApplicantSelectedWorkHistory
WHERE WorkHistoryID NOT IN (SELECT awh.WorkHistoryID FROM ApplicantWorkHistory awh)

select *  FROM ApplicantQuestionResponse
where QuestionID IN (SELECT Questionid FROM Question
	WHERE QuestType NOT IN (SELECT questionTypeid FROM QuestionType_lu qtl))
	

select *  FROM Question
where QuestType NOT IN (SELECT questionTypeid FROM QuestionType_lu qtl)

select *  FROM applicantTracking 
where applicantId NOT IN (SELECT applicantId FROM ApplicantProfile ap)


select *  FROM submittedApplicantEdHistory 
where SubmittedApplicationID NOT IN (SELECT a.SubmittedApplicationID FROM submittedApplication a)

select *  FROM submittedApplicantWorkHistory
where SubmittedApplicationID IS NULL

select *  FROM submittedApplicantEdHistory
where SubmittedApplicationID IS NULL

select *  FROM submittedApplicantWorkHistory
where ApplicantId NOT IN (SELECT applicantId FROM ApplicantProfile ap)

select *  FROM submittedApplication
where JobID NOT IN (SELECT jobid from jobAnnouncement)

--UPDATE submittedApplication
--SET optionalraceid = NULL WHERE optionalraceid NOT IN (SELECT raceid FROM Race_lu rl)

select *  FROM FilesPublic 
where ApplicantID NOT IN (SELECT ApplicantID FROM ApplicantProfile ap)

select *  FROM FilesPrivate
where JobId NOT IN (SELECT JobID FROM JobAnnouncement ja )

select *  FROM ApplicantProfile
where ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1)

select *  FROM ApplicantEdHistory
where ApplicantId IN (SELECT applicantid FROM ApplicantProfile
	WHERE ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1))

select *  FROM ApplicantSelectedEdHistory
where ApplicantId IN (SELECT applicantid FROM ApplicantProfile
	WHERE ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1))

select *  FROM ApplicantTracking
where ApplicantId IN (SELECT applicantid FROM ApplicantProfile
	WHERE ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1))

select *  FROM ApplicantWorkHistory
where ApplicantId IN (SELECT applicantid FROM ApplicantProfile
	WHERE ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1))

select *  FROM ApplicantSelectedWorkHistory
where ApplicantId IN (SELECT applicantid FROM ApplicantProfile
	WHERE ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1))

select *  FROM submittedApplicantWorkHistory
where ApplicantId IN (SELECT applicantid FROM ApplicantProfile
	WHERE ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1))

select *  FROM ApplicantSelectedSkill
where ApplicantId IN (SELECT applicantid FROM ApplicantProfile
	WHERE ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1))

select *  FROM FilesPrivate
where ApplicantId IN (SELECT applicantid FROM ApplicantProfile
	WHERE ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1))

select *  FROM FilesPublic
where ApplicantId IN (SELECT applicantid FROM ApplicantProfile
	WHERE ApplicantID NOT IN (SELECT ApplicantID FROM AppUser au1))


select *  FROM ScreeningPhase
where OrgID NOT IN (SELECT orgid FROM Organization o)

select *  FROM ScreeningProcess
where ScreeningPhaseID NOT IN (SELECT screeningPhaseid FROM ScreeningPhase sp)

select *  FROM submittedApplicantQuestionResponse
where ApplicantID NOT IN(SELECT applicantid FROM ApplicantProfile ap)

select *  FROM submittedApplicantQuestionResponse
where QuestionID NOT IN(SELECT questionid FROM Question p)

select *  FROM submittedApplicantQuestionResponse 
where SubmittedApplicationID IS NULL

select *  FROM submittedApplicantEdHistory
where ApplicantId NOT IN (SELECT applicantid FROM ApplicantProfile)

select *  FROM Note
where UserID NOT IN (SELECT userid FROM [User])


select *  FROM Note 
where ApplicationID NOT IN (SELECT submittedApplicationId FROM submittedApplication a)



