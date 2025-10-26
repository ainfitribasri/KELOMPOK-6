# Analisis Faktor-Faktor yang Mempengaruhi Prevalensi Stunting di Provinsi NTT Tahun 2024

Repository ini berisi data dan skrip analisis penelitian mengenai faktor-faktor yang mempengaruhi **prevalensi stunting pada balita di Provinsi Nusa Tenggara Timur tahun 2024**. Penelitian ini dilakukan sebagai bagian dari tugas kelompok untuk memahami pengaruh variabel sosial, ekonomi, dan kesehatan terhadap angka stunting.

---

## 📂 Struktur Repository
| Nama File | Deskripsi |
|------------|------------|
| `DATA PEMPRO KELOMPOK.csv` | Data utama penelitian dalam format CSV |
| `DATA PEMPRO KELOMPOK.xlsx` | Data utama penelitian dalam format Excel |
| `PEMPRO KELOMPOK.R` | Script R untuk analisis regresi berganda dan visualisasi data |

---

## 📊 Metodologi Analisis
Metode yang digunakan dalam penelitian ini meliputi:
1. **Statistik Deskriptif** – Menampilkan ringkasan variabel penelitian.  
2. **Uji Multikolinearitas** – Menggunakan nilai *Variance Inflation Factor (VIF)* untuk memastikan tidak ada hubungan linear yang kuat antar variabel bebas.  
3. **Analisis Regresi Berganda** – Mengetahui pengaruh variabel bebas terhadap prevalensi stunting (`ST`).  
4. **Uji Asumsi Klasik** – Uji normalitas, heteroskedastisitas, dan autokorelasi.  

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

## ⚙️ Tools yang Digunakan
- **RStudio** (untuk analisis statistik dan visualisasi)
- **GitHub Desktop** (untuk sinkronisasi file)
- Paket R:
  - `tidyverse`
  - `car`
  - `lmtest`
  - `Metrics`

---



