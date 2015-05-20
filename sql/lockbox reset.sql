select * from bellevue.batchDetail where code = 99

select * from bellevue.batch

select * from bellevue.LockboxFile

select * from History.batchHistory
select * from History.batchDetailHistory


delete from History.batchDetailHistory
DBCC CHECKIDENT ("History.BatchDetailHistory", RESEED, 1);
delete from bellevue.batchDetail
DBCC CHECKIDENT ("Bellevue.BatchDetail", RESEED, 1);

delete from history.batchHistory
DBCC CHECKIDENT ("history.batchHistory", RESEED, 1);
delete from bellevue.batch
DBCC CHECKIDENT ("Bellevue.Batch", RESEED, 1);

delete from bellevue.LockboxFile
DBCC CHECKIDENT ("Bellevue.LockboxFile", RESEED, 1);
