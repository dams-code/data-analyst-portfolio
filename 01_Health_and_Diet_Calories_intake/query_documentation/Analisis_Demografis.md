<div align="center">
  <h3>DATA ANALYST & BUSINESS ANALYST PORTFOLIO</h3>
  <h2>Health Platform Analytics: User Demographics, Diet Performance, and Calorie Balance Report</h2>
  <p><b>Created by:</b> Damar Djati Wahyu Kemala | <b>Role:</b> Aspiring Data & Business Analyst (Ex-SIMRS Developer)</p>
  <p><i>© 2026 Damar Djati Wahyu Kemala</i></p>
  <hr />
</div>


# Analisis Profil Demografi dan Distribusi Kesehatan
* **Tujuan:** Memetakan karakteristik dasar Demografi responden, guna menentukan arah pengembangan konten platform.

  ## 1. Laporan Analisis

  Laporan ini menyajikan terkait hasil analisa terkait Status kesehatan responden

  >### A. Distribusi Status Kesehatan
  >Query pada case A ini menghitung terkait total responden (6000 data), dan kontribusi persentase pada setiap kategori status kesehatannya.

  >| Status_Kesehatan	| jumlah_responden	| Persentase_Jumlah_responden (%) |
  >| :--- | :--- | :--- |
  >| Obese	            | 1076	        | 17.93
  >| Underweight	      | 175	          | 2.92
  >| Overweight	        | 2500	        | 41.67
  >| Healthy	          | 2249	        | 37.48

  >### B. Kategori pada status kesehatannya setelah di coba segmentasikan kedalam Jenis Kelamin, Usia, dan BMI
  >Query pada case B ini memecah data dari case A diatas tadi kedalam 3 segmen, yaitu Jenis Kelamin, Usia, BMI.

  >| Status Kesehatan	| Jenis Kelamin	| Jumlah responden | Usia | BMI |
  >| :--- | :--- | :---: | :---: | :---: |
  >| **Overweight** | Male | 1,317 | 49 Tahun | 27.29 |
  >| | Female | 1,081 | 49 Tahun | 27.28 |
  >| | Other | 102 | 49 Tahun | 27.50 |
  >| **Healthy** | Female | 1,187 | 47 Tahun | 22.32 |
  >| | Male | 963 | 46 Tahun | 22.79 |
  >| | Other | 99 | 46 Tahun | 22.29 |
  >| **Obese** | Male | 579 | 51 Tahun | 32.24 |
  >| | Female | 451 | 52 Tahun | 32.28 |
  >| | Other | 46 | 51 Tahun | 32.21 |
  >| **Underweight** | Female | 136 | 41 Tahun | 16.97 |
  >| | Male | 33 | 45 Tahun | 17.27 |
  >| | Other | 6 | 42 Tahun | 17.10 |

  ## 2. Insight
  Berdasarkan hasil korelasi data antara case A dan case B. ditemukan 3 anomali pola strategi crusial bagi arah bisnis platform:

  1. **Dominasi mutlak pada kategori berat badan berlebih yaitu total (59.6%) dari persentase Obese (17.93%) + Overweight (41.67%)**. terlihat juga bahwa hampir 60% responden berada di atas ambang batas ideal BMI-nya. 
  **(Normal / Ideal: 18,5 - 24,9)**
  2. **Krisis obesitas didominasi oleh laki-laki:** pada kategori *Overweight* dan *Obese*, jumlah responden berjenis kelamin (**Male**) secara konsisten lebih tinggi dari perempuan (**Female**), Total  gabungan dari Laki-laki dengan perempuan tidak ideal yaitu 1896 responden laki-laki vs 1532 perempuan responden.
  3. **responden platform adalah kelompok usia paruh baya:** Rata-rata usia responden yang memiliki masalah berat badan ada diangka **49-52 tahun**. Ini mematahkan asumsi terkait platform digital kesehatan hanya diminati oleh anak usia muda.

  ## 3. Recomendation
  Sebagai bridging antara Bisnis dan Sistem/Platform, berikut saran strategi dan fitur yang direkomendasikan oleh suatu pelaku usaha platform digital kesehatan:

  ### A. Optimalisasi Produk dan UI/UX
  * **Ramah untuk usia lansia / dewasa** Karena rata-rata responden kita adalah orang Lansia / paruh baya dan dewasa atau sekitar usia 50 tahun, ukuran *font* yang bisa diperbesar, navigasi yang simpel tanpa banyak animasi membingungkan, dan panduan suara (*voice-guided*).
  * **Fitur default penanda untuk laki-laki:** Perlu adanya program latihan atau diet khusus pria usia 40 - 50 tahun (fokusnya ada pada kesehatan jantung dan penurunan lingkar perut), hal ini juga merupakan segmen pasar terbesar kita yang sedang mengalami masalah kesehatan.

  ### B. Strategi Pemasaran (Untuk Tim Marketing)
  * **Koreksi pada target iklan (Ad Targeting):** Hentikan pemborosan anggaran iklan yang menargetkan remaja atau usia muda atau sekitar 20-an awal. Alihkan *budget* marketing untuk menargetkan audiens usia 35 - 55 tahun dengan pesan iklan fokus pada *"Investasi Kesehatan Masa Tua"* dan *"Pencegahan Penyakit Degeneratif"*.


## Copyright Personal Portfolio
* **Project Owner / Created By:** Damar Djati Wahyu Kemala
* **Role:** Aspiring Data Analyst & Business Analyst (Ex-SIMRS Developer)
* **Date Created:** Juni 2026
* **GitHub Portfolio:** [https://github.com/dams-code](https://github.com/dams-code)

---
*© 2026 Damar Djati Wahyu Kemala. This project is a part of my professional data analyst portfolio. Authorization is required for commercial use or modification.*
