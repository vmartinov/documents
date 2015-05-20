SELECT * FROM JobAnnouncement ja
WHERE ja.JobRealID = '15-0001' AND ja.OrgID = 18

SELECT * FROM JobAnnouncement ja
WHERE ja.JobID = 3987

SELECT * FROM Questionnaire q WHERE JobID = 3987

SELECT * FROM Question q WHERE q.QuestionnaireID = 4656
ORDER BY q.QuestNum


UPDATE question
set questnum = 22
where questionid IN( 8159, 8160, 8163, 8164, 8172, 8173, 8174, 8175, 8176, 8177, 8178, 8179)


