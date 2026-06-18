--USE damsotp;

; WITH DurasiMesin AS (
    SELECT  MachineId,
            SUM(PlannedHours) AS Total_Planned_Hours,
            SUM(DATEPART(HOUR, ActualHours) +(DATEPART(MINUTE, ActualHours) / 60.0) +(DATEPART(SECOND, ActualHours) / 3600.0)) AS Total_Actual_Hours
    FROM ManufactureDB.ManufacturingOeeExcelFinal
    GROUP BY MachineId
)
SELECT  MachineId,
        Total_Planned_Hours,
        ROUND(CAST(Total_Actual_Hours AS FLOAT),2) AS Total_Actual_Hours,
        ROUND(CAST((Total_Planned_Hours - Total_Actual_Hours) AS FLOAT), 2 )  AS Total_Jam_Downtime,
        ROUND(CAST(((Total_Planned_Hours - Total_Actual_Hours) / Total_Planned_Hours ) * 100 AS FLOAT), 2) AS Persentase_Downtime
FROM DurasiMesin
ORDER BY Persentase_Downtime DESC

