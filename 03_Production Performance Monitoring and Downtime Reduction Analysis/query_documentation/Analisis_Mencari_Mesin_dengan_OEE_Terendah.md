<div align="center">
  <h3>DATA ANALYST & BUSINESS ANALYST PORTFOLIO</h3>
  <h2>Production Performance Monitoring and Downtime Reduction Analysis (OEE)</h2>
  <p><b>Created by:</b> Damar Djati Wahyu Kemala | <b>Role:</b> Aspiring Data & Business Analyst (Ex-SIMRS Developer)</p>
  <p><i>© 2026 Damar Djati Wahyu Kemala</i></p>
  <hr />
</div>


# Analisis Mencari Mesin dengan OEE Terendah
* **Tujuan:** Mengidentifikasi Mesin produksi yang memiliki efektivitas paling rendah di lantai produksi dengan tujuan menentukan prioritas alokasi perbaikan mesin (maintance dan operasional)

  ## 1. Laporan Analisis

  Laporan ini menyajikan terkait hasil identifikasi mesin produksi yang memiliki efektifitas dari yang paling tinggi hingga yang paling rendah.

  >### Hasil Query Analisis
  >Query pada temuan mesin produksi ini yang dilihat berdasarkan oee dan dari sisi faktor availability, performance, dan quality-nya.

  >| Machine ID | Availability (%) | Performance (%) | Quality (%) | OEE (%) | Total Produksi per Hari |
  >| :--- | :---: | :---: | :---: | :---: | :---: |
  >| **MCH-004** | 82,42 | 84,23 | 94,18 | **65,38** | 1.500 |
  >| **MCH-008** | 82,29 | 84,32 | 94,04 | **65,27** | 1.500 |
  >| **MCH-015** | 82,45 | 83,85 | 94,01 | **65,00** | 1.500 |
  >| **MCH-006** | 82,23 | 84,05 | 94,03 | **64,97** | 1.500 |
  >| **MCH-005** | 81,88 | 84,29 | 93,92 | **64,86** | 1.500 |
  >| **MCH-018** | 82,02 | 84,29 | 93,72 | **64,81** | 1.500 |
  >| **MCH-002** | 82,10 | 84,00 | 94,02 | **64,80** | 1.500 |
  >| **MCH-020** | 81,63 | 84,36 | 94,10 | **64,80** | 1.500 |
  >| **MCH-011** | 81,90 | 84,18 | 93,91 | **64,75** | 1.500 |
  >| **MCH-017** | 82,16 | 83,77 | 94,07 | **64,74** | 1.500 |
  >| **MCH-001** | 81,76 | 84,15 | 94,03 | **64,68** | 1.500 |
  >| **MCH-007** | 81,72 | 84,05 | 93,96 | **64,52** | 1.500 |
  >| **MCH-010** | 81,83 | 83,89 | 94,00 | **64,51** | 1.500 |
  >| **MCH-016** | 82,02 | 83,87 | 93,83 | **64,51** | 1.500 |
  >| **MCH-012** | 81,67 | 84,09 | 93,91 | **64,48** | 1.500 |
  >| **MCH-013** | 81,87 | 83,79 | 93,92 | **64,47** | 1.500 |
  >| **MCH-014** | 81,66 | 84,00 | 93,96 | **64,46** | 1.500 |
  >| **MCH-009** | 81,60 | 83,86 | 94,02 | **64,31** | 1.500 |
  >| **MCH-019** | 81,77 | 83,75 | 93,85 | **64,26** | 1.500 |
  >| **MCH-003** | 81,58 | 83,50 | 94,06 | **64,04** | 1.500 |

  ## 2. Insight
  Berdasarkan hasil temuan data OEE diatas dan dari sisi faktor availability, performance, dan quality-nya:

  #### A. Evaluasi pada Mesin dengan OEE Terendah
  * **Mesin Perlu Maintance** terdapat pada mesin **MCH-003** mesin ini menempati urutan paling bawah dengan rata rata OEE sebesar **64.04%**. Mesin ini wajib menjadi prioritas utama dalam program maintance (perbaikan mesin).
  * **Karakteristik Output** dari seluruh mesin yang ada tercatat menghasilkan produk perharinya **(Total Produksi per Hari)** sebanyak **1.500** secara flat.
  Dari hal tersebut mengindikasikan bahwa dengan adanya batas kuota produksi mesin harian, sehingga naik turunnya nilai OEE murni dipengaruhi oleh faktor internal yaitu mesin produksinya **(dipengaruhi oleh waktu berhenti dan fluktuasi kecepatan produksi)**, bukan dari volume kapasitas produk akhir.

  #### B. Evaluasi pada nilai OEE

  Dilihat dari sisi Availibilitas, Performance, dan Quality,

  * **Availabilitas rentang antara (81.5% - 82.4%)** Ditemukan pada mesin ****MCH-003**** dengan persentase sebesar 81.58%. Penyebab utama pengaruh skor rendah pada OEE, dimana Pabrik / industri kehilangan berkisar antara **17.5% - 18.5%** potensi waktu produktifnya. yang murni karena mesin berhenti beroperasi / **downtime**
  
  * **Performance rentang antara (83.5% - 84.3%)** tingkat dari acuhan rendahnya performance yaitu  < 85% <i>(sumber acuhan: Seiichi Nakajima - Japan Institute of Plant Maintenance (JIPM))</i>, maka performance pada data ini tergolong rendah, kemungkinan atau bisa jadi mesin produksi sering mengalami idle stoppage (rehat sebentar lalu bekerja lagi) dan ini kejadiannya berulang dalam 1 hari produksi itu.
  
  * **Quality rentang antara (93.7% - 94.1%)** produksi produknya dari persentase 93.7% sampai 94.1% termasuk bagus jika dilihat dari acuhan standart quality antara 90% - 95% (accepted) <i>(sumber acuhan: Seiichi Nakajima - Japan Institute of Plant Maintenance (JIPM))</i> ini mengindikasikan bahwa kualitas produk bagus, serta tingkat kecacatan produk dapat dikendalikan.

  #### C. Analisis Root Cause (5 Why)

  Dari Evaluasi nilai OEE, ditemukan penyebab skor OEE tidak maksimal yaitu ada pada availabilitas. Kemudian dicoba dengan analisa menggunakan 5 Why:

  1. Mengapa OEE Mesin MCH-003 berada pada posisi terendah?
      * Karena waktu jalan secara aktual berdasarkan data diatas mesin sangat rendah dengan persentase Availability sebesar 81.58%.
  
  2. Mengapa waktu jalan aktual mesin sering berhenti (Downtime)?
      * Karena sering terjadi kerusakan teknis pada komponen mesin.
  
  3. Mengapa komponen mesin tersebut sering mengalami kerusakan mendadak?
      * Karena suhu komponen mesin sering melebihi batas normal akibat jarang dilakukan pelumasan.
  
  4. Mengapa pelumasan komponen mesin dan penanganannya terlambat?
      * Karena jadwal pengecekan rutin ada mesin dan realita dilapangannya sering terlambat.
  
  5. Mengapa jadwal *Preventive Maintenance* bisa terlewat?
      * Belum adanya sebuah dashboard monitoring dan notifikasi pengingat lewat wa teknisi terkait penjadwalan pengecekan dan perawatan pada mesin.

  ## 3. Recommendation

  #### A. Fokus perbaikan pada Faktor Availability
  Perlu adanya pencegahan atau **Perventive Maintenance** yaitu dengan pengalihkan fokus tim teknisi dari reduksi defect (mengantisipasi mesin agar tidak memperoleh produk cacat) ke reduksi idle stoppage atau berhentinya mesin yang menyebabkan produksi terhambat.

  #### B. Perlunya Audit dan Perbaikan Total
  Semua Mesin yang bertipe MCH-003 perlu diaudit dan di perbaiki untuk mengembalikan performa efektifitas mesin ke kondisi awal.

  #### C. SOP standarisasi pada setup Mesin
  Dimana jika dalam rumah sakit pada alat medis sering dilakukan Kalibrasi alat baru -> Implementasi -> dan pengecekan serta penggantian alat medis yang rusak sesuai SOP secara berkala. 
  Dan jika SOP ini diterapkan didalam pada mesin produksi pada industri hal ini nantinya dapat memangkas waktu *setup* dan *changeover* / penggantian mesin produk. sehingga hasilnya nanti dapat meningkatkan angka produksi dan menekan downtime.


## Copyright Personal Portfolio
* **Project Owner / Created By:** Damar Djati Wahyu Kemala
* **Role:** Aspiring Data Analyst & Business Analyst (Ex-SIMRS Developer)
* **Date Created:** Juni 2026
* **GitHub Portfolio:** [https://github.com/dams-code](https://github.com/dams-code)

---
*© 2026 Damar Djati Wahyu Kemala. This project is a part of my professional data analyst portfolio. Authorization is required for commercial use or modification.*