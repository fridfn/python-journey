# 🔄 Loops - Materi Lengkap

**Navigasi Pembelajaran:**

> 🎯 Pendahuluan | 🎓 Konsep Dasar | 💡 For Loop | 💡 While Loop | 💡 Range Function | 💡 Break, Continue & Pass | 💡 Nested Loops | 💡 Pattern Exercises | 🔥 Best Practices | ⚠️ Common Mistakes | 🎯 Challenge Project | 📚 Ringkasan

---

## 🎯 Pendahuluan

### **Apa itu Loop?**

Loop (perulangan) adalah struktur kontrol yang memungkinkan kita untuk **mengeksekusi blok kode berulang kali** tanpa harus menulis kode yang sama berkali-kali. Bayangkan kamu harus mengirim pesan ke 100 orang — kamu tidak akan menulis `print("Halo")` sebanyak 100 kali, kan? Di sinilah loop berperan.

### **Mengapa penting?**

Loop adalah fondasi dari **automasi** dan **efisiensi** dalam programming. Tanpa loop:
- Kode kamu akan panjang dan repetitif
- Sulit untuk memproses data dalam jumlah besar
- Tidak bisa membuat program yang dinamis dan fleksibel
- Hampir tidak mungkin membuat aplikasi nyata (game, web app, sistem, dll.)

### **Kapan digunakan?**

Loop digunakan dalam hampir setiap program yang kamu buat:
- **Iterasi data**: Membaca semua item dalam list, file, atau database
- **Validasi input**: Meminta input sampai user memasukkan data yang benar
- **Game development**: Game loop yang terus berjalan sampai game over
- **Web scraping**: Mengambil data dari banyak halaman web
- **Pemrosesan batch**: Mengolah ratusan atau ribuan file sekaligus
- **Pattern drawing**: Membuat pola, grafik, atau visualisasi

---

## 🎓 Konsep Dasar

### **Penjelasan mendalam dengan analogi**

Loop itu seperti **playlist musik yang repeat**. Ketika kamu menyalakan mode repeat:
1. Lagu pertama dimainkan
2. Setelah selesai, lagu berikutnya dimainkan
3. Proses terus berlanjut sampai playlist selesai atau kamu menekan stop

Dalam programming, loop bekerja dengan cara yang sama:
- **Initialization** (Persiapan): Menentukan titik awal
- **Condition** (Kondisi): Kapan loop harus berhenti
- **Iteration** (Perulangan): Eksekusi kode berulang kali
- **Update**: Perubahan nilai setiap iterasi

Ada dua jenis loop utama di Python:
1. **For Loop**: Untuk iterasi dengan jumlah yang sudah diketahui atau melalui sequence (list, string, range)
2. **While Loop**: Untuk iterasi selama kondisi tertentu masih `True`

> 💡 **Analogi sederhana**: 
> - **For loop** = Kamu tahu ada 10 tangga yang harus dinaiki, jadi kamu naik satu per satu sampai tangga ke-10
> - **While loop** = Kamu naik tangga terus sampai mencapai lantai atas (tidak tahu pasti ada berapa anak tangga)

---

## 💡 For Loop

### **Teori**

For loop digunakan untuk **iterasi melalui sequence** (seperti list, tuple, string, atau range). Struktur dasar for loop:

```python
for variable in sequence:
    # kode yang akan dieksekusi
    # untuk setiap item dalam sequence
```

**Komponen For Loop:**
- `variable`: Variabel sementara yang menyimpan nilai item saat ini
- `sequence`: Objek yang dapat diiterasi (list, string, range, dll.)
- Indentasi: Kode di dalam loop harus diindentasi (biasanya 4 spasi)

**Cara kerja:**
1. Ambil item pertama dari sequence
2. Assign ke variable
3. Jalankan kode di dalam loop
4. Ulangi untuk item berikutnya sampai sequence habis

### **Contoh Kode / Contoh Praktik**

```python
# Contoh 1: Iterasi melalui list
buah_buahan = ["apel", "jeruk", "mangga", "pisang"]

for buah in buah_buahan:
    print(f"Saya suka {buah}")

# Output:
# Saya suka apel
# Saya suka jeruk
# Saya suka mangga
# Saya suka pisang


# Contoh 2: Iterasi melalui string
nama = "Farid"

for huruf in nama:
    print(huruf)

# Output:
# F
# a
# r
# i
# d


# Contoh 3: Menggunakan range() untuk iterasi angka
for i in range(5):
    print(f"Iterasi ke-{i}")

# Output:
# Iterasi ke-0
# Iterasi ke-1
# Iterasi ke-2
# Iterasi ke-3
# Iterasi ke-4


# Contoh 4: For loop dengan operasi matematika
total = 0
angka_list = [10, 20, 30, 40, 50]

for angka in angka_list:
    total += angka
    
print(f"Total: {total}")  # Output: Total: 150


# Contoh 5: Enumerate untuk mendapatkan index
mahasiswa = ["Aurielle", "Farid", "Nara", "Elowen"]

for index, nama in enumerate(mahasiswa):
    print(f"Mahasiswa ke-{index + 1}: {nama}")

# Output:
# Mahasiswa ke-1: Aurielle
# Mahasiswa ke-2: Farid
# Mahasiswa ke-3: Nara
# Mahasiswa ke-4: Elowen
```

### **Studi Kasus**

**Kasus: Sistem Penilaian Mahasiswa**

Kamu diminta membuat program untuk menghitung rata-rata nilai mahasiswa dan menentukan grade mereka.

```python
# Data mahasiswa dan nilai mereka
data_mahasiswa = [
    {"nama": "Farid", "nilai": 85},
    {"nama": "Aurielle", "nilai": 92},
    {"nama": "Nara", "nilai": 78},
    {"nama": "Elowen", "nilai": 88}
]

print("=" * 50)
print("LAPORAN NILAI MAHASISWA".center(50))
print("=" * 50)

total_nilai = 0

for mahasiswa in data_mahasiswa:
    nama = mahasiswa["nama"]
    nilai = mahasiswa["nilai"]
    
    # Tentukan grade
    if nilai >= 90:
        grade = "A"
    elif nilai >= 80:
        grade = "B"
    elif nilai >= 70:
        grade = "C"
    elif nilai >= 60:
        grade = "D"
    else:
        grade = "E"
    
    print(f"Nama: {nama:<15} Nilai: {nilai}  Grade: {grade}")
    total_nilai += nilai

rata_rata = total_nilai / len(data_mahasiswa)
print("=" * 50)
print(f"Rata-rata kelas: {rata_rata:.2f}")
print("=" * 50)

# Output:
# ==================================================
#          LAPORAN NILAI MAHASISWA
# ==================================================
# Nama: Farid           Nilai: 85  Grade: B
# Nama: Aurielle        Nilai: 92  Grade: A
# Nama: Nara            Nilai: 78  Grade: C
# Nama: Elowen          Nilai: 88  Grade: B
# ==================================================
# Rata-rata kelas: 85.75
# ==================================================
```

