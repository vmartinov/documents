SELECT * FROM JobAnnouncement ja
WHERE ja.Status = 2 AND OrgID = 1
ORDER BY JobID DESC

UPDATE JobAnnouncement
SET Status = 2, DateCompleted = NULL, DateClose = NULL
WHERE JobID IN (3650,
3649,
3648,
3647,
3644,
3639,
3637,
3636,
3635,
3632,
3627,
3622,
3621,
3620)


SELECT * FROM JobAnnouncement ja where jobrealid = '14-1234'

SELECT * FROM EmploymentType_LU etl

SELECT * FROM JobType_LU jtl

<jobTypes>
    <add key="Limited Term" value="2" />
    <add key="Part-Time" value="7" />
    <add key="Regular" value="1" />
    <add key="Seasonal" value="9" />
    <add key="Temporary" value="4" />
    <add key="Variable" value="8" />
  </jobTypes>