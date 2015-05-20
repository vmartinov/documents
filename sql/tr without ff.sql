declare @business as table(businessid int, period date)

DECLARE @BusinessId int
DECLARE @period date

DECLARE crs CURSOR FOR 
SELECT businessid, periodEndingdate FROM bellevue.taxReturn
WHERE isMaster = 1
ORDER BY businessid, periodendingDate
OPEN crs

FETCH NEXT FROM crs 
INTO @businessid, @period

WHILE @@FETCH_STATUS = 0
BEGIN

	DECLARE @count int
	SELECT @count = COUNT(*) FROM bellevue.filingFrequency ff
	WHERE businessid = @BusinessId and @period BETWEEN ff.startDate AND ff.EndDate

	IF @count = 0
		INSERT INTO @business(businessid, period)
		VALUES(@BusinessId, @period)

    FETCH NEXT FROM crs 
    INTO @businessid, @period
END 
CLOSE crs
DEALLOCATE crs

SELECT businessid FROM @business
group BY businessid

SELECT DISTINCT * FROM @business
ORDER BY businessid, period