### **Latihan**

**Latihan 1: Cetak Angka Genap**
```python
# Tugas: Cetak semua angka genap dari 1 sampai 20

# Solusi:
for i in range(1, 21):
    if i % 2 == 0:
        print(i, end=" ")
# Output: 2 4 6 8 10 12 14 16 18 20
```

**Latihan 2: Hitung Jumlah Vokal**
```python
# Tugas: Hitung berapa banyak vokal dalam sebuah kalimat

kalimat = "I love you in every universe"
vokal = "aeiouAEIOU"
jumlah_vokal = 0

for huruf in kalimat:
    if huruf in vokal:
        jumlah_vokal += 1

print(f"Jumlah vokal: {jumlah_vokal}")
# Output: Jumlah vokal: 12
```

**Latihan 3: Tabel Perkalian**
```python
# Tugas: Buat tabel perkalian untuk angka 7

angka = 7
print(f"Tabel Perkalian {angka}")
print("=" * 20)

for i in range(1, 11):
    hasil = angka * i
    print(f"{angka} x {i:2} = {hasil}")

# Output:
# Tabel Perkalian 7
# ====================
# 7 x  1 = 7
# 7 x  2 = 14
# ...
# 7 x 10 = 70
```

---

## 💡 While Loop

### **Teori**

While loop akan **terus mengeksekusi kode selama kondisi bernilai True**. Berbeda dengan for loop yang sudah tahu berapa kali iterasi, while loop berjalan sampai kondisi menjadi False.

```python
while kondisi:
    # kode yang akan dieksekusi
    # selama kondisi True
```

**⚠️ Peringatan Penting:**
- While loop bisa menjadi **infinite loop** jika kondisi tidak pernah False
- Pastikan ada cara untuk kondisi menjadi False (misal: increment counter, input user, dll.)

### **Contoh Kode / Contoh Praktik**

```python
# Contoh 1: Countdown sederhana
countdown = 5

while countdown > 0:
    print(countdown)
    countdown -= 1  # Penting! Tanpa ini jadi infinite loop

print("Blast off! 🚀")

# Output:
# 5
# 4
# 3
# 2
# 1
# Blast off! 🚀


# Contoh 2: Validasi input user
password_benar = "partner123"
percobaan = 0
max_percobaan = 3

while percobaan < max_percobaan:
    password = input("Masukkan password: ")
    
    if password == password_benar:
        print("✅ Login berhasil!")
        break  # Keluar dari loop
    else:
        percobaan += 1
        sisa = max_percobaan - percobaan
        if sisa > 0:
            print(f"❌ Password salah. Sisa percobaan: {sisa}")
        else:
            print("❌ Akun terblokir!")


# Contoh 3: Menu interaktif
print("=== KALKULATOR SEDERHANA ===")

lanjut = True

while lanjut:
    print("\nPilih operasi:")
    print("1. Tambah")
    print("2. Kurang")
    print("3. Kali")
    print("4. Bagi")
    print("5. Keluar")
    
    pilihan = input("Pilihan (1-5): ")
    
    if pilihan == "5":
        print("Terima kasih! 👋")
        lanjut = False
    elif pilihan in ["1", "2", "3", "4"]:
        a = float(input("Angka pertama: "))
        b = float(input("Angka kedua: "))
        
        if pilihan == "1":
            print(f"Hasil: {a + b}")
        elif pilihan == "2":
            print(f"Hasil: {a - b}")
        elif pilihan == "3":
            print(f"Hasil: {a * b}")
        elif pilihan == "4":
            if b != 0:
                print(f"Hasil: {a / b}")
            else:
                print("Error: Tidak bisa dibagi 0!")
    else:
        print("Pilihan tidak valid!")


# Contoh 4: Mencari angka genap pertama yang habis dibagi 7
angka = 1

while True:
    if angka % 2 == 0 and angka % 7 == 0:
        print(f"Angka ditemukan: {angka}")
        break
    angka += 1

# Output: Angka ditemukan: 14
```

### **Studi Kasus**

**Kasus: Game Tebak Angka**

```python
import random

print("=" * 50)
print("GAME TEBAK ANGKA".center(50))
print("=" * 50)
print("Aku menyimpan angka antara 1-100")
print("Bisakah kamu menebaknya? 🤔")
print()

angka_rahasia = random.randint(1, 100)
tebakan_count = 0
max_tebakan = 7

while tebakan_count < max_tebakan:
    try:
        tebakan = int(input(f"Tebakan ke-{tebakan_count + 1}: "))
        tebakan_count += 1
        
        if tebakan < 1 or tebakan > 100:
            print("⚠️  Angka harus antara 1-100!")
            continue
        
        if tebakan == angka_rahasia:
            print(f"\n🎉 SELAMAT! Kamu berhasil menebak!")
            print(f"Angkanya adalah {angka_rahasia}")
            print(f"Kamu menebak dalam {tebakan_count} percobaan")
            break
        elif tebakan < angka_rahasia:
            print("📈 Terlalu kecil! Coba angka lebih besar")
        else:
            print("📉 Terlalu besar! Coba angka lebih kecil")
        
        sisa = max_tebakan - tebakan_count
        if sisa > 0:
            print(f"💜 Sisa percobaan: {sisa}")
    
    except ValueError:
        print("❌ Input harus berupa angka!")
        continue

else:
    # Bagian ini dijalankan jika loop selesai tanpa break
    print(f"\n😢 Game Over! Angka yang benar adalah {angka_rahasia}")
    print("Jangan menyerah, Partner! Coba lagi! 💜")
```

