<div align="center">
  <h3>DATA ANALYST & BUSINESS ANALYST PORTFOLIO</h3>
  <h2>Employee Retention & Burnout Risk Analysis</h2>
  <p><b>Created by:</b> Damar Djati Wahyu Kemala | <b>Role:</b> Aspiring Data & Business Analyst (Ex-SIMRS Developer)</p>
  <p><i>© 2026 Damar Djati Wahyu Kemala</i></p>
  <hr />
</div>

![Status](https://img.shields.io/badge/Project%20Status-Completed-success?style=flat-square)
![Analysis Type](https://img.shields.io/badge/Analysis-Retention%20Attrition-critical?style=flat-square)

## 1. Prologue
Biaya untuk merekrut, melakukan *onboarding*, dan melatih karyawan baru jauh lebih tinggi daripada mempertahankan talenta yang sudah ada. Kehilangan karyawan kunci—terutama mereka yang berkinerja tinggi (*high performers*)—dapat mengganggu produktivitas tim dan menurunkan moral kerja secara keseluruhan. 

Proyek ini menganalisis data internal karyawan (berdasarkan dataset sintetis IBM HR) untuk mengidentifikasi pola tersembunyi di balik keputusan karyawan untuk mengundurkan diri (*attrition*). Dengan mengombinasikan faktor demografi, tingkat kepuasan kerja, kompensasi, dan beban kerja (lembur), analisis ini bertujuan memberikan rekomendasi berbasis data (*data-driven*) bagi tim HR untuk merancang strategi retensi yang lebih proaktif.

---

## 2. Tujuan Analisis (Business Objectives)
Tujuan utama dari analisis ini adalah mengubah data mentah HR menjadi wawasan strategis yang dapat ditindaklanjuti untuk membantu manajemen memitigasi risiko *turnover*. Secara spesifik, proyek ini bertujuan untuk:
* Mengidentifikasi akar penyebab keluarnya karyawan di berbagai departemen.
* Memetakan segmen karyawan tertentu yang sangat rentan terhadap risiko *burnout*.
* Menyediakan rekomendasi berbasis data untuk mengoptimalkan kebijakan retensi HR, struktur kompensasi, dan manajemen beban kerja.

---

## 3. Business Objectives & Problem Statements
Untuk mencapai tujuan bisnis tersebut, proyek ini berfokus pada penyelesaian beberapa masalah spesifik berikut:
1. **Faktor Pemicu Utama:** Variabel apa saja (misal: lembur, jarak rumah, atau kompensasi) yang memiliki korelasi paling kuat dengan keputusan karyawan untuk keluar?
2. **Segmen Risiko Tinggi:** Divisi, peran pekerjaan (*Job Role*), atau kelompok masa kerja mana yang memiliki tingkat *attrition* di atas rata-rata perusahaan?
3. **Pola Kejenuhan (Burnout):** Apakah karyawan dengan performa tinggi (`PerformanceRating` = 3 atau 4) namun memiliki kepuasan kerja rendah dan jam lembur tinggi cenderung lebih cepat keluar?
4. **Stagnansi Karir:** Bagaimana faktor seperti waktu sejak promosi terakhir (`YearsSinceLastPromotion`) atau hubungan dengan manajer saat ini (`YearsWithCurrManager`) memengaruhi loyalitas karyawan?

---

## 4. Dataset Architecture & Schema
* **Source:** Kaggle IBM HR Analytics Employee Attrition
* **Total Records:** 1470 rows
* **Technology Stack:** SQL Server (T-SQL), VS Code, Looker Studio.

---

## 5. Executive Insights & Core Analysis

### Analisis 1: Korelasi Lembur (Overtime) & Burnout Karyawan
* **Tujuan:** Mengukur seberapa besar dampak beban kerja berlebih (lembur) terhadap keputusan karyawan untuk resign, terutama bagi mereka yang memiliki kinerja bagus.
* **Key Finding:** Lembur sebagai Sumber prediktor Utama pada karyawan kebijakan lembur dengan kategori **Yes** menjadi pemicu utama yang menyebabkan karyawan keluar, dan juga Kebijakan lembur karyawan yang mengesampingkan status kepuasan kerja.
* **[Detail Laporan Angka & Query SQL Analisis 1](./query_documentation/Analisis_Korelasi_Lembur_dan_Burnout_Karyawan.md)**

### Analisis 2: Friksi Antara Kompensasi vs Jarak Rumah ke Kantor
* **Tujuan:** Menilai apakah faktor finansial (gaji rendah) yang dikombinasikan dengan beban logistik harian (jarak rumah yang jauh) menjadi pemicu utama karyawan mencari pekerjaan baru.
* **Key Finding:**  Kelompok Risiko Tinggi pada Gaji dan Pengaruh Jarak Karyawan yang memiliki **Gaji dibawah rata-rata** dan tinggal **Jauh (> 9 mil / 14 km)**, friksi pada biaya operasional dan energi yang dikeluarkan dalam pekerjaan harian tidak sebanding dengan kompensasi / gaji yang didapat.
* **[Detail Laporan Angka & Query SQL Analisis 2](./query_documentation/Analisis_Friksi_Kompensasi_dengan_jarakRumahKeKantor.md)**

### Analisis 3: Perkembangan Karir & Hubungan dengan Atasan
* **Tujuan:** Menguji kebenaran dari pepatah populer dunia kerja: "Karyawan tidak meninggalkan perusahaan, mereka meninggalkan atasan mereka." sekaligus melihat dampak dari stagnansi karir.
* **Key Finding:** Risiko pada perputaran karyawan paling tinggi ada pada segmen **Baru Promosi** dan saat itu juga mendapat **Manager Baru**, hipotesis bahwa friksi gaya kepemimpinan diawal penugasan manager baru tersebut memberikan kontribusi besar pada kenyamanan karyawan dibawahnya
* **[Detail Laporan Angka & Query SQL Analisis 3](./query_documentation/Analisis_Perkembangan_Karir_dan_Hubungan_dengan_Atasan.md)**

---

## 6. Struktur Data dan Pembersihan Data
Dataset ini terdiri dari 1.470 baris data karyawan dengan 35 kolom awal. Beberapa langkah *data cleaning* yang dilakukan di SQL Server meliputi:
* Mengeliminasi kolom konstanta yang tidak memiliki variasi nilai (*EmployeeCount*, *Over18*, *StandardHours*).
* Mengonversi variabel target (`Attrition`) menjadi metrik biner (1 untuk 'Yes', 0 untuk 'No') guna mempermudah kalkulasi persentase di Looker.
* Melakukan *binning* (pengelompokkan) pada kolom numerik seperti `Age` dan `MonthlyIncome`.

---

## 7. Looker Studio Dashboard Preview
Dasbor yang dibangun akan dibagi menjadi tiga fokus utama:
* **Overview Metrik Utama:** Total Karyawan, Angka *Attrition Rate*, dan Persentase Karyawan Lembur.
* **Analisis Perilaku & Beban Kerja:** Korelasi antara lembur (`OverTime`) vs kepuasan kerja (`JobSatisfaction`) terhadap tingkat keluarnya karyawan.
* **Analisis Finansial & Karir:** Perbandingan gaji bulanan (`MonthlyIncome`) dan lamanya waktu promosi terakhir terhadap loyalitas karyawan di setiap divisi.

* [**Lihat Interaktif Dashboard (Looker Studio)**](https://datastudio.google.com/reporting/2e7c76c2-3556-4e8c-aa21-802512a546a9)

---

## Copyright Personal Portfolio
* **Project Owner / Created By:** Damar Djati Wahyu Kemala
* **Role:** Aspiring Data Analyst & Business Analyst (Ex-SIMRS Developer)
* **Date Created:** Juni 2026
* **GitHub Portfolio:** [https://github.com/dams-code](https://github.com/dams-code)

---
*© 2026 Damar Djati Wahyu Kemala. This project is a part of my professional data analyst portfolio. Authorization is required for commercial use or modification.*
