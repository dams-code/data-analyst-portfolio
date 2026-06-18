<div align="center">
  <h3>DATA ANALYST & BUSINESS ANALYST PORTFOLIO</h3>
  <h2>Production Performance Monitoring and Downtime Reduction Analysis (OEE)</h2>
  <p><b>Created by:</b> Damar Djati Wahyu Kemala | <b>Role:</b> Aspiring Data & Business Analyst (Ex-SIMRS Developer)</p>
  <p><i>© 2026 Damar Djati Wahyu Kemala</i></p>
  <hr />
</div>


# Analisis Efisiensi Berdasarkan Shift Kerja
* **Tujuan:** Mengidentifikasi pengaruh faktor operasional produksi yaitu karyawan dari sisi pembagian waktu kerjanya terhadap produktivitas dan bertujuan untuk mengetahui kebocoran pada efektivitas pembagian shift kerja.

  ## 1. Laporan Analisis

  Laporan ini menyajikan terkait hasil identifikasi faktor penyebab downtime.
  
  >### Hasil Query Analisis
  >Query pada temuan pada analisis kerja dimana data ini dikelompokan kedalam 3 kategori shift Morning (pagi), Afternoon (siang), Night (malam).
  >Terdapat korelasi terhadap total produk dan produk cacat.

  >| Shift | Rata-Rata Oee (%) | Availability (%) | Performance (%) | Quality (%) | Total Produk | Total Produk Cacat | Persentase Produk (%) | Persentase Produk Cacat (%) |
  >| :-- | :-- | :-- | :-- | :-- | :-- | :-- | :-- | :-- |
  >| Morning | 64,77 | 81,99 |	84,07 |	93,97 |	38268582 |	2300495 | 33,35 | 33,4 |
  >| Afternoon | 64,62 | 81,9 |	83,99 |	93,94 |	38325763 |	2316548 | 33,4 | 33,63 |
  >| Night | 64,65 | 81,9 |	83,98 |	94,03 |	38143479 |	2271333 | 33,24 | 32,97 |

  ## 2. Insight
  
  #### A. Shift Kerja Memiliki Distribusi Beban Kerja yang Tipis dan Hampir Sama Secara Persentase.
  * Dari sisi Operasional Produksi, persentase total produk dengan sistem 3 shift terlihat proses produksi berjalan secara konstan dalam waktu 24 jam, tanpa adanya volume produk yang menumpuk pada jam tertentu.

  #### B. Adanya Hubungan Linear Antara Persentase Produk dan Persentase Produk Cacat
  * Tidak ditemukan adanya penyumbang jumlah produk cacat terbanyak dari 3 shift jika dlihat dari 3 data diatas. Persentase cacat pada produk secara linear selaras dengan produk yang baik yang sudah diproduksi.
  * Pada persentase Performance lebih stabil di persentase antara 83 - 84%, sedangkan Availability memiliki persentase kembar berada pada persentase 81.9% hal ini menunjukan bahwa kelemahan pada sistemik penanganan kerusakan pada mesin produksi yang dialami secara merata disetiap shift karyawan disetiap harinya.

  ## 3. Recommendation

  #### A. Model Shift yang Tidak perlu di Rombak / Diubah Strukturnya
  * Kedisplinan, ritme kerja, dan kapabilitas karyawan yang sudah sangat solid dan seragam di 3 shift, dari pihak manajemen tidak perlu melakukan perombakan struktur shiftnya. Perlu adanya training dan penilaian kompetensi berkala pada karyawan.
  
  #### B. Perlu Adanya Kedispilinan pada Respon Teknisi Lintas Shift
  * Dari sisi manajemen, wajib menyediakan SOP yang ketat yang ditujukan bagi para teknisi. Penetapan waktu on-call dan batas waktu respon paling tidak dibawah 15 menit jika jarak antar gedung produksinya dekat, dan 30 menit jika jarak antar gedung produksinya jauh.

## Copyright Personal Portfolio
* **Project Owner / Created By:** Damar Djati Wahyu Kemala
* **Role:** Aspiring Data Analyst & Business Analyst (Ex-SIMRS Developer)
* **Date Created:** Juni 2026
* **GitHub Portfolio:** [https://github.com/dams-code](https://github.com/dams-code)

---
*© 2026 Damar Djati Wahyu Kemala. This project is a part of my professional data analyst portfolio. Authorization is required for commercial use or modification.*