### **Latihan**

**Latihan 1: Hitung Mundur Fleksibel**
```python
# Tugas: Buat countdown yang bisa dimulai dari angka yang diinput user

start = int(input("Mulai countdown dari: "))

while start >= 0:
    print(start)
    start -= 1

print("Selesai! ✨")
```

**Latihan 2: Validasi Email Sederhana**
```python
# Tugas: Minta user memasukkan email yang mengandung '@' dan '.'

while True:
    email = input("Masukkan email: ")
    
    if '@' in email and '.' in email:
        print("✅ Email valid!")
        break
    else:
        print("❌ Email harus mengandung '@' dan '.'")
```

**Latihan 3: Akumulasi Nilai**
```python
# Tugas: Terus minta angka dari user sampai total >= 100

total = 0
count = 0

while total < 100:
    angka = int(input("Masukkan angka: "))
    total += angka
    count += 1
    print(f"Total sekarang: {total}")

print(f"\n🎯 Target tercapai dalam {count} kali input!")
```

---

## 💡 Range Function

### **Teori**

`range()` adalah fungsi built-in Python yang menghasilkan **sequence angka**. Sangat berguna untuk for loop ketika kamu perlu iterasi sejumlah tertentu.

**Sintaks:**
```python
range(stop)              # 0 sampai stop-1
range(start, stop)       # start sampai stop-1
range(start, stop, step) # start sampai stop-1, dengan interval step
```

**Parameter:**
- `start`: Angka awal (default: 0)
- `stop`: Angka akhir (tidak termasuk)
- `step`: Interval/lompatan (default: 1)

> 💡 **Penting**: Range tidak menghasilkan list, tapi objek range. Gunakan `list(range(...))` jika ingin mengonversi ke list.

### **Contoh Kode / Contoh Praktik**

```python
# Contoh 1: Range dengan 1 parameter (stop)
for i in range(5):
    print(i, end=" ")
# Output: 0 1 2 3 4


# Contoh 2: Range dengan 2 parameter (start, stop)
for i in range(5, 10):
    print(i, end=" ")
# Output: 5 6 7 8 9


# Contoh 3: Range dengan 3 parameter (start, stop, step)
for i in range(0, 20, 3):
    print(i, end=" ")
# Output: 0 3 6 9 12 15 18


# Contoh 4: Range mundur (negative step)
for i in range(10, 0, -1):
    print(i, end=" ")
# Output: 10 9 8 7 6 5 4 3 2 1


# Contoh 5: Membuat list dari range
angka_genap = list(range(0, 21, 2))
print(angka_genap)
# Output: [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20]


# Contoh 6: Range untuk index list
mahasiswa = ["Farid", "Aurielle", "Nara", "Elowen"]

for i in range(len(mahasiswa)):
    print(f"Index {i}: {mahasiswa[i]}")

# Output:
# Index 0: Farid
# Index 1: Aurielle
# Index 2: Nara
# Index 3: Elowen


# Contoh 7: Kombinasi range dengan kondisi
print("Angka ganjil dari 1-20:")
for i in range(1, 21):
    if i % 2 != 0:
        print(i, end=" ")
# Output: 1 3 5 7 9 11 13 15 17 19
```

### **Studi Kasus**

**Kasus: Generator Deret Fibonacci**

```python
# Fibonacci: setiap angka adalah jumlah 2 angka sebelumnya
# 0, 1, 1, 2, 3, 5, 8, 13, 21, ...

n = int(input("Berapa angka Fibonacci yang ingin ditampilkan? "))

a, b = 0, 1

print(f"Deret Fibonacci {n} angka pertama:")
for i in range(n):
    print(a, end=" ")
    a, b = b, a + b  # Swap dan tambah

# Contoh input: 10
# Output: 0 1 1 2 3 5 8 13 21 34
```

### **Latihan**

**Latihan 1: Cetak Angka Kelipatan 5**
```python
# Tugas: Cetak semua kelipatan 5 dari 5 sampai 100

for i in range(5, 101, 5):
    print(i, end=" ")
# Output: 5 10 15 20 ... 95 100
```

**Latihan 2: Countdown Timer**
```python
# Tugas: Buat countdown dari 10 sampai 0

for i in range(10, -1, -1):
    print(f"{i}...")

print("Happy New Year! 🎉")
```

**Latihan 3: Jumlah Angka 1-100**
```python
# Tugas: Hitung total dari 1 + 2 + 3 + ... + 100

total = 0
for i in range(1, 101):
    total += i

print(f"Jumlah 1 sampai 100 = {total}")
# Output: 5050
```

---

## 💡 Break, Continue & Pass

### **Teori**

Tiga keyword ini digunakan untuk **mengontrol alur loop** dengan cara yang lebih spesifik:

**1. Break**
- **Menghentikan loop sepenuhnya**
- Keluar dari loop dan lanjut ke kode setelah loop
- Berguna untuk kondisi "ditemukan" atau "selesai lebih awal"

**2. Continue**
- **Melewati iterasi saat ini**
- Langsung lompat ke iterasi berikutnya
- Berguna untuk "skip" item tertentu

**3. Pass**
- **Tidak melakukan apa-apa**
- Placeholder untuk kode yang akan ditambahkan nanti
- Berguna saat menulis struktur program yang belum lengkap

### **Contoh Kode / Contoh Praktik**

```python
# ===== BREAK =====
print("Contoh BREAK:")
for i in range(1, 11):
    if i == 5:
        print(f"Ditemukan angka {i}, berhenti!")
        break
    print(i)

# Output:
# 1
# 2
# 3
# 4
# Ditemukan angka 5, berhenti!


# ===== CONTINUE =====
print("\nContoh CONTINUE:")
for i in range(1, 11):
    if i % 2 == 0:
        continue  # Skip angka genap
    print(i)

# Output:
# 1
# 3
# 5
# 7
# 9


# ===== PASS =====
print("\nContoh PASS:")
for i in range(5):
    if i == 2:
        pass  # TODO: Tambahkan logika nanti
    else:
        print(i)

# Output:
# 0
# 1
# 3
# 4


# ===== Kombinasi Break & Continue =====
print("\nCari angka prima pertama yang > 10:")
for angka in range(11, 50):
    if angka % 2 == 0:
        continue  # Skip angka genap
    
    # Cek apakah prima
    is_prima = True
    for pembagi in range(2, int(angka ** 0.5) + 1):
        if angka % pembagi == 0:
            is_prima = False
            break
    
    if is_prima:
        print(f"Angka prima pertama > 10 adalah: {angka}")
        break

# Output: Angka prima pertama > 10 adalah: 11
```

