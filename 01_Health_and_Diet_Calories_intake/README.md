<div align="center">
  <h3>DATA ANALYST & BUSINESS ANALYST PORTFOLIO</h3>
  <h2>Health Platform Analytics: User Demographics, Diet Performance, and Energy Balance Report</h2>
  <p><b>Created by:</b> Damar Djati Wahyu Kemala | <b>Role:</b> Aspiring Data & Business Analyst (Ex-SIMRS Developer)</p>
  <p><i>© 2026 Damar Djati Wahyu Kemala</i></p>
  <hr />
</div>

## 1. Prologue
Di era digital saat ini, kesadaran masyarakat terhadap kesehatan dan nutrisi personal meningkat pesat. Perusahaan *HealthTech* dan pengembang platform kebugaran berlomba-lomba memberikan rekomendasi yang paling personal bagi respondennya. Proyek ini berfokus pada pengolahan dan analisis data profil fisik, pola makan (diet), tingkat aktivitas, serta pemenuhan kebutuhan kalori dan nutrisi harian dari responden. Data mentah (*raw data*) dikelola di dalam **SQL Server** dan dipersiapkan untuk integrasi visualisasi data ke **Looker Studio**.

## 2. Tujuan Analisis (Business Objectives)
Tujuan utama dari analisis data *Healthy Diet* ini adalah untuk memahami perilaku, kedisiplinan, dan kondisi kesehatan responden secara mendalam. Secara spesifik, analisis ini bertujuan untuk:
* **Mengidentifikasi Segmentasi Pasar:** Memetakan profil kesehatan mayoritas responden guna menentukan arah pengembangan konten dan fitur platform.
* **Mengevaluasi Efektivitas Program:** Menilai jenis diet mana yang memiliki tingkat keberhasilan tertinggi dalam menjaga berat badan ideal responden.
* **Meningkatkan Fitur Retensi & Engagements:** Menemukan anomali perilaku responden (seperti surplus kalori atau dehidrasi) untuk memicu fitur *smart push notification* yang tepat sasaran.

  ### 2.1 Project Roadmap & Navigation
  Untuk mempermudah peninjauan (*code review*), proyek ini dibagi menjadi beberapa bagian terstruktur yang bisa diakses langsung di bawah ini:
  * **[Section 3: Business Objectives & Problem Statements](#3-business-objectives--problem-statements)**
  * **[Section 4: Dataset Architecture & Schema](#4-dataset-architecture--schema)**
  * **[Section 5: Executive Insights & Core Analysis](#5-executive-insights--core-analysis)**
  * **[Lihat Script SQL](./query_sql/)**

## 3. Business Objectives & Problem Statements
Analisis ini berfokus pada tiga pilar masalah utama perusahaan:
1. **Demografi:** Bagaimana sebaran status kesehatan responden berdasarkan gender dan usia untuk menentukan target pasar?
2. **Produk:** Jenis diet mana yang memiliki *Success Rate* tertinggi dalam menghasilkan status 'Healthy'?
3. **Engagement:** Apakah ada kesenjangan (*gap*) kritis pada konsumsi kalori dan hidrasi air harian responden?

## 4. Dataset Architecture & Schema
* **Source:** Kaggle (Healthy Diet & Calorie Intake Dataset)
* **Total Records:** 6000 rows
* **Technology Stack:** SQL Server (T-SQL), VS Code, Looker Studio.

## 5. Executive Insights & Core Analysis

### Analisis 1: Profil Demografi dan Distribusi Kesehatan
* **Tujuan:** Memetakan karakteristik dasar responden guna menentukan arah pengembangan konten platform.
* **Key Finding:** Mayoritas responden (59.6%) berada dalam kategori berat badan di atas ambang batas ideal (Overweight & Obese), dengan didominasi pada kohort pria di rentang usia matang / paruh baya (49-52 tahun).
* **[Detail Laporan Angka & Query SQL Analisis 1](./query_documentation/Analisis_Demografis.md)**

### Analisis 2: Efektivitas Jenis Diet terhadap Status Kesehatan
* **Tujuan:** Menilai program diet mana yang paling direkomendasikan untuk responden baru.
* **Key Finding:** Ditemukan anomali di mana semua jenis diet menghasilkan pola risiko kelebihan berat badan yang seragam (40%-42%) *Overweight*. Hal ini membuktikan bahwa jenis diet tidak menjamin hasil berakhir healtty jika mengabaikan kontrol kalori total harian.
* **[Detail Laporan Angka & Query SQL Analisis 2](./query_documentation/Analisis_Efektifitas_Jenis_Diet.md)**

### Analisis 3: Pengaruh Gap pada Kalori terhadap Status Kesehatan
* **Tujuan:** Mengukur tingkat kedisiplinan nutrisi responden dengan menghitung selisih (*gap*) antara kalori yang dikonsumsi dengan kebutuhan harian (TDEE), serta melihat dampaknya terhadap status kesehatan mereka.
* **Key Finding:** Terbukti secara teori matematis bahwa kateogri Healthy berada di titik ekuilibrium (keseimbangan) dengan margin hanya -4 kkal/hari, sementara kategori Obese menderita surplus kronis sebesar +531 kkal/hari.
* **[Detail Laporan Angka & Query SQL Analisis 3](./query_documentation/Analisis_Gap_pada_Kalori.md)**

## 6. Looker Studio Dashboard Preview
* [**Lihat Interaktif Dashboard (Looker Studio)**](https://datastudio.google.com/reporting/7ec7583c-7da8-42b9-a700-a3ef9baff6ad)

## Copyright Personal Portfolio
* **Project Owner / Created By:** Damar Djati Wahyu Kemala
* **Role:** Aspiring Data Analyst & Business Analyst (Ex-SIMRS Developer)
* **Date Created:** Juni 2026
* **GitHub Portfolio:** [https://github.com/dams-code](https://github.com/dams-code)

---
*© 2026 Damar Djati Wahyu Kemala. This project is a part of my professional data analyst portfolio. Authorization is required for commercial use or modification.*