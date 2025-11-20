<p align="center">
  <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/canva%20stunting%20(1).jpg" width="800"/>
</p>

# Analisis Faktor-Faktor yang Mempengaruhi Prevalensi Stunting di Provinsi NTT Tahun 2024

Repository ini berisi data dan skrip analisis penelitian mengenai faktor-faktor yang mempengaruhi **prevalensi stunting pada balita di Provinsi Nusa Tenggara Timur tahun 2024**. Penelitian ini dilakukan sebagai bagian dari tugas kelompok untuk memahami pengaruh variabel sosial, ekonomi, dan kesehatan terhadap angka stunting.

---

## 📋 Latar Belakang

Kesehatan dan pertumbuhan anak merupakan indikator utama dari keberhasilan pembangunan sosial dan ekonomi suatu bangsa. Di Indonesia, prevalensi stunting masih menunjukkan angka yang cukup tinggi meskipun mengalami penurunan dalam satu dekade terakhir. _World Health Organization_ (WHO) mendefinisikan stunting sebagai:
<p align="center">
  <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/tanda%20stunting.png" width="300"/>
</p>

> *"Gangguan pertumbuhan dan perkembangan pada anak bayi dan balita yang ditandai dengan tinggi badannya berada di bawah standar atau pendek berdasarkan tinggi badan menurut usia yang kurang dari -2 standar deviasi (SD) pada kurva pertumbuhan yang dimiliki WHO"*

Hasil Survei Status Gizi Indonesia (SSGI) pada tahun 2024 menunjukkan bahwa provinsi Nusa Tenggara Timur (NTT) memiliki prevalensi stunting tertinggi ke-2 di Indonesia setelah Papua Pegunungan, yakni sebesar 37%, meskipun prevalensi stunting nasional turun menjadi 19,8% dari 37,6% pada tahun 2013.

---

## 🎯 Tujuan Penelitian
1. Menganalisis kondisi stunting di NTT tahun 2024 secara deskriptif.  
2. Mengidentifikasi faktor-faktor yang memengaruhi prevalensi stunting.  
3. Menguji seberapa besar pengaruh masing-masing faktor menggunakan model regresi berganda.
   
---

## 📊 Metodologi Analisis
Metode yang digunakan dalam penelitian ini meliputi:
1. **Statistik Deskriptif** – Menampilkan ringkasan variabel penelitian.
2. **Seleksi Variabel** – Seleksi variabel digunakan untuk memilih variabel terbaik yang benar-benar penting, relevan, dan berkontribusi signifikan dalam sebuah model suatu regresi.
3. **Uji Multikolinearitas** – Menggunakan nilai *Variance Inflation Factor (VIF)* untuk memastikan tidak ada hubungan linear yang kuat antar variabel bebas.  
4. **Analisis Regresi Berganda** – Mengetahui pengaruh variabel bebas terhadap prevalensi stunting (`ST`).  
5. **Uji Asumsi Klasik** – Uji normalitas, heteroskedastisitas, dan multikolinearitas.  

---

## 🧾 Sumber Data

<table>
  <tr align="center">
    <td width="150">
      <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/kemenkes.png" width="80px"><br>
      <b>Kementrian Kesehatan Republik Indonesia</b>
    </td>
    <td width="150">
      <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/bps.png"><br>
      <b>Badan Pusat Statistik</b>
    </td>
    <td width="150">
      <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/images.png" width="80px"><br>
      <b>Sumber Lain yang Relevan<br>(Jurnal, Artikel, Data Terbuka)</b>
    </td>
  </tr>
</table>

---

## 📈 Variabel Penelitian
| Kode | Keterangan |
|------|-------------|
| ST | Prevalensi Stunting (%) |
| PM | Persentase Penduduk Miskin (%) |
| BW | Berat Badan Lahir Rendah (%) |
| ASL | Angka Sumber Air Layak (%) |
| AML | Angka Makan Layak (%) |
| LS | Lama Sekolah (tahun) |
| ASI | Persentase Bayi Mendapat ASI Eksklusif (%) |

---
## 📉 Hasil Penelitian
### seleksi variabel (Variabel Selection)
#### 1. Uji Signifikansi Parsial
Uji signifikansi parsial digunakan untuk melihat apakah masing-masing variabel independen memiliki pengaruh signifikan terhadap variabel dependen (ST) secara individual.

| Variabel | P-Value |
|----------|---------|
| PM | 0,3649 |
| BW | 0,0178 |
| ASL | 0,0919 |
| AML | 0,6090 |
| LS | 0,7665 |
| ASI | 0,7300 |

Hanya variabel BW (Berat Badan Lahir) dan ASL (Akses Sanitasi Layak) yang memiliki kontribusi signifikan dalam menjelaskan variasi variabel ST (Stunting) pada tingkat signifikansi tertentu. Variabel lain tidak memberikan kontribusi signifikan secara parsial.