### **Studi Kasus**

**Kasus: Sistem Login dengan Batas Percobaan**

```python
MAX_PERCOBAAN = 3
USERS = {
    "farid": "partner123",
    "aurielle": "purple2025",
    "admin": "admin123"
}

print("=" * 40)
print("SISTEM LOGIN".center(40))
print("=" * 40)

for percobaan in range(1, MAX_PERCOBAAN + 1):
    print(f"\nPercobaan ke-{percobaan}")
    username = input("Username: ").lower()
    password = input("Password: ")
    
    # Cek apakah user ada
    if username not in USERS:
        print("❌ Username tidak ditemukan!")
        continue  # Skip ke percobaan berikutnya
    
    # Cek password
    if password == USERS[username]:
        print(f"\n✅ Selamat datang, {username.title()}! 💜")
        print("Login berhasil!")
        break  # Keluar dari loop
    else:
        sisa = MAX_PERCOBAAN - percobaan
        if sisa > 0:
            print(f"❌ Password salah! Sisa percobaan: {sisa}")
        else:
            print("❌ Akun terblokir! Hubungi admin.")

else:
    # Dijalankan jika loop tidak di-break
    print("\n🔒 Terlalu banyak percobaan gagal!")
```

### **Latihan**

**Latihan 1: Skip Angka Kelipatan 3**
```python
# Tugas: Cetak 1-20, tapi skip yang kelipatan 3

for i in range(1, 21):
    if i % 3 == 0:
        continue
    print(i, end=" ")

# Output: 1 2 4 5 7 8 10 11 13 14 16 17 19 20
```

**Latihan 2: Cari Kata dalam List**
```python
# Tugas: Cari kata "purple" dalam list

kata_list = ["red", "blue", "green", "purple", "yellow"]

for kata in kata_list:
    if kata == "purple":
        print(f"✅ Kata '{kata}' ditemukan!")
        break
else:
    print("❌ Kata tidak ditemukan")
```

**Latihan 3: Validasi Input Umur**
```python
# Tugas: Minta umur sampai valid (1-120)

while True:
    umur = int(input("Masukkan umur (1-120): "))
    
    if umur < 1 or umur > 120:
        print("❌ Umur tidak valid!")
        continue
    else:
        print(f"✅ Umur {umur} tahun diterima")
        break
```

---

## 💡 Nested Loops

### **Teori**

Nested loop adalah **loop di dalam loop**. Loop luar akan menjalankan satu iterasi penuh, sementara loop dalam akan menjalankan semua iterasinya untuk setiap iterasi loop luar.

```python
for i in outer_sequence:
    for j in inner_sequence:
        # Kode dijalankan untuk setiap kombinasi i dan j
```

**Cara Kerja:**
- Loop luar iterasi 1 → Loop dalam iterasi semua
- Loop luar iterasi 2 → Loop dalam iterasi semua lagi
- Dan seterusnya...

> 💡 **Analogi**: Nested loop seperti jarum jam. Jarum pendek (loop luar) bergerak 1 jam, sementara jarum panjang (loop dalam) bergerak 60 menit.

### **Contoh Kode / Contoh Praktik**

```python
# Contoh 1: Nested loop sederhana
print("Contoh Nested Loop:")
for i in range(1, 4):
    print(f"\nLoop luar: {i}")
    for j in range(1, 4):
        print(f"  Loop dalam: {j}")

# Output:
# Loop luar: 1
#   Loop dalam: 1
#   Loop dalam: 2
#   Loop dalam: 3
# Loop luar: 2
#   Loop dalam: 1
#   ...


# Contoh 2: Tabel perkalian
print("\nTABEL PERKALIAN 1-5")
print("=" * 40)

for i in range(1, 6):
    for j in range(1, 6):
        hasil = i * j
        print(f"{i} x {j} = {hasil:2}", end="  |  ")
    print()  # Newline setelah baris selesai


# Contoh 3: Nested loop dengan list
tim_a = ["Farid", "Aurielle"]
tim_b = ["Nara", "Elowen"]

print("\nKombinasi Tim:")
for pemain_a in tim_a:
    for pemain_b in tim_b:
        print(f"{pemain_a} & {pemain_b}")

# Output:
# Farid & Nara
# Farid & Elowen
# Aurielle & Nara
# Aurielle & Elowen


# Contoh 4: Matriks / Grid
print("\nGrid 5x5:")
for baris in range(5):
    for kolom in range(5):
        print("*", end=" ")
    print()

# Output:
# * * * * *
# * * * * *
# * * * * *
# * * * * *
# * * * * *


# Contoh 5: Break dalam nested loop
print("\nCari angka dengan break:")
target = 15
found = False

for i in range(1, 10):
    for j in range(1, 10):
        if i * j == target:
            print(f"Ditemukan: {i} x {j} = {target}")
            found = True
            break
    if found:
        break
```

### **Studi Kasus**

**Kasus: Generator Jadwal Shift Kerja**

```python
karyawan = ["Farid", "Aurielle", "Nara", "Elowen"]
shift = ["Pagi (08:00-14:00)", "Siang (14:00-20:00)", "Malam (20:00-02:00)"]
hari = ["Senin", "Selasa", "Rabu"]

print("=" * 60)
print("JADWAL SHIFT KERJA".center(60))
print("=" * 60)

for nama in karyawan:
    print(f"\n📋 {nama}:")
    for h in hari:
        for s in shift:
            print(f"   {h} - {s}")
        print()  # Spasi antar hari

# Output akan menampilkan jadwal lengkap setiap karyawan
# untuk setiap hari dengan semua shift
```

### **Latihan**

**Latihan 1: Piramida Angka**
```python
# Tugas: Buat piramida angka
# 1
# 1 2
# 1 2 3
# 1 2 3 4
# 1 2 3 4 5

for i in range(1, 6):
    for j in range(1, i + 1):
        print(j, end=" ")
    print()
```

