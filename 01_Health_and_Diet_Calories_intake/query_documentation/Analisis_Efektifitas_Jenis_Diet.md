<div align="center">
  <h3>DATA ANALYST & BUSINESS ANALYST PORTFOLIO</h3>
  <h2>Health Platform Analytics: User Demographics, Diet Performance, and Calorie Balance Report</h2>
  <p><b>Created by:</b> Damar Djati Wahyu Kemala | <b>Role:</b> Aspiring Data & Business Analyst (Ex-SIMRS Developer)</p>
  <p><i>© 2026 Damar Djati Wahyu Kemala</i></p>
  <hr />
</div>


# Analisis Efektivitas Jenis Diet terhadap Status Kesehatan
* **Tujuan:** Menilai program diet mana yang paling direkomendasikan untuk responden baru.

  ## 1. Laporan Analisis

  Laporan ini melakukan explore dan analisa terhadap pengaruh program diet yang dipilih oleh responden dengan hasil status kesehatan mereka secara aktual. Hal ini digunakan untuk menentukan efektivitas program diet pada platform.

  >### Hasil Query pada Jenis Diet
  >Query pada case ini mengisolasi responden hanya berdasarkan pada program diet (PARTITION BY Diet_Type) untuk melihat distribusi status kesehatan masing-masing kategorinya.

  >| Jenis Diet | Status Kesehatan | Jumlah Responden | Persentase Dalam Diet (%) |
  >| :--- | :--- | :---: | :---: |
  >| **Balanced** | Overweight | 633 | 41.21% |
  >| | Healthy | 589 | 38.35% |
  >| | Obese | 264 | 17.19% |
  >| | Underweight | 50 | 3.26% |
  >| **High Protein** | Overweight | 458 | 42.57% |
  >| | Healthy | 398 | 36.99% |
  >| | Obese | 185 | 17.19% |
  >| | Underweight | 35 | 3.25% |
  >| **Keto** | Overweight | 309 | 42.86% |
  >| | Healthy | 257 | 35.64% |
  >| | Obese | 136 | 18.86% |
  >| | Underweight | 19 | 2.64% |
  >| **Mediterranean** | Overweight | 420 | 40.90% |
  >| | Healthy | 391 | 38.07% |
  >| | Obese | 183 | 17.82% |
  >| | Underweight | 33 | 3.21% |
  >| **Vegan** | Overweight | 238 | 40.68% |
  >| | Healthy | 210 | 35.90% |
  >| | Obese | 122 | 20.85% |
  >| | Underweight | 15 | 2.56% |
  >| **Vegetarian** | Overweight | 442 | 41.90% |
  >| | Healthy | 404 | 38.29% |
  >| | Obese | 186 | 17.63% |
  >| | Underweight | 23 | 2.18% |

  ## 2. Insight
  Berdasarkan hasil komparasi antar-kohort diet, ditemukan anomali performa program yang krusial bagi pengembangan produk:

  1. **Anomali pada Keseragaman Pola (Diet Tidak Menjadi Penentu Tunggal):** Data diatas menunjukkan tren distribusi status kesehatan yang hampir seragam di angka 40%-42% (*Overweight*) dan 35%-38% (*Healthy*) di seluruh jenis diet. Fakta ini membuktikan bahwa **jenis metodologi diet (Keto, Vegan, dll.) tidak memiliki korelasi tunggal terhadap kesuksesan penurunan berat badan** responden jika tidak dibarengi dengan kontrol volume kalori.
  2. **Diet Balanced dan Mediterranean Memiliki Tingkat Performa Paling Bagus:**
  Meskipun ada beda tipis, diet *Balanced* (38.35%) dan *Mediterranean* (38.07%) memperoleh persentase responden *Healthy* tertinggi. Kedua diet ini secara klinis memang lebih mudah dipertahankan dalam jangka panjang (*sustainable*) dibandingkan diet ketat seperti Keto atau Vegan. 
  3. **Risiko Obesitas Tertinggi pada Kategori Vegan (20.85%):**
  Data menunjukkan Kategori Vegan justru memiliki rasio *Obese* tertinggi (20.85%). Hal ini menunjukan adanya fenomena *malnutrisi kalori* (konsumsi karbohidrat / gula pengganti daging secara berlebih dan minim pengawasan).

  ## 3. Recommendation

  ### A. Optimalisasi Fitur paltform
  * **Perlu Beralih dari "Pilihan Diet" ke "Kontrol Kalori Maksimal":** Sistem paltform harus berhenti menonjolkan satu jenis diet tertentu pada algoritma rekomendasi utama. Fokus fitur harus dialihkan ke kalkulator defisit kalori harian yang ketat.
  * **Fitur Peringatan Karbohidrat Tersembunyi untuk Vegan:** Mengembangkan sistem *peringatan* otomatis khusus untuk responden yang memilih diet Vegan / Vegetarian guna mendeteksi jika konsumsi karbohidrat olahan pemakai paltform melewati batas harian.
  
  ### B. Strategi Konten & Pemasaran
  * **Kampanye Edukasi "Diet Sehat yang Realistis":** Tim marketing dapat membuat konten edukasi berbasis data ini dengan kata-kata *"Kenapa Diet Keto/Vegan Gagal?"*. Solusi yang ditawarkan nantinya yaitu fitur langganan premium paltform yang fokus pada kombinasi diet *Balanced* dan pelacakan kalori real-time.



## Copyright Personal Portfolio
* **Project Owner / Created By:** Damar Djati Wahyu Kemala
* **Role:** Aspiring Data Analyst & Business Analyst (Ex-SIMRS Developer)
* **Date Created:** Juni 2026
* **GitHub Portfolio:** [https://github.com/dams-code](https://github.com/dams-code)

---
*© 2026 Damar Djati Wahyu Kemala. This project is a part of my professional data analyst portfolio. Authorization is required for commercial use or modification.*
