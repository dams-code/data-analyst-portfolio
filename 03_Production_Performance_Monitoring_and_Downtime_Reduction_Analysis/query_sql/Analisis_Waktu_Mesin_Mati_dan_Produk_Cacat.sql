--USE damsotp;

/*
    Analisis_Waktu_Mesin_Mati_dan_Produk_Cacat

    - Total_Planned_Hours
    - Total_Actual_Hours
    - UnitsProduced
    - Defects
*/

; WITH WaktuKerjaMesinProduksi AS (
    SELECT  MachineId,
            SUM(PlannedHours) AS Total_Planned_Hours,
            SUM(DATEPART(HOUR, ActualHours) + (DATEPART(MINUTE, ActualHours) / 60.0) + (DATEPART(SECOND, ActualHours) / 3600.0)) AS Total_ActualHours,
            SUM(UnitsProduced) AS Total_Produk,
            SUM(Defects) AS Total_Produk_Cacat
    FROM ManufactureDB.ManufacturingOeeExcelFinal
    GROUP BY MachineId
), DataProdukCacat AS (
    SELECT  MachineId,
            ROUND(CAST((Total_Planned_Hours - Total_ActualHours) AS FLOAT), 2) AS Total_Jam_Downtime,
            Total_Produk_Cacat,
            Total_Produk,
            ROUND(CAST((CAST(Total_Produk_Cacat AS FLOAT) / Total_Produk) AS FLOAT) * 100, 2) AS Persentase_Produk_Cacat
    FROM WaktuKerjaMesinProduksi
)
SELECT MachineId, Total_Jam_Downtime, Total_Produk, Total_Produk_Cacat, Persentase_Produk_Cacat  
FROM DataProdukCacat
ORDER BY Total_Jam_Downtime DESC