#### 2. Uji Signifikansi Simultan
Uji ini digunakan untuk menentukan apakah seluruh variabel independen secara bersama-sama berpengaruh terhadap ST.

| F-Statistic | P-Value |
|-------------|---------|
| 1,904 | 0,146 |

Karena p-value > 0.05, maka secara simultan keenam variabel tidak memiliki pengaruh signifikan secara bersama-sama terhadap ST. Ini berarti model awal masih memiliki variabel yang tidak perlu, sehingga harus dilakukan seleksi variabel agar model lebih sederhana dan lebih baik.

#### 3. Stepwise Regression
Seleksi variabel lanjutan dilakukan menggunakan metode stepwise (backward) berbasis kriteria AIC. Proses backward secara bertahap mengeluarkan variabel yang tidak signifikan dan menyimpan variabel yang signifikan. didapatkan 2 variabel yang signifikan yaitu :

| Variabel | P-Value | Keterangan |
|----------|---------|------------|
| BW | 0,00538 | Signifikan |
| ASL | 0,00905 | signifikan |

pada hasil akhir menunjukkan bahwa BW dan ASL adalah dua variabel yang paling berpengaruh terhadap tingkat stunting, sementara variabel lain tidak meningkatkan performa model. berdasarkan hasil variabel signifikan diatas, maka model terbaik yang dipilih berdasarkan nilai AIC dan BIC yaitu :

