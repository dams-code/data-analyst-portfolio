-- USE damsotp;

/*
    Analisis Friksi Antara Kompensasi vs Jarak Rumah ke Kantor

    - JobRole
    - DistanceFromHome
    - Attrition
*/

; WITH DATAGAJIKARYAWAN AS (
    SELECT  EmployeeNumber AS Jumlah_Karyawan, Age AS usia, Department AS Departemen, JobRole AS Jabatan_Kerja, MonthlyIncome AS Gaji_Bulanan,
            DistanceFromHome AS Jarak_DariRumah, Attrition AS Status_Atrisi_Karyawan,
            AVG(MonthlyIncome) OVER(PARTITION BY JobRole) AS Rata_Rata_Gaji_Karyawan
    FROM HRAnalytics.HREmployeeAttrition
),
SegmentasiHambatanKerja AS (
    ---- Melihat kategori karyawan ini, masuk sebagai "gaji dibawah rata-rata" atau masuk dipengaruhi oleh jarak rumah yang jauh dari tempat kerja"
    SELECT  Jumlah_Karyawan, Departemen, Jabatan_Kerja, Gaji_Bulanan, 
            Rata_Rata_Gaji_Karyawan, Jarak_DariRumah, Status_Atrisi_Karyawan,
            CASE    WHEN Gaji_Bulanan < Rata_Rata_Gaji_Karyawan THEN 'Gaji dibawah rata-rata'
                    ELSE 'Diatas/sama pada rata-rata gaji'
                    END AS Status_Gaji_Karyawan,
            CASE    WHEN Jarak_DariRumah > 9 THEN 'Jauh (> 9 miles / 14 km)'
                    ELSE 'Dekat (<= 9 miles / 14 km)'
                    END AS Status_Jarak_Perjalanan_Kerja
    FROM DATAGAJIKARYAWAN
)
SELECT  Status_Gaji_Karyawan, Status_Jarak_Perjalanan_Kerja,
        COUNT(Jumlah_Karyawan) AS Total_Karyawan,
        SUM(CASE WHEN Status_Atrisi_Karyawan = 'Yes' THEN 1 ELSE 0 END) AS Total_Atrisi,
        CAST(
            SUM(CASE WHEN Status_Atrisi_Karyawan = 'Yes' THEN 1.0 ELSE 0.0 END) 
            / COUNT(Jumlah_Karyawan) * 100 AS DECIMAL(5,2)
        ) AS Persentase_Atrisi_Karyawan
FROM SegmentasiHambatanKerja
GROUP BY Status_Gaji_Karyawan, Status_Jarak_Perjalanan_Kerja
ORDER BY Persentase_Atrisi_Karyawan

