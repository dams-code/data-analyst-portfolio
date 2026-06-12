--USE damsotp;

/* 
    Analisa terkait Status kesehatan responden berdasarkan data healthy_diet_calorie_intake.csv

    - Melihat dari sisi kategori status_kesehatan kita bisa tahu berapa total dan persentase obese / obesitas
    - Melihat dari sisi kategori status_kesehatan kita bisa tahu berapa total dan persentase underweight / berat badan dibawah normal
    - Melihat dari sisi kategori status_kesehatan kita bisa tahu berapa total dan persentase overweight / berat badan diatas normal
    - Dan Melihat dari sisi kategori status_kesehatan yang benar-benar sehat.

*/
SELECT  Health_Status as Status_Kesehatan, COUNT(Person_ID) as Jumlah_Responden,
        CAST(ROUND(count(Person_ID) * 100.0 / SUM(COUNT(Person_ID)) OVER(), 2) AS DECIMAL(18,2) ) AS Persentase_Jumlah_Responden
FROM HealthDietDB.HealthyDiet
GROUP BY Health_Status


/*
    Analisa terkait Status kesehatan responden berdasarkan gender dan usia

    - Dari sejumlah kelompok Obese, Underweight, Overweight, Healthy apakah ini didominasi oleh Laki-laki atau perempuan.
    - dan dari sisi usia berapa rata-rata usia responden tsb.
*/

SELECT  Health_Status AS Status_Kesehatan, Gender As Jenis_Kelamin,
        Count(Person_ID) AS Jumlah_Responden, Round(AVG(Age), 1) AS Usia,
        ROUND(avg(BMI) / 10.0, 1) AS BMI
FROM HealthDietDB.HealthyDiet
GROUP BY Health_Status, Gender
ORDER BY Health_Status, Gender