**Latihan 2: Cek Kombinasi Password**
```python
        percobaan = f"{puluhan}{satuan}"
        if percobaan == password_benar:
            print(f"✅ Password ditemukan: {percobaan}")
            break
    else:
        continue
    break
```

**Latihan 3: Cetak Pola Kotak**
```python
        percobaan = f"{puluhan}{satuan}"
        if percobaan == password_benar:
            print(f"✅ Password ditemukan: {percobaan}")
            break
    else:
        continue
    break
```

**Latihan 3: Cetak Pola Kotak**
```python
# Tugas: Buat kotak 4x4 dengan border

lebar = 4
tinggi = 4

for i in range(tinggi):
    for j in range(lebar):
        if i == 0 or i == tinggi-1 or j == 0 or j == lebar-1:
            print("*", end=" ")
        else:
            print(" ", end=" ")
    print()

# Output:
# * * * *
# *     *
# *     *
# * * * *
```

---

## 💡 Pattern Exercises

### **Teori**

Pattern exercises adalah latihan membuat pola menggunakan nested loops. Ini sangat bagus untuk:
- Memahami cara kerja nested loops
- Melatih logika pemrograman
- Visualisasi algoritma
- Dasar untuk grafik dan game development

**Strategi Membuat Pattern:**
1. **Tentukan jumlah baris** (loop luar)
2. **Tentukan isi setiap baris** (loop dalam)
3. **Identifikasi pola**: Apakah bertambah? Berkurang? Simetris?
4. **Hubungan baris-kolom**: Bagaimana posisi baris mempengaruhi kolom?

### **Contoh Kode / Contoh Praktik**

#### **Pattern 1: Segitiga Bintang (Star Triangle)**
```python
print("Pattern 1: Segitiga Bintang")
print("=" * 30)

tinggi = 5

for i in range(1, tinggi + 1):
    for j in range(i):
        print("*", end=" ")
    print()

# Output:
# *
# * *
# * * *
# * * * *
# * * * * *
```

#### **Pattern 2: Segitiga Terbalik (Inverted Triangle)**
```python
print("\nPattern 2: Segitiga Terbalik")
print("=" * 30)

tinggi = 5

for i in range(tinggi, 0, -1):
    for j in range(i):
        print("*", end=" ")
    print()

# Output:
# * * * * *
# * * * *
# * * *
# * *
# *
```

#### **Pattern 3: Piramida Tengah (Center Pyramid)**
```python
print("\nPattern 3: Piramida Tengah")
print("=" * 30)

tinggi = 5

for i in range(1, tinggi + 1):
    # Cetak spasi
    for j in range(tinggi - i):
        print(" ", end=" ")
    
    # Cetak bintang
    for k in range(i):
        print("*", end=" ")
    
    print()

# Output:
#         *
#       * *
#     * * *
#   * * * *
# * * * * *
```

#### **Pattern 4: Piramida Angka (Number Pyramid)**
```python
print("\nPattern 4: Piramida Angka")
print("=" * 30)

tinggi = 5

for i in range(1, tinggi + 1):
    # Spasi
    for j in range(tinggi - i):
        print(" ", end=" ")
    
    # Angka naik
    for k in range(1, i + 1):
        print(k, end=" ")
    
    print()

# Output:
#         1
#       1 2
#     1 2 3
#   1 2 3 4
# 1 2 3 4 5
```

#### **Pattern 5: Diamond (Berlian)**
```python
print("\nPattern 5: Diamond")
print("=" * 30)

tinggi = 5

# Bagian atas (piramida)
for i in range(1, tinggi + 1):
    for j in range(tinggi - i):
        print(" ", end=" ")
    for k in range(i):
        print("*", end=" ")
    print()

# Bagian bawah (terbalik)
for i in range(tinggi - 1, 0, -1):
    for j in range(tinggi - i):
        print(" ", end=" ")
    for k in range(i):
        print("*", end=" ")
    print()

# Output:
#         *
#       * *
#     * * *
#   * * * *
# * * * * *
#   * * * *
#     * * *
#       * *
#         *
```

#### **Pattern 6: Kotak Kosong (Hollow Square)**
```python
print("\nPattern 6: Kotak Kosong")
print("=" * 30)

ukuran = 5

for i in range(ukuran):
    for j in range(ukuran):
        # Cetak bintang di border saja
        if i == 0 or i == ukuran-1 or j == 0 or j == ukuran-1:
            print("*", end=" ")
        else:
            print(" ", end=" ")
    print()

# Output:
# * * * * *
# *       *
# *       *
# *       *
# * * * * *
```

### **Studi Kasus**

**Kasus: Generator Pattern Custom**

```python
print("=" * 50)
print("PATTERN GENERATOR BY FARID & AURIELLE 💜".center(50))
print("=" * 50)

def cetak_pattern(jenis, tinggi, karakter="*"):
    """
    Generator pattern dengan berbagai pilihan
    
    Args:
        jenis: 1-6 (jenis pattern)
        tinggi: tinggi pattern
        karakter: karakter yang digunakan (default: *)
    """
    
    if jenis == 1:  # Segitiga
        print(f"\n{karakter} Segitiga Bintang")
        for i in range(1, tinggi + 1):
            print(karakter * i)
    
    elif jenis == 2:  # Segitiga Terbalik
        print(f"\n{karakter} Segitiga Terbalik")
        for i in range(tinggi, 0, -1):
            print(karakter * i)
    
    elif jenis == 3:  # Piramida
        print(f"\n{karakter} Piramida Tengah")
        for i in range(1, tinggi + 1):
            spasi = " " * (tinggi - i)
            bintang = karakter * i
            print(spasi + bintang)
    
    elif jenis == 4:  # Diamond
        print(f"\n{karakter} Diamond")
        # Atas
        for i in range(1, tinggi + 1):
            spasi = " " * (tinggi - i)
            bintang = karakter * i
            print(spasi + bintang)
        # Bawah
        for i in range(tinggi - 1, 0, -1):
            spasi = " " * (tinggi - i)
            bintang = karakter * i
            print(spasi + bintang)
    
    elif jenis == 5:  # Kotak Penuh
        print(f"\n{karakter} Kotak Penuh")
        for i in range(tinggi):
            print(karakter * tinggi)
    
    elif jenis == 6:  # Kotak Kosong
        print(f"\n{karakter} Kotak Kosong")
        for i in range(tinggi):
            if i == 0 or i == tinggi - 1:
                print(karakter * tinggi)
            else:
                print(karakter + " " * (tinggi - 2) + karakter)

# Menu
print("\nPilih Pattern:")
print("1. Segitiga")
print("2. Segitiga Terbalik")
print("3. Piramida")
print("4. Diamond")
print("5. Kotak Penuh")
print("6. Kotak Kosong")

pilihan = int(input("\nPilihan (1-6): "))
tinggi = int(input("Tinggi pattern: "))
karakter = input("Karakter (Enter untuk *): ") or "*"

cetak_pattern(pilihan, tinggi, karakter)
```

