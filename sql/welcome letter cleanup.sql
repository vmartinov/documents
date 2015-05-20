select * from bellevue.ExportQueue

delete from bellevue.BusinessLetter where 130337 <= businessid and businessid <= 130386

update bellevue.ExportQueue
set isProcessed = 0
where exportId = 1028
