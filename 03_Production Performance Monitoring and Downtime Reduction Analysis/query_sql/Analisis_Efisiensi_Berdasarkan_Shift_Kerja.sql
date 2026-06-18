--USE damsotp;

/*
    Analisis Efisiensi Berdasarkan Shift Kerja

    - OeePct
    - AvailabilityPct
    - PerformancePct
    - QualityPct
    - UnitsProduced
    - Defects
    - shift
*/

; WITH DataShift AS (
    SELECT  Shift,
            ROUND(AVG(OeePct) * 100, 2) AS RataRata_Persentase_Oee,
            ROUND(AVG(AvailabilityPct) * 100, 2) AS RataRata_Availability,
            ROUND(AVG(PerformancePct) * 100, 2) AS RataRata_Performance,
            ROUND(AVG(QualityPct) * 100, 2) AS RataRata_Quality,
            sum(UnitsProduced) AS Total_Produk,
            sum(Defects) AS Total_Produk_Cacat,
            sum(sum(UnitsProduced)) OVER() AS GrandTotal_Produk,
            sum(sum(Defects)) OVER() AS GrandTotal_Produk_Cacat
    FROM ManufactureDB.ManufacturingOeeExcelFinal
    GROUP BY Shift
)
SELECT  Shift,
        RataRata_Persentase_Oee,
        RataRata_Availability,
        RataRata_Performance,
        RataRata_Quality,
        Total_Produk,
        Total_Produk_Cacat,
        ROUND((CAST(Total_Produk as float) / GrandTotal_Produk) * 100, 2) AS Persentase_Produk,
        ROUND((CAST(Total_Produk_Cacat as float) / GrandTotal_Produk_Cacat) * 100, 2) AS Persentase_Produk_Cacat
FROM DataShift
