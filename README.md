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
4. Memberikan saran kebijakan untuk menurunkan angka stunting di NTT.

---

## 📊 Metodologi Analisis
Metode yang digunakan dalam penelitian ini meliputi:
1. **Statistik Deskriptif** – Menampilkan ringkasan variabel penelitian.
2. **Seleksi Variabel** – Seleksi variabel digunakan untuk memilih variabel terbaik yang benar-benar penting, relevan, dan berkontribusi signifikan dalam sebuah model suatu regresi.
3. **Uji Multikolinearitas** – Menggunakan nilai *Variance Inflation Factor (VIF)* untuk memastikan tidak ada hubungan linear yang kuat antar variabel bebas.  
4. **Analisis Regresi Berganda** – Mengetahui pengaruh variabel bebas terhadap prevalensi stunting (`ST`).  
5. **Uji Asumsi Klasik** – Uji normalitas, heteroskedastisitas, dan autokorelasi.  

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
### Statistik Deskriptif

### seleksi variabel (Variabel Selection)
#### 1. Uji Signifikansi Parsial
#### 2. Uji Signifikansi Simultan
#### 3. Stepwise Regression
### Model Regresi Akhir
  Berdasarkan prosedur _backward stepwise regression_ yang meminimalkan nilai AIC, diperoleh dua variabel prediktor yang paling relevan untuk menjelaskan variabel stunting (ST), yaitu Berat Badan Lahir Rendah (BW) dan Anak Sakit dalam 1 Bulan Terakhir (ASL).
  Model akhir yang diperoleh adalah:
  ST = 0.27515 + 1.55303(BW) − 0.31686(ASL)
  Kedua variabel tersebut signifikan pada α = 5% (p < 0.01), sehingga BW dan ASL memiliki kontribusi bermakna dalam menjelaskan perbedaan prevalensi stunting antar wilayah di provinsi NTT.
### Uji Kelayakan Model
  Secara simultan, model memberikan hasil signifikan, dimana nilai F hitungnya sebesar 6.253 dan p-value sebesar 0.00819. Artinya, BW dan ASL secara bersama-sama berpengaruh signifikan terhadap stunting.
### Goodness of Fit
  Berdasarkan model, didapatkan nilai R-squared sebesar 0.3969 dan Adjusted R-squared sebesar 0.3335. Hal ini menunjukkan bahwa 33.35% variasi stunting antar wilayah dapat dijelaskan oleh variabel BW dan ASL. Nilai ini cukup baik untuk konteks data sosial-kesehatan yang umumnya memiliki variabilitas tinggi karena dipengaruhi oleh berbagai faktor kompleks yang tidak seluruhnya tercakup dalam model.
  Model akhir ini juga memiliki AIC lebih rendah dibandingkan model awal, sehingga dianggap lebih efisien tanpa mengurangi kualitas model secara signifikan
### Uji Asumsi Klasik
1. Uji Normalitas:
   Berdasarkan uji Shapiro-Wilk residual didapatkan nilai W sebesar 0.9411 dan p-value sebesar 0.2084. Karena nilai p-value > 0.05, maka residual dianggap berdistribusi normal. Kesimpulan ini juga didukung oleh QQ-plot.
2. Uji Heteroskedastisitas:
   Breusch-Pagan Test digunakan untuk uji heteroskedastisitas, dimana nilai BP didapatkan sebesar 4.2378 dan p-value sebesar 0.1202 > 0.05. Oleh karena, dapat disimpulkan tidak ada indikasi heteroskedastisitas pada model. Plot residual vs fitted juga menunjukkan penyebaran acak.
3. Uji Multikolinearitas:
   Uji multikolinearitas dilakukan dengan VIF, dimana variabel BW dan ASL memiliki nilai VIF sebesar 1.28. Karena nilai VIF berada dibawah 10, maka hal ini menandakan tidak terdapat multikolinearitas pada model.
### Pembahasan
  Hasil menunjukkan bahwa dua variabel utama, yakni Berat Badan Lahir Rendah (BW) dan Anak Sakit dalam 1 Bulan Terakhir (ASL) memiliki hubungan signifikan terhadap prevalensi stunting.
1. Berat Badan Lahir Rendah (BW):
   Berat Badan Lahir Rendah memiliki hubungan signifikan terhadap prevalensi stunting dengan nilai koefisien sebesar 1.55. Artinya wilayah dengan proporsi berat badan lahir rendah yang lebih tinggi cenderung memiliki prevalensi stunting lebih tinggi juga. Hal ini sejalan dengan literatur yang menyatakan bahwa gizi buruk sejak lahir berdampak pada pertumbuhan linier anak.
2. Anak Sakit dalam 1 Bulan Terakhir (ASL):
   Anak Sakit dalam 1 Bulan Terakhir juga memiliki hubungan signifikan terhadap prevalensi stunting dengan nilai koefisien sebesar -0.32. Hubungan negatif tersebut mencerminkan wilayah dengan pelaporan penyakit lebih baik seringkali juga memiliki akses layanan kesehatan lebih baik, sehingga dapat berdampak pada pencegahan stunting.

  Model regresi yang terbentuk memenuhi seluruh asumsi klasik sehingga estimasi koefisien dapat dianggap tidak bias, konsisten, dan efisien. Nilai _goodness of fit_ yang relatif kecil mencerminkan bahwa faktor stunting bersifat multidimensional, sehingga hal ini tidak menjadi masalah mengingat tujuan penelitian adalah menganalisis faktor-faktor yang berhubungan dengan stunting.

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

