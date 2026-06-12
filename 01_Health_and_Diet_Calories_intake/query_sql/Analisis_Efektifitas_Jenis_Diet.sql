--USE damsotp;

/*
    Analisa Status Kesehatan jika dilihat dari efektivitas jenis dietnya.

    - Jumlah responden
    - persentase jenis diet.

*/

SELECT  Diet_Type AS Jenis_Diet,
        Health_Status AS Status_Kesehatan,
        Count(Person_ID) as Jumlah_Responden,
        CAST(Round(COUNT(Person_ID) * 100.0 / SUM(COUNT(Person_ID)) over(PARTITION BY Diet_Type), 2) AS DECIMAL(18,2)) AS Persentase_Diet
FROM HealthDietDB.HealthyDiet
GROUP BY Diet_Type, Health_Status