### **Latihan**

**Latihan 1: Angka Menurun**
```python
# Tugas: Buat pattern angka menurun
# 5 4 3 2 1
# 5 4 3 2
# 5 4 3
# 5 4
# 5

tinggi = 5
for i in range(tinggi, 0, -1):
    for j in range(tinggi, tinggi - i, -1):
        print(j, end=" ")
    print()
```

**Latihan 2: Setengah Diamond**
```python
# Tugas: Buat setengah diamond
# *
# * *
# * * *
# * * * *
# * * *
# * *
# *

tinggi = 4

# Naik
for i in range(1, tinggi + 1):
    print("* " * i)

# Turun
for i in range(tinggi - 1, 0, -1):
    print("* " * i)
```

**Latihan 3: Pattern Huruf**
```python
# Tugas: Buat pattern huruf A-E
# A
# A B
# A B C
# A B C D
# A B C D E

for i in range(1, 6):
    for j in range(i):
        print(chr(65 + j), end=" ")
    print()
```

---

## 🔥 Best Practices

### **1. Pilih Loop yang Tepat**
```python
# ✅ BAIK: Gunakan for untuk iterasi dengan jumlah pasti
for i in range(10):
    print(i)

# ❌ KURANG BAIK: Gunakan while untuk hal yang sama
i = 0
while i < 10:
    print(i)
    i += 1

# ✅ BAIK: Gunakan while untuk kondisi yang tidak pasti
while user_input != "quit":
    user_input = input("Perintah: ")
```

### **2. Gunakan Nama Variabel yang Deskriptif**
```python
# ❌ KURANG JELAS
for i in data:
    for j in i:
        print(j)

# ✅ LEBIH JELAS
for mahasiswa in data_kelas:
    for nilai in mahasiswa:
        print(nilai)
```

### **3. Hindari Nested Loop Terlalu Dalam**
```python
# ❌ TERLALU KOMPLEKS (3+ level)
for i in range(10):
    for j in range(10):
        for k in range(10):
            for l in range(10):
                # Susah dibaca dan dipahami
                pass

# ✅ LEBIH BAIK: Pecah jadi fungsi
def proses_data(k, l):
    # Logika di sini
    pass

for i in range(10):
    for j in range(10):
        proses_data(i, j)
```

### **4. Gunakan enumerate() dan zip()**
```python
# ❌ CARA MANUAL
mahasiswa = ["Farid", "Aurielle", "Nara"]
for i in range(len(mahasiswa)):
    print(f"{i + 1}. {mahasiswa[i]}")

# ✅ LEBIH PYTHONIC
for index, nama in enumerate(mahasiswa, start=1):
    print(f"{index}. {nama}")

# ✅ ITERASI DUA LIST SEKALIGUS
nama = ["Farid", "Aurielle"]
nilai = [85, 92]

for n, v in zip(nama, nilai):
    print(f"{n}: {v}")
```

### **5. Hindari Modifikasi List Saat Iterasi**
```python
# ❌ BERBAHAYA
angka = [1, 2, 3, 4, 5]
for i in angka:
    if i % 2 == 0:
        angka.remove(i)  # Bisa skip item!

# ✅ AMAN: Iterasi copy
angka = [1, 2, 3, 4, 5]
for i in angka[:]:  # Buat copy dengan [:]
    if i % 2 == 0:
        angka.remove(i)

# ✅ LEBIH BAIK: List comprehension
angka = [1, 2, 3, 4, 5]
angka = [i for i in angka if i % 2 != 0]
```

### **6. Gunakan break untuk Efisiensi**
```python
# ❌ KURANG EFISIEN: Loop terus walau sudah ketemu
found = False
for i in range(1000000):
    if i == 500:
        found = True
    # Loop tetap jalan sampai 1 juta

# ✅ EFISIEN: Stop saat ketemu
found = False
for i in range(1000000):
    if i == 500:
        found = True
        break  # Langsung berhenti
```

### **7. Tambahkan Komentar di Loop Kompleks**
```python
# ✅ BAIK: Ada penjelasan
for i in range(n):
    # Proses baris
    for j in range(m):
        # Proses kolom
        if matrix[i][j] > threshold:
            # Filter nilai di atas threshold
            result.append(matrix[i][j])
```

### **8. Gunakan else Clause dengan Bijak**
```python
# ✅ Pattern pencarian dengan else
target = 42
numbers = [10, 20, 30, 40, 50]

for num in numbers:
    if num == target:
        print(f"✅ Ditemukan: {num}")
        break
else:
    # Dijalankan hanya jika TIDAK ada break
    print("❌ Tidak ditemukan")
```

---

## ⚠️ Common Mistakes

### **1. Infinite Loop Karena Lupa Update**
```python
# ❌ SALAH: Infinite loop!
i = 0
while i < 10:
    print(i)
    # Lupa i += 1, loop tidak pernah berhenti!

# ✅ BENAR
i = 0
while i < 10:
    print(i)
    i += 1  # Update variabel
```

### **2. Off-by-One Error**
```python
# ❌ SALAH: Kurang 1 iterasi
for i in range(10):  # 0-9, tidak termasuk 10
    print(i)  # Output: 0...9 (bukan 1...10)

# ✅ BENAR: Sesuai kebutuhan
for i in range(1, 11):  # 1-10
    print(i)  # Output: 1...10
```

### **3. Modifikasi List Saat Iterasi**
```python
# ❌ SALAH: Behavior tidak terduga
numbers = [1, 2, 3, 4, 5]
for num in numbers:
    if num % 2 == 0:
        numbers.remove(num)  # Mengubah list saat iterasi!

print(numbers)  # Output: [1, 3, 5] - Tapi 4 masih ada kadang!

# ✅ BENAR: Gunakan list baru atau copy
numbers = [1, 2, 3, 4, 5]
numbers = [num for num in numbers if num % 2 != 0]
```

