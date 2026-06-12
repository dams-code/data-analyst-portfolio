-- USE damsotp;


/*
    Analisis Pengaruh Gap pada Kalori terhadap Status Kesehatan

    rumus kalori dari :
    https://www.garmin.com/id-ID/garmin-technology/health-science/calories-burned/

    Gap kalori = Intake (sumber kalori dari makanan dan minuman) - Burned (baik burned secara active ataupun rest)

    Intake -> Total kalori yang dikonsumsi dari makanan dan minuman.
    Burned -> Total energi yang dikeluarkan tubuh, termasuk metabolisme basal (BMR) dan aktivitas fisik

    Contoh: 1.200 (Intake) - 1.500 (Burned) = -300
    Artinya, Tubuh kekurangan 300 kalori dan akan membakar lemak tubuh sebagai cadangan energi. Berat badan akan turun.
    dan sebaliknya.
*/

SELECT  Health_Status AS Status_Kesehatan,
        COUNT(Person_ID) AS Jumlah_Responden,
        ROUND(AVG(CAST(Daily_Calorie_Requirement AS FLOAT)), 0) AS RataRata_Kebutuhan_Kalori,
        ROUND(AVG(CAST(Daily_Calorie_Consumed AS FLOAT)), 0) AS RataRata_Konsumsi_Kalori,
        ROUND(AVG(CAST(Daily_Calorie_Consumed AS FLOAT) - CAST(Daily_Calorie_Requirement AS FLOAT)), 0) AS RataRata_Keseimbangan_Kalori
FROM HealthDietDB.HealthyDiet
GROUP BY Health_Status



