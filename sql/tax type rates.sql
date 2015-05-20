select * from taxType
select * from TaxTypeRate
where taxTypeId = 8

DECLARE @TaxTypeId INT
set @TaxTypeId = 8


-- gr
update TaxTypeRate
set TaxRate = 0.0013
where TaxTypeId In (1, 2, 3, 4, 5, 6, 7)