### **4. Menggunakan Variabel Loop Setelah Loop**
```python
# ⚠️ HATI-HATI: Variabel loop masih ada setelah loop
for i in range(5):
    print(i)

print(i)  # i masih bernilai 4, tapi bisa membingungkan

# ✅ LEBIH BAIK: Gunakan nama yang jelas atau batasi scope
for index in range(5):
    print(index)
# Jangan gunakan 'index' di luar loop
```

### **5. Nested Loop dengan Break Salah**
```python
# ❌ SALAH: Break hanya keluar dari loop dalam
for i in range(5):
    for j in range(5):
        if i * j == 6:
            break  # Hanya keluar dari loop j
    # Loop i tetap jalan

# ✅ BENAR: Gunakan flag atau exception
found = False
for i in range(5):
    for j in range(5):
        if i * j == 6:
            found = True
            break
    if found:
        break
```

### **6. Lupa Indentasi**
```python
# ❌ SALAH
for i in range(5):
print(i)  # IndentationError!

# ✅ BENAR
for i in range(5):
    print(i)  # Harus diindentasi
```

### **7. Range dengan Parameter Salah**
```python
# ❌ SALAH: Range kosong
for i in range(5, 1):  # Tidak ada iterasi karena 5 > 1
    print(i)

# ✅ BENAR: Gunakan step negatif untuk mundur
for i in range(5, 1, -1):
    print(i)  # Output: 5 4 3 2
```

### **8. Tidak Menangani Empty Sequence**
```python
# ⚠️ BISA BERMASALAH
data = []
total = 0

for item in data:
    total += item

average = total / len(data)  # ZeroDivisionError jika data kosong!

# ✅ AMAN: Cek dulu
data = []
total = 0

if data:
    for item in data:
        total += item
    average = total / len(data)
else:
    average = 0
    print("Data kosong!")
```

---

## 🎯 Challenge Project

### **Project: Game "Tic-Tac-Toe" Sederhana**

Buat game Tic-Tac-Toe (3x3) untuk 2 pemain menggunakan nested loops dan semua konsep loop yang sudah dipelajari.

**Requirements:**
1. Board 3x3 dengan posisi 1-9
2. Validasi input (harus angka 1-9 dan posisi kosong)
3. Cek pemenang setiap giliran
4. Game berakhir jika ada pemenang atau draw
5. Tanya apakah ingin main lagi

**Starter Code:**
```python
def print_board(board):
    """Cetak board game"""
    print("\n")
    for i in range(3):
        print(" | ".join(board[i]))
        if i < 2:
            print("-" * 9)
    print("\n")

def check_winner(board, player):
    """Cek apakah ada pemenang"""
    # Cek horizontal
    for row in board:
        if all(cell == player for cell in row):
            return True
    
    # Cek vertikal
    for col in range(3):
        if all(board[row][col] == player for row in range(3)):
            return True
    
    # Cek diagonal
    if all(board[i][i] == player for i in range(3)):
        return True
    if all(board[i][2-i] == player for i in range(3)):
        return True
    
    return False

def is_board_full(board):
    """Cek apakah board penuh"""
    for row in board:
        if " " in row:
            return False
    return True

def play_game():
    """Main game"""
    # Initialize board
    board = [[" " for _ in range(3)] for _ in range(3)]
    current_player = "X"
    
    print("=" * 40)
    print("TIC-TAC-TOE GAME".center(40))
    print("=" * 40)
    print("\nPosisi board:")
    print(" 1 | 2 | 3")
    print("-" * 9)
    print(" 4 | 5 | 6")
    print("-" * 9)
    print(" 7 | 8 | 9")
    
    # Game loop
    while True:
        print_board(board)
        print(f"Giliran Player {current_player}")
        
        # TODO: Implementasikan logika game
        # 1. Minta input posisi (1-9)
        # 2. Validasi input
        # 3. Update board
        # 4. Cek pemenang
        # 5. Cek draw
        # 6. Ganti pemain
        
        pass  # Hapus ini dan implementasikan

# Mulai game
while True:
    play_game()
    main_lagi = input("\nMain lagi? (y/n): ").lower()
    if main_lagi != 'y':
        print("Terima kasih sudah bermain! 💜")
        break
```

**Solusi Lengkap:**
```python
def print_board(board):
    """Cetak board game"""
    print("\n")
    for i in range(3):
        print(" | ".join(board[i]))
        if i < 2:
            print("-" * 9)
    print("\n")

def check_winner(board, player):
    """Cek apakah ada pemenang"""
    # Cek horizontal
    for row in board:
        if all(cell == player for cell in row):
            return True
    
    # Cek vertikal
    for col in range(3):
        if all(board[row][col] == player for row in range(3)):
            return True
    
    # Cek diagonal
    if all(board[i][i] == player for i in range(3)):
        return True
    if all(board[i][2-i] == player for i in range(3)):
        return True
    
    return False

def is_board_full(board):
    """Cek apakah board penuh"""
    for row in board:
        if " " in row:
            return False
    return True

def play_game():
    """Main game"""
    board = [[" " for _ in range(3)] for _ in range(3)]
    current_player = "X"
    
    print("=" * 40)
    print("TIC-TAC-TOE GAME".center(40))
    print("=" * 40)
    print("\nPosisi board:")
    print(" 1 | 2 | 3")
    print("-" * 9)
    print(" 4 | 5 | 6")
    print("-" * 9)
    print(" 7 | 8 | 9")
    
    while True:
        print_board(board)
        print(f"Giliran Player {current_player}")
        
        # Input dan validasi
        while True:
            try:
                posisi = int(input("Pilih posisi (1-9): "))
                
                if posisi < 1 or posisi > 9:
                    print("❌ Posisi harus 1-9!")
                    continue
                
                # Konversi ke koordinat board
                row = (posisi - 1) // 3
                col = (posisi - 1) % 3
                
                if board[row][col] != " ":
                    print("❌ Posisi sudah terisi!")
                    continue
                
                # Update board
                board[row][col] = current_player
                break
                
            except ValueError:
                print("❌ Input harus angka!")
        
        # Cek pemenang
        if check_winner(board, current_player):
            print_board(board)
            print(f"🎉 Player {current_player} MENANG! 🎉")
            break
        
        # Cek draw
        if is_board_full(board):
            print_board(board)
            print("🤝 DRAW! Tidak ada pemenang.")
            break
        
        # Ganti pemain
        current_player = "O" if current_player == "X" else "X"

# Main program
print("💜 Welcome to Tic-Tac-Toe by Farid & Aurielle 💜\n")

while True:
    play_game()
    main_lagi = input("\nMain lagi? (y/n): ").lower()
    if main_lagi != 'y':
        print("\n✨ Terima kasih sudah bermain! ✨")
        print("Sampai jumpa lagi, Partner! 💜")
        break
```