| Model | AIC | BIC |
|-------|-----|-----|
| Model Awal (6 variabel | -50,85 | -42,12 |
| Model Backward (2 variabel) | -57,52 | -53,16 |

Model dengan nilai AIC dan BIC lebih rendah dianggap lebih baik.
Maka model backward (BW + ASL) merupakan model optimal dan lebih efisien dibanding model awal.

### Model Regresi Akhir
  Berdasarkan prosedur _backward stepwise regression_ yang memilih model dengan nilai AIC paling rendah, diperoleh bahwa terdapat dua variabel prediktor yang tetap signifikan dalam menjelaskan variabel prevalensi stunting (ST), yaitu Berat Badan Lahir Rendah (BW) dan Akses Sanitasi Layak (ASL).
 | Model | 
 |-------|
 | ST = 0.27515 + 1.55303(BW) − 0.31686(ASL) |
 
  Kedua variabel signifikan pada tingkat signifikansi α = 0.05 (p < 0.01), sehingga dapat disimpulkan bahwa BW dan ASL berkontribusi secara bermakna dalam menjelaskan variasi prevalensi stunting antar wilayah di provinsi NTT.

#### Visualisasi Variabel Terpilih
<p align="center">
  <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/stunting.png" width="800"/>
</p>

<p align="center">
  <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/balita%20wasting.png" width="800"/>
</p>

<p align="center">
  <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/sanitasi%20layak.png" width="800"/>
</p>

### Uji Kelayakan Model

| F-Statistic | P-Value |
|-------------|---------|
| 6,253 | 0,00819 |

  Secara simultan, model regresi yang terbentuk memberikan hasil signifikan, dengan nilai _p-value_ 0.00819 < 0.05. Hal ini menunjukkan bahwa variabel BW dan ASL secara bersama-sama memiliki pengaruh yang signifikan terhadap prevalensi stunting. Dengan demikian, model akhir layak digunakan untuk menjelaskan variasi stunting antar wilayah.

### Goodness of Fit

| R-Squared | Adj. R-Squared |
|-------------|---------|
| 0,3969 | 0,3335 |
  
  Model memberikan nilai R-squared sebesar 0.3969 dan Adjusted R-squared sebesar 0.3335, yang berarti bahwa 33.35% variasi prevalensi stunting dapat dijelaskan oleh variabel BW dan ASL.
  
  Selain itu, model akhir memiliki AIC yang lebih rendah dibandingkan model awal, sehingga dapat disimpulkan bahwa model akhir lebih efisien dan mampu memberikan penjelasan yang baik tanpa menambah kompleksitas yang tidak perlu.
  
### Uji Asumsi Klasik
1. Uji Normalitas:

| W | P-Value |
|---------|---------|
| 0,9411 | 0,2084 |

   Uji Shapiro-Wilk terhadap residual menghasilkan _p-value_ sebesar 0.2084. Karena _p-value_ > 0.05, residual dapat dianggap berdistribusi normal. Hal ini juga diperkuat oleh tampilan QQ-plot, dimana titik-titik residual mengikuti garis diagonal.
   <p align="center">
  <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/QQ-Plot.png" width="800"/>
</p>
2. Uji Heteroskedastisitas:

| Breusch-Pagan Test | P-Value |
|--------------------|---------|
| 4,2378 | 0,1202 |

   Berdasarkan _Breusch-Pagan Test_(BP), diperoleh nilai _p-value_ 0.1202. Karena nilai _p-value_ > 0.05, maka tidak terdapat indikasi heteroskedastisitas dalam model. Plot _residual vs fitted_ juga menunjukkan pola penyebaran yang acak, semakin menguatkan kesimpulan tersebut.
   <p align="center">
  <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/Residual vs Fitted Plot.png" width="800"/>
</p>
3. Uji Multikolinearitas:

| Variabel | VIF |
|----------|---------|
| BW | 1,280275 |
| ASL | 1,280275 |

   Pengujian multikolinearitas menggunakan VIF menunjukkan bahwa variabel BW dan ASL masing-masing memiliki VIF sebesar 1.280275. Karena nilainya jauh dibawah batas kritis (VIF < 10), maka dapat disimpulkan bahwa tidak terdapat multikolinearitas antar variabel dalam model.

### Pembahasan
  Hasil analisis menunjukkan bahwa dari enam variabel kandidat, hanya Berat Badan Lahir Rendah (BW) dan Akses Sanitasi Layak (ASL) yang memiliki pengaruh signifikan terhadap prevalensi stunting (ST). Kedua variabel tersebut tetap bertahan setelah proses _backward stepwise regression_, serta memberikan model dengan nilai AIC dan BIC yang lebih rendah dibanding model awal.
  
1. Pengaruh Berat Badan Lahir Rendah (BW) terhadap Prevalensi Stunting (ST):
   Variabel BW memiliki koefisien positif sebesar 1.55303, yang berarti semakin tinggi proporsi bayi dengan berat badan lahir rendah disuatu wilayah, maka semakin tinggi pula prevalensi stunting di wilayah tersebut.

   Secara biologis dan epidemiologis, temuan ini sangat konsisten dengan literatur. Bayi yang lahir dengan berat badan rendah memiliki resiko lebih tinggi mengalami gangguan pertumbuhan linier, karena kondisi tersebut menunjukkan bahwa malnutrisi atau masalah kesehatan sudah terjadi sejak masa kehamilan. BW juga sering menjadi indikator kualitas gizi ibu hamil dan kesehatan pralahir.

   Dengan demikian, peningkatan prevalensi BW di suatu wilayah dapat menjadi faktor kuat yang mendorong meningkatnya kasus stunting.
   
2. Pengaruh Akses Sanitasi Layak (ASL) terhadap Prevalensi Stunting (ST):
   Variabel ASL memiliki koefisien negatif sebesar -0.31686, yang menunjukkan bahwa semakin tinggi presentase rumah tangga dengan akses sanitasi layak, maka semakin rendah prevalensi stunting.

   Akses sanitasi yang buruk berhubungan dengan tingginya resiko penyakit infeksi, terutama diare dan penyakit lingkungan lain yang menyebabkan penurunan penyerapan nutrisi. Akses sanitasi yang lebih baik berkontribusi pada lingkungan hidup yang sehat, mengurangi paparan infeksi, sehingga berdampak positif terhadap pertumbuhan anak.

   Temuan model sejalan dengan studi kesehatan masyarakat yang menyatakan bahwa faktor lingkungan dan sanitasi memiliki peran penting dalam mencegah stunting.

3. Model Regresi yang Terbentuk

   ST = 0.27515 + 1.55303(BW) − 0.31686(ASL)

   Hasil menunjukkan bahwa kedua variabel tersebut signifikan pada tingkat α = 0.05 (p < 0.01). Selain itu, pengujian klasik model (normalitas residual, heteroskedastisitas dan multikolinearitas) semuanya terpenuhi. Tidak ditemukan pelanggaran asumsi, sehingga model dapat dianggap tidak bias, konsisten, dan efisien.
   
4. Kualitas Model
   
   Nilai _Adjusted R-squared_ sebesar 0.3335 menunjukkan bahwa sekitar 33.35% variasi prevalensi stunting antar wilayah dapat dijelaskan oleh variabel BW dan ASL. Pada penelitian sosial-kesehatan, nilai ini tergolong cukup baik, karena stunting adalah fenomena kompleks yang dipengaruhi banyak faktor (gizi, sosial ekonomi, lingkungan, kesehatan ibu, pola asuh, dll). Selain itu, model statistik untuk fenomena multidimensional jarang memiliki _R-Squared_ tinggi, sehingga hal ini tidak menjadi masalah mengingat tujuan penelitian adalah penentuan faktor yang signifikan berhubungan dengan stunting. Dengan demikian, model sudah memadai dan informatif untuk kajian epidemiologi.

---

## 🪄 Tim Penyusun: Kelompok 6

<table>
  <tr align="center">
    <td>
      <img src="https://github.com/USERNAME1.png" width="120px"><br>
      <b>Husnul Amira</b><br>
      M0501251059
    </td>
    <td>
      <img src="https://github.com/USERNAME2.png" width="120px"><br>
      <b>Ain Fitri Basri</b><br>
      M0501251051
    </td>
    <td>
      <img src="https://github.com/USERNAME3.png" width="120px"><br>
      <b>Fatiya Hanifah </b><br>
      M0501251053
    </td>
  </tr>
</table>

---

**Lisensi:** All Rights Reserved • IPB University, 2025

