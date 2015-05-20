delete from bellevue.batchDetail where batchId = 259

delete from history.batchHistory where batchId = 259

delete from bellevue.batch where batchId = 259

select * from bellevue.LockboxFile

delete from bellevue.LockboxFile where lockboxfileId = 38


select * from bellevue.batch where batchId = 260
update bellevue.batch 
set isProcessed = 0, batchnumber = 'v200'
where batchId = 260

update bellevue.batch
set BatchTotal = BatchTotalAdjusted, BatchTotalHash = BatchTotalHashAdjusted
where batchId = 260

select * from bellevue.BatchDetail
where batchId = 260

update bellevue.BatchDetail
set registrationNumber = 126205, checkdigit = 'X'
where batchId = 260

select * from bellevue.taxReturn
where businessId = 126205