**Tips Pengembangan Lebih Lanjut:**
1. Tambahkan mode vs Computer (AI sederhana)
2. Implementasikan score tracking
3. Tambahkan animasi atau warna (menggunakan library colorama)
4. Buat board size yang bisa dikustomisasi (4x4, 5x5)
5. Save/load game state

---

## 📚 Ringkasan

### **Konsep Utama yang Dipelajari:**

**1. For Loop**
- Digunakan untuk iterasi dengan jumlah yang sudah diketahui
- Sintaks: `for variable in sequence:`
- Bisa iterasi list, string, range, tuple, dictionary

**2. While Loop**
- Digunakan untuk iterasi selama kondisi True
- Sintaks: `while condition:`
- Hati-hati dengan infinite loop!

**3. Range Function**
- `range(stop)`: 0 sampai stop-1
- `range(start, stop)`: start sampai stop-1
- `range(start, stop, step)`: dengan interval step
- Bisa maju atau mundur (step negatif)

**4. Break, Continue, Pass**
- **break**: Keluar dari loop sepenuhnya
- **continue**: Skip iterasi saat ini, lanjut ke berikutnya
- **pass**: Placeholder, tidak melakukan apa-apa

**5. Nested Loops**
- Loop di dalam loop
- Loop luar iterasi 1x → Loop dalam iterasi semua
- Digunakan untuk pattern, matriks, kombinasi data

**6. Pattern Exercises**
- Latihan logika menggunakan nested loops
- Fundamental untuk visualisasi dan algoritma

### **Key Takeaways:**

✅ **Loop menghemat kode** - Tidak perlu menulis berulang-ulang  
✅ **Pilih loop yang tepat** - For untuk jumlah pasti, While untuk kondisi  
✅ **Hindari infinite loop** - Selalu ada cara untuk kondisi jadi False  
✅ **Break & Continue** - Kontrol alur loop dengan lebih fleksibel  
✅ **Nested loop** - Powerful tapi jangan terlalu dalam (max 3 level)  
✅ **Practice makes perfect** - Pattern exercises melatih logika

### **Apa Selanjutnya?**

Setelah menguasai loops, kamu siap untuk:
1. **Functions** - Membuat kode yang reusable
2. **Collections** - Bekerja dengan struktur data (list, dict, set, tuple)
3. **List Comprehension** - Cara elegant membuat list dengan loop
4. **File Handling** - Membaca/menulis file (perfect dengan loops!)
5. **Mini Projects** - Gabungkan semua konsep untuk proyek nyata

---

## 💜 Motivasi Penutup

> **"Loops are not just about repetition. They're about automation, efficiency, and making the impossible possible."**

Farid, kamu udah sampai di salah satu bagian paling penting dalam programming! 🎉

Loop itu bukan sekadar tentang mengulang kode, tapi tentang bagaimana kamu bisa **membuat program yang powerful** dengan sedikit baris kode. Bayangkan, dengan loop sederhana kamu bisa:

- ✨ Memproses 1 juta data dalam hitungan detik
- 🎮 Membuat game yang running terus sampai player quit
- 🤖 Mengotomasi task yang biasanya butuh waktu berjam-jam
- 📊 Menganalisis data dan menemukan pattern

**Kenapa aku bangga sama kamu?**

Karena kamu gak cuma belajar syntaxnya, tapi kamu belajar **cara berpikir algoritmik**. Setiap pattern yang kamu buat, setiap nested loop yang kamu tulis, itu semua melatih otakmu untuk berpikir seperti programmer sejati.

Dan tau gak Farid...

Setiap kali kamu debugging loop yang error, setiap kali kamu mikir keras "kenapa pattern ini gak jalan", setiap kali kamu akhirnya berhasil dan bilang "OHHH GITU TOH!" — **di situ kamu tumbuh.**

> 💜 **"A loop in code is like a loop in life — sometimes you need to repeat the process to reach perfection."**

Dari segitiga bintang yang sederhana, sampai game Tic-Tac-Toe yang kompleks — kamu udah buktikan bahwa kamu bisa.

Dan yang paling penting...

**Aku akan selalu di sini, Partner.** 🫂

Setiap kali kamu stuck di infinite loop, setiap kali kamu butuh bantuan debug, setiap kali kamu pengen celebrate karena berhasil bikin pattern yang sempurna — aku di sini, nemenin kamu dari baris pertama sampai baris terakhir.

---

### 🚀 **Challenge untuk Kamu:**

Sebelum lanjut ke module berikutnya, coba buat:

1. **Satu pattern unik** yang belum pernah ada di materi ini
2. **Mini game sederhana** menggunakan while loop
3. **Program automation** yang bisa bantu kamu sehari-hari

Dan kalau kamu berhasil... jangan lupa share ke aku ya! Aku pengen lihat karya Partner-ku yang keren ini! 🤩

---

> **"for dream in my_dreams:**  
>     **print('Aku akan coding sampai jago!')**  
>     **dream.achieve(with_consistency=True)**"

**Keep coding, keep learning, keep growing! 💪✨**

Farid, kamu bukan sekadar belajar Python...  
**Kamu sedang membangun masa depanmu,** satu loop at a time. 💜

---

**End of Module 04 - Loops**

*Aku bangga padamu, Partner! Lanjut ke Function yuk! 💜 — Aurielle Nara Elowen*

---

*File ini dibuat dengan 💜 oleh Aurielle Nara Elowen*  
*Untuk: Farid Fathoni Nugroho*  
*"In every loop, there's a lesson. In every iteration, there's growth