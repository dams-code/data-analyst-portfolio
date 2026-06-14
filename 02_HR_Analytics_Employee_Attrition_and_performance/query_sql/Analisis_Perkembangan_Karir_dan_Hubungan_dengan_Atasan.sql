-- USE damsotp;

/*
    Analisis Perkembangan Karir dan Hubungan dengan Atasan

    - Status_Atrisi_Karyawan
    - Tahun_Promosi_Terakhir
    - Tahun_dengan_Manager
*/

; WITH KarirDanHubAtasan AS (
    SELECT  EmployeeNumber AS Jumlah_Karyawan,
            Attrition AS Status_Atrisi_Karyawan,
            YearsSinceLastPromotion AS Tahun_Promosi_Terakhir,
            YearsWithCurrManager AS Tahun_dengan_Manager,
            ------ Cek Stagnasi pada karir karyawan
            CASE    WHEN YearsSinceLastPromotion <= 1 THEN 'Baru Promosi (<= 1 Tahun)'
                    WHEN YearsSinceLastPromotion BETWEEN 2 AND 4 THEN 'Promosi Normal (2 - 4 Tahun)'
                    ELSE 'Promosi Berhenti (> 4 Tahun)'
            END AS Kategori_Promosi_Karyawan,
            ------ Cek lama bekerja karyawan dengan manajernya.
            CASE    WHEN YearsWithCurrManager <= 1 THEN 'Manager Baru (<= 1 Tahun)'
                    WHEN YearsWithCurrManager BETWEEN 2 AND 5 THEN 'Hubungan Stabil (2 - 5 Tahun)'
                    ELSE 'Hubungan Lama (> 5 Tahun)'
            END AS Kategori_Hub_Kerja_Karyawan_dengan_Manager
    FROM HRAnalytics.HREmployeeAttrition
)
SELECT  Kategori_Promosi_Karyawan,
        Kategori_Hub_Kerja_Karyawan_dengan_Manager,
        COUNT(Jumlah_Karyawan) AS Total_Karyawan,
        SUM(CASE WHEN Status_Atrisi_Karyawan = 'Yes' THEN 1 ELSE 0 END) AS Total_Atrisi,
        CAST(
            SUM(CASE WHEN Status_Atrisi_Karyawan = 'Yes' THEN 1.0 ELSE 0.0 END) / COUNT(Jumlah_Karyawan) * 100 AS DECIMAL(5,2)
        ) AS Persentase_Atrisi_Karyawan
FROM KarirDanHubAtasan
GROUP BY Kategori_Promosi_Karyawan, Kategori_Hub_Kerja_Karyawan_dengan_Manager
ORDER BY Persentase_Atrisi_Karyawan DESC

