select '''' + Code + ''', '  + '''' + Deduction + '''' from deductionCode where code like '%98'

delete from DeductionCode where deductionCodeId > 72
select * from deductionCode

DBCC CHECKIDENT ([DeductionCode], RESEED, 72)



Insert Into DeductionCode(Code, Deduction) Values('0298','Conversion - Wholesale')
Insert Into DeductionCode(Code, Deduction) Values('0398','Conversion - Retail')
Insert Into DeductionCode(Code, Deduction) Values('0698','Conversion - Service & Conversion')
Insert Into DeductionCode(Code, Deduction) Values('0198','Conversion - Manufacturing')
Insert Into DeductionCode(Code, Deduction) Values('0498','Conversion - Printing')
Insert Into DeductionCode(Code, Deduction) Values('1198','Conversion - Extracting')
Insert Into DeductionCode(Code, Deduction) Values('4098','Conversion - Telephone')
Insert Into DeductionCode(Code, Deduction) Values('4198','Conversion - Cellular')
Insert Into DeductionCode(Code, Deduction) Values('4298','Conversion - Gas')
Insert Into DeductionCode(Code, Deduction) Values('4398','Conversion - Light & Power')
Insert Into DeductionCode(Code, Deduction) Values('4498','Conversion - Cable')
Insert Into DeductionCode(Code, Deduction) Values('4598','Conversion - Water')
Insert Into DeductionCode(Code, Deduction) Values('4698','Conversion - Solid Waste')
Insert Into DeductionCode(Code, Deduction) Values('4798','Conversion - Sewer Code')
Insert Into DeductionCode(Code, Deduction) Values('4898','Conversion - Storm Drainage')
Insert Into DeductionCode(Code, Deduction) Values('6098','Conversion - Amusement Games')
Insert Into DeductionCode(Code, Deduction) Values('6198','Conversion - Pulltabs')
Insert Into DeductionCode(Code, Deduction) Values('6298','Conversion - Bingo')
Insert Into DeductionCode(Code, Deduction) Values('6398','Conversion - Raffle')
Insert Into DeductionCode(Code, Deduction) Values('6498','Conversion - Admission')
Insert Into DeductionCode(Code, Deduction) Values('0598','Conversion - Inactive')
Insert Into DeductionCode(Code, Deduction) Values('0798','Conversion - Inactive')
Insert Into DeductionCode(Code, Deduction) Values('0898','Conversion - Inactive')
Insert Into DeductionCode(Code, Deduction) Values('0998','Conversion - Inactive')
Insert Into DeductionCode(Code, Deduction) Values('1098','Conversion - Inactive')
