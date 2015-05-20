Declare @GoodDetection int = 8826



Declare @DetectionToDelete int = 9996




Declare @BusinessId int

begin tran

select @BusinessId = businessId from bellevue.detection where detectionId = @DetectionToDelete

delete from History.detectionHistory
where detectionId = @DetectionToDelete

delete from Bellevue.DetectionComment
where detectionId = @DetectionToDelete

delete from Bellevue.DetectionPhone
where detectionId = @DetectionToDelete


delete from bellevue.detection 
where detectionId = @DetectionToDelete

update Bellevue.detection
set businessId =  @BusinessId,
DetectionStatusID = 1
where detectionId = @GoodDetection

commit tran







