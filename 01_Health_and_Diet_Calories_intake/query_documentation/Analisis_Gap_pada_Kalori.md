<div align="center">
  <h3>DATA ANALYST & BUSINESS ANALYST PORTFOLIO</h3>
  <h2>Health Platform Analytics: User Demographics, Diet Performance, and Energy Balance Report</h2>
  <p><b>Created by:</b> Damar Djati Wahyu Kemala | <b>Role:</b> Aspiring Data & Business Analyst (Ex-SIMRS Developer)</p>
  <p><i>© 2026 Damar Djati Wahyu Kemala</i></p>
  <hr />
</div>


# Analisis Pengaruh Gap pada Kalori terhadap Status Kesehatan
* **Tujuan:** Mengukur tingkat kedisiplinan nutrisi responden dengan menghitung selisih (*gap*) antara kalori yang dikonsumsi dengan kebutuhan harian (TDEE), serta melihat dampaknya terhadap status kesehatan mereka.

  ## 1. Laporan Analisis

  Laporan ini melakukan evaluasi terhadap korelasi matematis antara kebutuhan energi harian terhadap energi yang digunakan, secara teori dan realistis berdasarkan dataset yang dipakai dalam analisis ini. untuk membuktikan penyebab utama dibalik status kesehatan responden.

  >### Hasil Query pada Jenis Diet
  >Query pada case ini menghitung rata-rata kebutuhan kalori, rata-rata kalori yang terbakar / dikonsumsi. dan mencari margin surplus / defisit dengan menggunakan rumus
  <br/>(`Daily_Calorie_Consumed - Daily_Calorie_Requirement`) dari 6000 responden.

  >| Status Kesehatan | Jumlah Responden | Rata-rata Kebutuhan (kkal) | Rata-rata Konsumsi (kkal) | Rata-rata Keseimbangan Kalori (kkal) |
  >| :--- | :---: | :---: | :---: | :---: |
  >| **Obese** | 1,076 | 2,334 | 2,866 | **+531** (Surplus Ekstrem) |
  >| **Overweight** | 2,500 | 2,331 | 2,623 | **+292** (Surplus Moderat) |
  >| **Healthy** | 2,249 | 2,249 | 2,245 | **-4** (Perfect Balance) |
  >| **Underweight** | 175 | 1,834 | 1,457 | **-377** (Defisit Ekstrem) |

  ## 2. Insight
  Berdasarkan hasil temuan perhitungan rata-rata kalori harian, ditemukan 3 pola mutlak yang mendasari kondisi kesehatan responden pada platform:

  1. **Kategori Healty sebagai penjaga pola kalori seimbang** sebanyak 2.249 responden secara sadar atau tidak sadar telah menjaga keseimbangan kalori dengan margin defisit pada nagka -4 kkal/hari. Angka ini mendekati 0 membuktikan bahwa stabilitas berat badan ideal dicapai melalui konsumsi makanan yang tepat dengan yang dibutuhkan oleh metabolisme tubuh.
  2. **Akar Masalah Obesitas adalah ada pada Surplus +531 kkal/hari:**
  Kelompok **Obese** tercatat dengan konsumsi harian tertinggi (2.866 kkal) yang menghasilkan surplus sebesar **+531 kkal/hari** di atas kebutuhan metabolisme tubuh mereka. Akumulasi surplus sebesar ini secara konstan setara dengan penambahan sekitar 0.5 kg jaringan lemak tubuh per minggu.
  3. **Defisit extrem pada kelompok Underweight (-377 kkal/hari):**
  Responden **Underweight** tidak hanya memiliki kebutuhan kalori dasar yang paling rendah (1.834 kkal), akan tetapi mereka juga mengalami defisit energi yang terlalu jauh (**-377 kkal/hari**). Pola ini mengindikasikan adanya masalah kurang gizi atau pola makan yang terlalu restriktif pada segmen ini.

  ## 3. Recommendation

  ### A. Intervensi Fitur Berbasis Data
  * **Fitur Otomatisasi Target "Menuju 0 Kalori" untuk User dengan kategori Healthy:** pada platform perlu mempertahankan algoritma pengingat makan, agar margin kalori mereka tetap terjaga di zona aman.
  * **Dynamic Calorie Capping untuk Segmen Overweight/Obese:** Aplikasi harus mengunci batas atas input makanan harian untuk pengguna *Overweight* dan *Obese*. Pengguna tidak boleh dibiarkan melewati batas *Requirement* mereka tanpa menerima peringatan visual (notifikasi berwarna merah).
  * **Program "Surgenergi" (Surplus Sehat) untuk Underweight:** Perlu membuat modul diet khusus yang memicu surplus kalori bersih sebesar $+300$ kkal secara sehat melalui *macronutrient* padat gizi (non junk food).

  ### B. Strategi Monetisasi
  * **Sistem Smart Tracking:** Data ini membuktikan pengguna dengan kategori *Obese* membutuhkan pengawasan ketat. Tim bisnis dapat meluncurkan fitur premium seperti *AI Calorie Adjuster*, yang otomatis memotong target kuota makan harian esok hari secara dinamis jika hari ini pengguna mengalami surplus di atas $+200$ kkal.


## Copyright Personal Portfolio
* **Project Owner / Created By:** Damar Djati Wahyu Kemala
* **Role:** Aspiring Data Analyst & Business Analyst (Ex-SIMRS Developer)
* **Date Created:** Juni 2026
* **GitHub Portfolio:** [https://github.com/dams-code](https://github.com/dams-code)

---
*© 2026 Damar Djati Wahyu Kemala. This project is a part of my professional data analyst portfolio. Authorization is required for commercial use or modification.*

