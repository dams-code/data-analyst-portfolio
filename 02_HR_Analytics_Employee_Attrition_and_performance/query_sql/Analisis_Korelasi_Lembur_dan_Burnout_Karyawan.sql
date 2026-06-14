-- USE damsotp;

/*
    Analisis Korelasi Lembur dan Burnout Karyawan

    - Status_Kepuasan_Kerja
    - Status_Atrisi_Karyawan
    - Status_Lembur
*/

; WITH BebanKerjaKaryawan AS (
    SELECT  EmployeeNumber AS Jumlah_Karyawan,
            Department AS Departemen,
            JobRole AS Jabatan_Kerja,
            OverTime AS Status_Lembur,
            PerformanceRating AS Penilaian_Performa_Kerja,
            Attrition AS Status_Atrisi_Karyawan,
            CASE JobSatisfaction
                    WHEN 1 THEN 'Rendah'
                    WHEN 2 THEN 'Sedang'
                    WHEN 3 THEN 'Tinggi'
                    WHEN 4 THEN 'Sangat Tinggi'
            END AS Status_Kepuasan_Kerja
    FROM HRAnalytics.HREmployeeAttrition
)
SELECT  Status_Lembur, Status_Kepuasan_Kerja,
        COUNT(Jumlah_Karyawan) AS Total_Karyawan,
        CAST(SUM(CASE WHEN Status_Atrisi_Karyawan = 'Yes' THEN 1.0 ELSE 0.0 END) / COUNT(Jumlah_Karyawan) * 100 AS DECIMAL(5,2)) AS Persentase_Atrisi_Karyawan
FROM BebanKerjaKaryawan
GROUP BY Status_Lembur, Status_Kepuasan_Kerja
ORDER BY Persentase_Atrisi_Karyawan DESC
