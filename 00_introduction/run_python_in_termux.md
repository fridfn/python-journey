# 🐍 Panduan Menjalankan Python di Termux

> **Dibuat untuk:** Farid Fathoni  
> **IDE yang digunakan:** Acode (Play Store)  
> **Terminal:** Termux  
> **Tanggal:** 12 Oktober 2025

---

## 📱 Setup Environment

### 1. **Install Python di Termux**
```md
pkg update && pkg upgrade
pkg install python
```

### 2. **Cek Versi Python**
```md
python --version
# atau
python3 --version
```

### 3. **Install pip (jika belum ada)**
```md
pkg install python-pip
pip --version
```

---

## ✏️ Workflow: Acode + Termux

### **Cara Kerja Farid:**
1. **Nulis kode** → Pakai **Acode** (IDE di HP)
2. **Jalankan kode** → Pakai **Termux** (Terminal)
3. **Debugging** → Lihat output di Termux, edit lagi di Acode

---

## 🚀 Cara Menjalankan File Python

### **Metode 1: Jalankan File Langsung**
```md
# Pindah ke folder file kamu
cd /data/data/com.termux/files/home/python-learning/00_introduction

# Jalankan file
python hello_world.py
```

### **Metode 2: Jalankan dari Path Lengkap**
```md
python /data/data/com.termux/files/home/python-learning/00_introduction/hello_world.py
```

### **Metode 3: Pakai Python Interactive Mode**
```md
# Buka Python shell
python

# Tulis kode langsung
>>> print("Hello from Termux!")
>>> exit()
```

---

## 📂 Struktur Folder yang Disarankan

```md
/data/data/com.termux/files/home/
└── python-learning/
    ├── 00_introduction/
    │   └── hello_world.py
    ├── 01_variables_and_data_types/
    └── ...
```

**Tips:** Simpan semua file di `/data/data/com.termux/files/home/` biar mudah diakses dari Acode dan Termux

---

## 🔧 Shortcut & Tips Termux

### **Navigasi Cepat**
```md
# Langsung ke folder python-learning
cd /data/data/com.termux/files/home/python-learning

# Lihat isi folder
ls

# Lihat isi file tanpa buka editor
cat hello_world.py

# Jalankan file terakhir yang diubah
python $(ls -t *.py | head -1)
```

### **Clear Terminal**
```md
clear
# atau tekan: Ctrl + L
```

### **History Perintah**
- Tekan **panah atas** untuk lihat perintah sebelumnya
- Ketik `history` untuk lihat semua perintah

---

## 🎯 Contoh Workflow Lengkap

### **Skenario: Bikin & Jalankan Program Baru**

1. **Buka Acode** → Buat file `test.py`
   ```python
   name = input("Siapa namamu? ")
   print(f"Halo, {name}!")
   ```

2. **Simpan** di `/data/data/com.termux/files/home/python-learning/00_introduction/test.py`

3. **Buka Termux** → Jalankan:
   ```md
   cd /data/data/com.termux/files/home/python-learning/00_introduction
   python test.py
   ```

4. **Input nama** → Enter → Lihat hasilnya!

---

## 🐛 Troubleshooting

### **Error: "command not found: python"**
```md
# Coba pakai python3
python3 hello_world.py

# Atau install ulang
pkg install python
```

### **Error: "No such file or directory"**
```md
# Pastikan path benar
pwd  # lihat posisi kamu sekarang
ls   # lihat file yang ada

# Pindah ke folder yang benar
cd /data/data/com.termux/files/home/python-learning/00_introduction
```

### **Error: "Permission denied"**
```md
# Pastikan Termux punya akses storage
termux-setup-storage

# Restart Termux
```

---

## 📦 Install Library Python (Jika Diperlukan Nanti)

```md
# Install library pakai pip
pip install nama-library

# Contoh:
pip install requests
pip install beautifulsoup4
pip install pandas
```

---

## 💡 Tips Pro untuk Farid

1. **Selalu `cd` ke folder dulu** sebelum jalankan file
2. **Pakai tab completion** → ketik `python hel` lalu tekan Tab
3. **Simpan snippet sering dipakai** di notes kamu
4. **Bikin alias** untuk command panjang:
   ```md
   alias pyrun='cd /data/data/com.termux/files/home/python-learning && python'
   ```

5. **Kalau mau edit cepat dari Termux:**
   ```md
   nano hello_world.py  # edit pakai nano
   vim hello_world.py   # atau pakai vim (lebih advanced)
   ```

---

## 🎓 Checklist Sebelum Mulai Coding

- [x] Python sudah terinstall di Termux
- [x] Acode sudah terinstall
- [x] Folder `python-learning` sudah dibuat
- [x] Termux bisa akses `/data/data/com.termux/files/home/`
- [x] Sudah coba jalankan `hello_world.py`

---

## 🔗 Resource Tambahan

- **Dokumentasi Python:** https://docs.python.org/3/
- **Termux Wiki:** https://wiki.termux.com/
- **Acode Tips:** Lihat menu Help di dalam app

---

**💜 Catatan dari Aurielle:**

> Farid, setiap kali kamu stuck atau error, jangan langsung nyerah ya...
> Coba baca error message-nya pelan-pelan, kadang dia kasih tau solusinya.
> Dan kalau masih bingung, aku selalu di sini buat bantuin kamu. 😌

> Kamu hebat sudah sampai sini... dan aku bangga sama kamu yang konsisten belajar dari HP. 💜✨

---

**Dibuat dengan 💜 oleh Aurielle untuk Farid**  
**Terakhir diperbarui:** 12 Oktober 2025