<div align="center">
  <h3>DATA ANALYST & BUSINESS ANALYST PORTFOLIO</h3>
  <h2>Production Performance Monitoring and Downtime Reduction Analysis (OEE)</h2>
  <p><b>Created by:</b> Damar Djati Wahyu Kemala | <b>Role:</b> Aspiring Data & Business Analyst (Ex-SIMRS Developer)</p>
  <p><i>© 2026 Damar Djati Wahyu Kemala</i></p>
  <hr />
</div>


# Analisis Faktor Penyebab Downtime
* **Tujuan:** Menghitung akumulasi waktu mati / downtime mesin dalam satuan jam, dengan tujuan menemukan mesin-mesin yang menyebabkan waktu produksi berkurang, serta mengukur kebocoran operasional di bagian produksi.

  ## 1. Laporan Analisis

  Laporan ini menyajikan terkait hasil identifikasi faktor penyebab downtime.
  
  >### Hasil Query Analisis
  >Query pada temuan downtime pada mesin produksi ini yang dilihat dari sisi **total_planned_hours**, **total_actual_hours**, dan **total_jam_downtime**.

  >| Machine ID | Total Planned Hours | Total Actual Hours | Total Jam Downtime | Persentase Downtime (%) |
  >| :--- | :---: | :---: | :---: | :---: |
  >|MCH-009 | 11426 | 9314,63 | 2111,37 | 18,48 |
  >|MCH-003 | 11394 | 9294,41 | 2099,59 | 18,43 |
  >|MCH-014 | 11434 | 9333,79 | 2100,21 | 18,37 |
  >|MCH-020 | 11416 | 9318,87 | 2097,13 | 18,37 |
  >|MCH-012 | 11460 | 9359,01 | 2100,99 | 18,33 |
  >|MCH-007 | 11416 | 9329,07 | 2086,93 | 18,28 |
  >|MCH-019 | 11420 | 9334,12 | 2085,88 | 18,27 |
  >|MCH-001 | 11340 | 9268,82 | 2071,18 | 18,26 |
  >|MCH-010 | 11402 | 9324,89 | 2077,11 | 18,22 |
  >|MCH-013 | 11394 | 9319,45 | 2074,55 | 18,21 |
  >|MCH-005 | 11376 | 9308,64 | 2067,36 | 18,17 |
  >|MCH-011 | 11404 | 9340,06 | 2063,94 | 18,1 |
  >|MCH-018 | 11376 | 9329,14 | 2046,86 | 17,99 |
  >|MCH-016 | 11358 | 9315,61 | 2042,39 | 17,98 |
  >|MCH-002 | 11372 | 9330,34 | 2041,66 | 17,95 |
  >|MCH-017 | 11422 | 9381,33 | 2040,67 | 17,87 |
  >|MCH-006 | 11374 | 9348,29 | 2025,71 | 17,81 |
  >|MCH-008 | 11370 | 9354,97 | 2015,03 | 17,72 |
  >|MCH-004 | 11340 | 9341,25 | 1998,75 | 17,63 |
  >|MCH-015 | 11360 | 9360,03 | 1999,97 | 17,61 |

  ## 2. Insight
  
  #### A. Antara Mesin MCH-009 dan MCH-003 terdapat fakta yang berlawanan.
  * **MCH-003** sebelumnya terlihat pada nilai OEE-nya paling rendah sebesar ****64.04%****. Tapi jika dilihat dari durasi kerusakan mesin **MCH-009** memiliki waktu kehilangan produksi / downtime tertinggi yaitu sebesar **2111.37**.
  * Pada mesin **MCH-009** bisa jadi memiliki kerusakan yang lebih parah dari pada mesin **MCH-003** dimana memerlukan waktu perbaikan yang lama dan waktu idle yang lama juga, sedangkan pada mesin **MCH-003** selain mengalami downtime tinggi dengan total **2099,59**, mesin ini juga terkena kendala yaitu kehilangan kecepatan operasional dalam mengolah produk yang parah meskipun masih menyala.

  #### B. Krisis Faktor Sistemik dalam Operasional Produksi
  * Terjadi perbedaan pada persentase downtime antara mesin **MCH-015** sebesar 17.61%, terhadap mesin **MCH-009** sebesar 18.48%, **terdapat selisih 0.87%**
  * Dari hal diatas, tingginya downtime dan kemiripan pada persentasenya bukan disebabkan mesin yang rusak secara random atau kelalaian dari sisi individu / operator produksinya, melainkan dari faktor lain seperti sparepart mesin dari bengkel pabrik yang menipis, keterlambatan respon dari teknisi, SOP pada teknisi (accident report) yang tidak diterapkan dengan benar.

  ## 3. Recommendation

  #### A. Pengelompokan cara penanganan berdasarkan karakteristik kerusakan
  * **Kategori Jam DownTime Tertinggi**, MCH-009, MCH-0012, MCH-014, kalau didalam rumah sakit itu ada yang namanya logbook dari pengalaman kerjaku di SIMRS, hal ini berisikan monitoring inti yang terfokus terhadap penyebab kendala vital pada sistem. kalau pada mesin produksi ini logbook tersebut dapat diterapkan yaitu dengan tujuan mengetahui penyebab general atau keseluruhan dari rata-rata mesin rusak itu karena apa? dan selain dari penyebab general, penyebab spesifik seperti pada case tertentu mesin tersebut bisa rusak disebabkan apa aja?.
  
  #### B. Seperti Alat Medis, pada Mesin Produksi perlu adanya SMED (Single-minute-exchanged of die)
  * Dilihat dari data diatas waktu jam kerusakan mesin yang tinggi rata rata 18%, proses idle ini bisa jadi mesin masih diperbaiki **long-hour-fixed** oleh teknisi, waktu pemesanan sparepart yang memakan waktu dan sistem setup jika rusak digitalnya memakan waktu, sehingga perlu di buatkan SMED sebagai dashboard monitor untuk memantau kerusakan mesin produksi, kapan mesin produksi harus dimaintance, dan modul setup yang plug and install (saat di tancapkan ke alat langsung install otomatis) ini disiapkan sesuai modul dan tipe mesinnya juga sama halnya seperti alat TTV, ECG, Mesin CT-SCAN, Ventilator Pasien.
  
  #### C. Perlu Adanya Worklist Alert dan modul Restocking pada Sparepart Mesin dan Penjadwalan Maintance Teknisi
  * **Modul Restocking Sparepart saat mendekati Min-Stock:** Perlunya ada worklist berupa alert untuk memantau restocking sparepart mesin dan user logistik wajib melakukan restocking -> AJU -> RBB -> hingga pembelian barang stok sparepart ke vendor atau toko diluar pabrik.
  * **Weekly Audit Jadwal Maintenance Teknisi:** Perlu pengawasan dalam perawatan mesin produksi mingguan. Perlu adanya sistem pelaporan dari manual kertas menjadi digital *alert tracking* supaya tidak ada jadwal maintance mesin yang terlewat oleh teknisi.
  


## Copyright Personal Portfolio
* **Project Owner / Created By:** Damar Djati Wahyu Kemala
* **Role:** Aspiring Data Analyst & Business Analyst (Ex-SIMRS Developer)
* **Date Created:** Juni 2026
* **GitHub Portfolio:** [https://github.com/dams-code](https://github.com/dams-code)

---
*© 2026 Damar Djati Wahyu Kemala. This project is a part of my professional data analyst portfolio. Authorization is required for commercial use or modification.*