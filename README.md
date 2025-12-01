<p align="center">
  <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/canva%20stunting%20(1).jpg" width="800"/>
</p>

# Analisis Faktor-Faktor yang Mempengaruhi Prevalensi Stunting di Provinsi NTT Tahun 2024

Repository ini berisi data dan skrip analisis penelitian mengenai faktor-faktor yang mempengaruhi **prevalensi stunting pada balita di Provinsi Nusa Tenggara Timur tahun 2024**. Penelitian ini dilakukan sebagai bagian dari tugas kelompok untuk memahami pengaruh variabel sosial, ekonomi, dan kesehatan terhadap angka stunting.

---

## 📋 Latar Belakang

Kesehatan dan pertumbuhan anak merupakan indikator utama dari keberhasilan pembangunan sosial dan ekonomi suatu bangsa. Di Indonesia, prevalensi stunting masih menunjukkan angka yang cukup tinggi meskipun telah mengalami penurunan dalam satu dekade terakhir. Prevalensi stunting sendiri juga menjadi sebuah indikator kegagalan tumbuh kembang anak akibat kekurangan gizi kronis dan menjadi masalah serius yang dapat merusak potensi generasi muda dan menimbulkan kerugian jangka panjang. Menghadapi kompleksitas masalah ini, upaya penanggulangan yang efektif tidak dapat dilakukan tanpa pemahaman mendalam mengenai faktor-faktor dominan yang paling berpengaruh terhadap tingginya angka stunting di tingkat regional. Stunting didefinisikan oleh [_World Health Organization_ (WHO)](https://www.who.int/tools/child-growth-standards/standards) sebagai:

> *"Gangguan pertumbuhan dan perkembangan pada anak bayi dan balita yang ditandai dengan tinggi badannya berada di bawah standar atau pendek berdasarkan tinggi badan menurut usia yang kurang dari -2 standar deviasi (SD) pada kurva pertumbuhan yang dimiliki WHO"*

<p align="center">
  <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/Maps%20Stunting%20Indonesia%202024.jpg" width="700"/>
  <br>
  <b>Gambar 1. Persebaran Stunting di Indonesia</b>
</p>

Secara nasional, hasil [Survei Status Gizi Indonesia (SSGI) tahun 2024](https://www.badankebijakan.kemkes.go.id/survei-status-gizi-indonesia-ssgi-2024/) mencatat bahwa prevalensi stunting telah turun menjadi 19,8%. Namun, tantangan terbesar terletak pada disparitas regional. Misalnya pada Provinsi Nusa Tenggara Timur (NTT), yang mencatat prevalensi stunting tertinggi ke-2 di Indonesia setelah Papua Pegunungan, yakni sebesar 37,6%. Angka yang jauh melampaui rata-rata nasional ini menunjukkan adanya disparitas regional yang harus segera diatasi. 

Untuk mengatasi tingginya beban stunting kronis di NTT, diperlukan pemahaman yang jelas mengenai variabel sosial, ekonomi, dan kesehatan mana yang paling dominan dalam memicu kasus stunting di wilayah tersebut. Oleh karena itu, penelitian ini diinisiasi untuk menyediakan landasan ilmiah berbasis data, yang berfokus pada analisis faktor-faktor penyebab, guna mendukung perumusan kebijakan yang lebih terarah dan efisien. Tujuan utama penelitian ini adalah untuk mengidentifikasi faktor-faktor (variabel sosial, ekonomi, dan kesehatan) yang secara signifikan memengaruhi prevalensi stunting pada balita di Provinsi NTT tahun 2024, serta menguji seberapa besar pengaruh masing-masing faktor yang teridentifikasi tersebut terhadap prevalensi stunting menggunakan model regresi berganda. Dengan demikian, hasil analisis ini diharapkan dapat memberikan rekomendasi kebijakan yang evidence-based dan mampu mengarahkan intervensi secara tepat sasaran demi percepatan penurunan stunting di wilayah NTT.

---

## 🎯 Tujuan Penelitian
1. Mengidentifikasi faktor-faktor yang memengaruhi prevalensi stunting.  
2. Menguji seberapa besar pengaruh masing-masing faktor menggunakan model regresi berganda.
   
---

## 📊 Metodologi Analisis
Metode yang digunakan dalam penelitian ini meliputi:
1. **Seleksi Variabel** – Seleksi variabel digunakan untuk memilih variabel terbaik yang benar-benar penting, relevan, dan berkontribusi signifikan dalam sebuah model suatu regresi.
2. **Uji Multikolinearitas** – Menggunakan nilai *Variance Inflation Factor (VIF)* untuk memastikan tidak ada hubungan linear yang kuat antar variabel bebas.  
3. **Analisis Regresi Berganda** – Mengetahui pengaruh variabel bebas terhadap prevalensi stunting (`ST`).  
4. **Uji Asumsi Klasik** – Uji normalitas, heteroskedastisitas, dan multikolinearitas.  

---

## 🧾 Sumber Data

<table>
  <tr align="center">
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
| Kode | Keterangan | Sumber | 
|------|------------|--------|
| ST | Prevalensi Stunting (%) | [Badan Pusat Statistik NTT (2024)](https://ntt.bps.go.id/id/statistics-table/2/MTQ4OSMy/jumlah-balita-stunting-menurut-kabupaten-kota.html)| 
| PM | Persentase Penduduk Miskin (%) | [Badan Pusat Statistik NTT (2024)](https://ntt.bps.go.id/id/statistics-table/2/NTg0IzI=/persentase-penduduk-miskin-menurut-kabupaten-kota.html) |  
| BW | Berat Badan Lahir Rendah (%) | [Badan Pusat Statistik NTT (2024)](https://ntt.bps.go.id/id/statistics-table/2/MTU3MiMy/jumlah-dan-persentase-balita-wasting-menurut-kabupaten-kota.html) |  
| ASL | Angka Sumber Air Layak (%) | [Badan Pusat Statistik NTT (2024)](https://ntt.bps.go.id/id/statistics-table/2/MTUyNyMy/persentase-rumah-tangga-dengan-akses-sanitasi-layak.html) |  
| AML | Angka Makan Layak (%) | [Badan Pusat Statistik NTT (2024)](https://ntt.bps.go.id/id/statistics-table/2/MTc5MiMy/persentase-rumah-tangga-dengan-akses-air-minum-layak.html) |  
| LS | Lama Sekolah (tahun) | [Badan Pusat Statistik NTT (2024)](https://ntt.bps.go.id/id/statistics-table/2/MTQ1OCMy/rata-rata-lamanya-sekolah-menurut-jenis-kelamin.html) |  
| ASI | Persentase Bayi Mendapat ASI Eksklusif (%) | [Badan Pusat Statistik NTT (2024)](https://ntt.bps.go.id/id/statistics-table/2/NjE0IzI=/persentase-penduduk-umur-0-23-bulan-baduta-yang-pernah-diberi-asi-menurut-kabupaten-kota.html) |  

---
## 📉 Hasil Penelitian
### 🔍 seleksi variabel (Variabel Selection)
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
  <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/stunting.png" width="500"/>
  <br>
  <b>Gambar 2. Persebaran stunting di Nusa Tenggara Timur</b>
</p>

<p align="center">
  <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/balita%20wasting.png" width="500"/>
  <br>
  <b>Gambar 3. Persebaran Balita Wasting di Nusa Tenggara Timur</b>
</p>

<p align="center">
  <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/SANITASI%20LAYAK%20BENER.png" width="500"/>
  <br>
  <b>Gambar 4. Persebaran Rumah Tangga dengan Akses Sanitasi Layak di Nusa Tenggara Timur</b>
</p>

### 🔢 Hasil Analisis Regresi Berganda
Model regresi berganda yang terbentuk adalah sebagai berikut:

$$
ST = 0.27515 + 1.55303(BW) - 0.31686(ASL) 
$$

| Variabel | Koefisien | P-Value | Interpretasi |
|-----------|----------|---------|--------------|
| BW | +1.553 | 0.005 | Setiap kenaikan 1% balita wasting meningkatkan prevalensi stunting sebesar 1.553% |
| ASL | -0.317 | 0.009 | Setiap kenaikan 1% akses sanitasi layak menurunkan prevalensi stunting sebesar 0.317% |

#### Uji Kelayakan Model

| F-Statistic | P-Value |
|-------------|---------|
| 6,253 | 0,00819 |

  Secara simultan, model regresi yang terbentuk memberikan hasil signifikan, dengan nilai _p-value_ 0.00819 < 0.05. Hal ini menunjukkan bahwa variabel BW dan ASL secara bersama-sama memiliki pengaruh yang signifikan terhadap prevalensi stunting. Dengan demikian, model akhir layak digunakan untuk menjelaskan variasi stunting antar wilayah.

#### Goodness of Fit

| R-Squared | Adj. R-Squared |
|-------------|---------|
| 0,3969 | 0,3335 |
  
  Model memberikan nilai R-squared sebesar 0.3969 dan Adjusted R-squared sebesar 0.3335, yang berarti bahwa 33.35% variasi prevalensi stunting dapat dijelaskan oleh variabel BW dan ASL.
  
  Selain itu, model akhir memiliki AIC yang lebih rendah dibandingkan model awal, sehingga dapat disimpulkan bahwa model akhir lebih efisien dan mampu memberikan penjelasan yang baik tanpa menambah kompleksitas yang tidak perlu.
  
#### Uji Asumsi Klasik
1. Uji Normalitas:

| W | P-Value |
|---------|---------|
| 0,9411 | 0,2084 |

   Uji Shapiro-Wilk terhadap residual menghasilkan _p-value_ sebesar 0.2084. Karena _p-value_ > 0.05, residual dapat dianggap berdistribusi normal. Hal ini juga diperkuat oleh tampilan QQ-plot, dimana titik-titik residual mengikuti garis diagonal.
   <p align="center">
  <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/QQ-Plot.png" width="50%"/>
</p>
2. Uji Heteroskedastisitas:

| Breusch-Pagan Test | P-Value |
|--------------------|---------|
| 4,2378 | 0,1202 |

   Berdasarkan _Breusch-Pagan Test_(BP), diperoleh nilai _p-value_ 0.1202. Karena nilai _p-value_ > 0.05, maka tidak terdapat indikasi heteroskedastisitas dalam model. Plot _residual vs fitted_ juga menunjukkan pola penyebaran yang acak, semakin menguatkan kesimpulan tersebut.
   <p align="center">
  <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/Residual vs Fitted Plot.png" width="50%"/>
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

$$
ST = 0.27515 + 1.55303(BW) - 0.31686(ASL) 
$$
  

   Hasil menunjukkan bahwa kedua variabel tersebut signifikan pada tingkat α = 0.05 (p < 0.01). Selain itu, pengujian klasik model (normalitas residual, heteroskedastisitas dan multikolinearitas) semuanya terpenuhi. Tidak ditemukan pelanggaran asumsi, sehingga model dapat dianggap tidak bias, konsisten, dan efisien.
   
4. Kualitas Model
   
   Nilai _Adjusted R-squared_ sebesar 0.3335 menunjukkan bahwa sekitar 33.35% variasi prevalensi stunting antar wilayah dapat dijelaskan oleh variabel BW dan ASL. Pada penelitian sosial-kesehatan, nilai ini tergolong cukup baik, karena stunting adalah fenomena kompleks yang dipengaruhi banyak faktor (gizi, sosial ekonomi, lingkungan, kesehatan ibu, pola asuh, dll). Selain itu, model statistik untuk fenomena multidimensional jarang memiliki _R-Squared_ tinggi, sehingga hal ini tidak menjadi masalah mengingat tujuan penelitian adalah penentuan faktor yang signifikan berhubungan dengan stunting. Dengan demikian, model sudah memadai dan informatif untuk kajian epidemiologi.

---

## Kesimpulan

Berdasarkan hasil analisis, kondisi stunting di Provinsi Nusa Tenggara Timur (NTT) pada tahun 2024 menunjukkan variasi yang tinggi antarwilayah, dengan beberapa kabupaten memiliki prevalensi yang jauh lebih besar. Analisis faktor-faktor yang memengaruhi stunting menunjukkan bahwa dari enam variabel yang diuji, hanya dua faktor yang memberikan pengaruh signifikan dan konsisten terhadap prevalensi stunting (ST), yaitu Berat Badan Lahir Rendah / Balita Wasting (BW) dan Akses Sanitasi Layak (ASL). Model regresi terbaik yang diperoleh (ST = 0,27515 + 1,55303(BW) – 0,31686(ASL)) secara jelas mengindikasikan bahwa peningkatan proporsi balita wasting secara signifikan berasosiasi dengan peningkatan prevalensi stunting, sedangkan peningkatan akses sanitasi layak berhubungan dengan penurunan prevalensi stunting. Dengan nilai Adjusted R-squared sebesar 0,3335, model ini dianggap layak dan stabil, menyediakan gambaran informatif mengenai dua faktor utama yang mendorong sepertiga variasi stunting antarwilayah di NTT.

---

## Manfaat

Penelitian analisis faktor-faktor yang memengaruhi prevalensi stunting pada balita di Provinsi Nusa Tenggara Timur tahun 2024 ini diharapkan dapat memberikan kontribusi signifikan, baik secara praktis maupun akademis, sebagai berikut:

### 1. Manfaat Praktis Bagi Pemerintah
Secara praktis, penelitian ini memberikan kontribusi langsung bagi Pemerintah Daerah sebagai pengambil kebijakan. Hasil analisis dapat dijadikan dasar prioritas intervensi karena menyediakan bukti empiris mengenai dua faktor determinan utama stunting di NTT (Berat Badan Lahir Rendah/Wasting dan Akses Sanitasi Layak). Dengan demikian, penelitian ini membantu dalam efisiensi alokasi sumber daya dan anggaran agar dapat difokuskan secara tepat sasaran. Selain itu, temuan ini sangat berguna untuk pemetaan wilayah risiko tinggi, sehingga program intervensi dapat lebih terarah di tingkat kabupaten/kota yang memiliki beban stunting kronis paling tinggi.

### 2. Manfaat Akademis untuk Pengembangan Ilmu Pengetahuan
Dari sisi akademis, penelitian ini memberikan kontribusi penting dalam penguatan kajian epidemiologi dengan memperkaya studi mengenai faktor risiko multidimensi stunting, khususnya di wilayah Indonesia Timur. Penelitian ini juga menyediakan model analisis data yaitu persamaan model regresi yang teruji yang dapat dijadikan rujukan bagi studi lanjutan atau pengembangan model prediksi risiko stunting di masa mendatang. Akhirnya, hasil penelitian ini menegaskan akurasi variabel kunci, yaitu pentingnya faktor gizi awal kehidupan dan faktor lingkungan/sanitasi, yang harus selalu diperhitungkan dalam perumusan model kebijakan.

---

## 🪄 _The Designer_: Kelompok 6 💅

<table>
  <tr align="center">
    <td>
      <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/Latar%20Putih_Husnul%20Amira%20(1)%20(2).jpg" width="120px"><br>
      <b>Husnul Amira</b><br>
      M0501251059
    </td>
    <td>
      <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/2025-11-24-16-14-12-817.jpg" width="120px"><br>
      <b>Fatiya Hanifah</b><br>
      M0501251053
    </td>
    <td>
      <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/ain.png" width="120px"><br>
      <b>Ain Fitri Basri</b><br>
      M0501251051
    </td>
  </tr>
</table>
<table>
  <tr align="center">
    <td>
      <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/10.gif" width="170px"><br>
    </td>
    <td>
      <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/11.gif" width="170px"><br>
    </td>
    <td>
      <img src="https://github.com/ainfitribasri/KELOMPOK-6/blob/main/Foto/9.gif" width="170px"><br>
    </td>
  </tr>
</table>

---
> ✨ *“Anak sehat hari ini, generasi tangguh masa depan.”*
---

**Lisensi:** All Rights Reserved • IPB University, 2025

