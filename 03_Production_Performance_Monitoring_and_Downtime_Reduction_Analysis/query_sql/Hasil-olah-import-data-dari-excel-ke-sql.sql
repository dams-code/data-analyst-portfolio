--USE damsotp;

---- Hasil Import wizard SQL Server.

select * from [manufacturing-oee-excel-view-cleaned];

---- Membuat Table Stagging untuk menampung data dari import wizard.

--CREATE TABLE ManufacturingOeeExcelFinal(
--	ProductionDate DATE,
--    MachineId VARCHAR(50),
--    .......
--    CheckDuplicateMachine VARCHAR(100),
--    TotalDuplicate INT ----- Set angka bulat non-desimal 0 (INT)
--);

----- Proses Konversi
INSERT INTO ManufacturingOeeExcelFinal
SELECT  TRY_CAST(ProductionDate AS DATE) AS ProductionDate,
        MachineId,
        Shift,
        ---.....
        CheckDuplicateMachine,
        TRY_CAST(REPLACE(TotalDuplicate, ',', '.') AS FLOAT) AS TotalDuplicate
FROM [manufacturing-oee-excel-view-cleaned];

---- Mengecek hasil konversi
SELECT * FROM ManufacturingOeeExcelFinal;


ALTER TABLE ManufacturingOeeExcelFinal
ALTER COLUMN ActualHours TIME(0); ---- Set HH:mm:ss, dan milidetik dihapus


---- Mengecek hasil akhir.
SELECT * FROM ManufacturingOeeExcelFinal;

---- Migrasi data dari stagging ke skema
INSERT INTO ManufactureDB.ManufacturingOeeExcelFinal
SELECT 
    ProductionDate,
    MachineId,
    Shift,
    --....
    CheckDuplicateMachine,
    TotalDuplicate
FROM ManufacturingOeeExcelFinal;


---- Hasil migrasi data
SELECT * FROM ManufactureDB.ManufacturingOeeExcelFinal;
