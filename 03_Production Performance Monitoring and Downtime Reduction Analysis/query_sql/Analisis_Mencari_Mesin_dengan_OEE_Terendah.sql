USE damsotp;


/*
    Analisis mencari mesin dengan OEE Terendah
    OEE singkatan dari (Overall Equipment Effectiveness)

    - MachineId
    - OeePct
    - ProductionDate

    OEE adalah rasio Waktu Produktif Penuh terhadap Waktu Produksi yang Direncanakan.
    APQ -> Available, Performance, Quality

    Standart persentase OEE dunia -> 85%.

    OEE (%) = Availability x Performance x Quality.

    dan standart OEE tersebut bisa terbentuk karena APQ Available, Performance, Quality.

    Penilaian OEE.
    Jika dibawah (<65%) Rendah -> perusahaan dipastikan mengalami big losses. (kendala / penyebab bisa jadi ada pada mesin, seperti mesin rusak, mesin jarang di maintance)
    Jika ada diantara (65% - 74%) -> Acceptable -> rata-rata / performa OEE normal, tapi bisa jadi masih dijumpai maintance mesin yang tidak disiplin, sop pada operator dalam menggunakan mesin masih belum diterapkan optimal.
    75% - 84% -> Bagus -> kedisiplinan sop pada operator sudah menyeluruh, maintance mesin terjadwal rapi dan pelaksanaanya. produksi berjalan lebih efisien.
    ... > 85% -> Sangat Bagus, industri sudah berstandart kelas global, konsisten. maksudnya dari sisi mesin jarang mati, produksi maksimal, dan cacat produk mendekati 0 (nol).

    Sumber: https://www.oee.com/world-class-oee/
*/

---- Cek detail OEE, dilihat dari APQ, Availibility, Performance, Quality

SELECT  MachineId,
        ROUND(AVG(AvailabilityPct) * 100, 2) AS RataRata_Persentase_Availability,
        ROUND(AVG(PerformancePct) * 100, 2) AS RataRata_Persentase_Performance,
        ROUND(AVG(QualityPct) * 100, 2) AS RataRata_Persentase_Quality,
        ROUND(AVG(OeePct) * 100, 2) AS RataRata_Persentase_Oee,
        COUNT(ProductionDate) AS Total_Produksi_Per_Hari
FROM ManufactureDB.ManufacturingOeeExcelFinal
GROUP BY MachineId
ORDER BY RataRata_Persentase_Oee DESC

---- Availability -> jika di data query itu hampir diatas 90% rata-ratanya, diartikan bahwa mesin jarang mati.
---- Performance -> jika di data  query itu hampir diatas 95% rata-ratanya, diartikan mesin dapat meproduksi dengan cepat sesuai kapasitas design mesinnya
---- Quality -> jika di data query itu hampir diatas 99% rata-ratanya, diartikan hampir tidak ada produk yang gagal atau cacat.

---- Sumber acuhan persentase: JIPM (Japan Institute of Plant Maintenance) - Seichi Nakajima (1970)
