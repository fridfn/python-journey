# 📦 Modules dan Packages - Materi Lengkap

**[Navigasi Materi]**

> 📌 Pendahuluan | 🎓 Konsep Dasar | 💡 Import Basics | 💡 Standard Library | 💡 Custom Modules | 💡 Package Structure | 🔥 Best Practices | ⚠️ Common Mistakes | 🎯 Challenge Project | 📚 Ringkasan

---

## 📌 Pendahuluan

### **Apa itu Modules dan Packages?**

**Module** adalah file Python (`.py`) yang berisi kumpulan fungsi, class, dan variabel yang bisa digunakan kembali di program lain. Bayangkan module seperti "kotak peralatan" yang berisi tools-tools siap pakai.

**Package** adalah folder yang berisi beberapa module yang saling berhubungan, ditandai dengan file `__init__.py`. Seperti "lemari peralatan" yang punya banyak kotak di dalamnya.

### **Mengapa penting?**

1. **Reusability** - Kode yang sudah dibuat bisa dipakai berkali-kali tanpa copy-paste
2. **Organization** - Proyek besar jadi lebih rapi dan terstruktur
3. **Collaboration** - Tim bisa kerja di file berbeda tanpa bentrok
4. **Maintenance** - Lebih mudah update atau fix bug karena kode tersegmentasi
5. **Save Time** - Ribuan library siap pakai tinggal import!

### **Kapan digunakan?**

- Saat kode kamu mulai panjang (>200 baris) dan perlu dipecah
- Ketika ada fungsi yang sering dipakai di banyak file
- Saat kerja dalam tim dengan pembagian tugas jelas
- Ketika butuh fitur khusus (math, datetime, requests, dll)
- Saat bikin project profesional dengan struktur bersih

---

## 🎓 Konsep Dasar

### **Penjelasan mendalam dengan analogi**

Bayangkan kamu punya **toko bangunan** (project Python kamu):

1. **Module** = Rak khusus (misalnya rak cat, rak paku, rak alat listrik)
   - Setiap rak punya barang-barang yang sejenis dan saling berhubungan
   - File Python dengan ekstensi `.py`

2. **Package** = Gudang dengan banyak rak
   - Folder yang berisi beberapa module
   - Punya file `__init__.py` sebagai "pintu masuk" gudang

3. **Import** = Mengambil barang dari rak
   - Kamu gak perlu bawa semua isi toko, cukup ambil yang kamu butuhkan
   - `import module_name` atau `from module import function_name`

4. **Standard Library** = Toko bangunan yang udah jadi satu paket dengan rumah kamu
   - Udah terinstal otomatis waktu install Python
   - Contoh: `math`, `random`, `datetime`, `os`, `sys`

5. **Third-Party Package** = Toko bangunan lain yang harus kamu datangi (install)
   - Harus install dulu pakai `pip install nama_package`
   - Contoh: `requests`, `numpy`, `pandas`, `flask`

**Struktur hierarki:**
```md
Python Project (Toko)
├── Module 1 (Rak Cat)
├── Module 2 (Rak Paku)
└── Package (Gudang Khusus)
    ├── __init__.py (Pintu Gudang)
    ├── Sub-Module 1
    └── Sub-Module 2
```

---

## 💡 Import Basics

### Teori

Import adalah cara mengambil kode dari module lain untuk dipakai di file kamu. Ada beberapa cara import:

1. **Import seluruh module**
   ```python
   import module_name
   ```

2. **Import dengan alias**
   ```python
   import module_name as alias
   ```

3. **Import fungsi/class tertentu**
   ```python
   from module_name import function_name
   ```

4. **Import semua (tidak disarankan)**
   ```python
   from module_name import *
   ```

### Contoh Kode

```python
# 1. Import seluruh module
import math
print(math.pi)  # 3.141592653589793
print(math.sqrt(16))  # 4.0

# 2. Import dengan alias (lebih singkat)
import datetime as dt
now = dt.datetime.now()
print(now)

# 3. Import fungsi tertentu (lebih efisien)
from random import randint, choice
angka_acak = randint(1, 10)
pilihan = choice(['python', 'java', 'javascript'])

# 4. Import semua (HINDARI! bisa konflik nama)
from math import *
print(sqrt(25))  # 5.0 - tapi gak jelas dari mana asalnya
```

### Studi Kasus

**Kasus:** Membuat program kalkulator sederhana dengan import

```python
import math

def kalkulator_ilmiah():
    print("=== Kalkulator Ilmiah ===")
    print("1. Akar kuadrat")
    print("2. Pangkat")
    print("3. Sin/Cos/Tan")
    print("4. Logaritma")
    
    pilihan = input("Pilih operasi (1-4): ")
    
    if pilihan == "1":
        angka = float(input("Masukkan angka: "))
        hasil = math.sqrt(angka)
        print(f"√{angka} = {hasil}")
    
    elif pilihan == "2":
        angka = float(input("Masukkan angka: "))
        pangkat = float(input("Masukkan pangkat: "))
        hasil = math.pow(angka, pangkat)
        print(f"{angka}^{pangkat} = {hasil}")
    
    elif pilihan == "3":
        sudut = float(input("Masukkan sudut (derajat): "))
        radian = math.radians(sudut)
        print(f"Sin({sudut}°) = {math.sin(radian):.4f}")
        print(f"Cos({sudut}°) = {math.cos(radian):.4f}")
        print(f"Tan({sudut}°) = {math.tan(radian):.4f}")
    
    elif pilihan == "4":
        angka = float(input("Masukkan angka: "))
        basis = input("Basis (enter untuk e, atau masukkan angka): ")
        if basis == "":
            hasil = math.log(angka)
            print(f"ln({angka}) = {hasil}")
        else:
            hasil = math.log(angka, float(basis))
            print(f"log_{basis}({angka}) = {hasil}")

kalkulator_ilmiah()
```

### Latihan

**Latihan 1: Import Dasar**
```python
# Lengkapi kode berikut dengan import yang tepat:

# 1. Import module random
# ??? import ???

# 2. Import fungsi randint dari random dengan alias
# ??? ??? random import randint ??? ri

# 3. Buat program lempar dadu (1-6)
dadu = ???  # gunakan fungsi yang sudah di-import
print(f"Dadu menunjukkan: {dadu}")

# Jawaban:
import random
from random import randint as ri
dadu = ri(1, 6)
```

---

## 💡 Standard Library (Built-in Modules)

### Teori

Python punya **lebih dari 200 module built-in** yang siap pakai tanpa install apapun. Ini adalah "harta karun" yang sering dilupakan pemula. Beberapa yang paling sering dipakai:

| Module | Fungsi Utama |
|--------|--------------|
| `math` | Operasi matematika lanjutan |
| `random` | Generate angka/pilihan acak |
| `datetime` | Manipulasi tanggal dan waktu |
| `os` | Interaksi dengan sistem operasi |
| `sys` | Parameter dan fungsi sistem Python |
| `json` | Parsing dan membuat JSON |
| `re` | Regular expression (pattern matching) |

### Contoh Kode - math & random

```python
import math
import random

# === MODULE MATH ===
print("=== MATH MODULE ===")

# Konstanta
print(f"Pi: {math.pi}")
print(f"Euler: {math.e}")

# Fungsi umum
print(f"Akar 144: {math.sqrt(144)}")
print(f"2^10: {math.pow(2, 10)}")
print(f"10!: {math.factorial(10)}")

# Pembulatan
print(f"Ceil 3.2: {math.ceil(3.2)}")   # 4
print(f"Floor 3.8: {math.floor(3.8)}")  # 3

# Trigonometri
sudut_45 = math.radians(45)
print(f"Sin 45°: {math.sin(sudut_45):.4f}")

# === MODULE RANDOM ===
print("\n=== RANDOM MODULE ===")

# Integer acak
print(f"Angka 1-100: {random.randint(1, 100)}")

# Float acak (0.0 - 1.0)
print(f"Float acak: {random.random():.4f}")

# Pilih dari list
makanan = ['nasi goreng', 'mie ayam', 'soto', 'bakso']
print(f"Menu hari ini: {random.choice(makanan)}")

# Shuffle list
kartu = ['A', 'K', 'Q', 'J', '10']
random.shuffle(kartu)
print(f"Kartu setelah dikocok: {kartu}")

# Ambil beberapa elemen acak
print(f"3 angka acak: {random.sample(range(1, 50), 3)}")
```

### Contoh Kode - datetime & os

```python
import datetime
import os

# === MODULE DATETIME ===
print("=== DATETIME MODULE ===")

# Waktu sekarang
sekarang = datetime.datetime.now()
print(f"Sekarang: {sekarang}")
print(f"Hari: {sekarang.strftime('%A')}")
print(f"Tanggal: {sekarang.strftime('%d-%m-%Y')}")
print(f"Jam: {sekarang.strftime('%H:%M:%S')}")

# Buat tanggal tertentu
lahir = datetime.date(2006, 11, 7)
print(f"\nTanggal lahir: {lahir}")

# Hitung umur
hari_ini = datetime.date.today()
umur = hari_ini.year - lahir.year
print(f"Umur: {umur} tahun")

# Manipulasi waktu
besok = hari_ini + datetime.timedelta(days=1)
minggu_depan = hari_ini + datetime.timedelta(weeks=1)
print(f"Besok: {besok}")
print(f"Minggu depan: {minggu_depan}")

# === MODULE OS ===
print("\n=== OS MODULE ===")

# Informasi sistem
print(f"Nama OS: {os.name}")
print(f"Current directory: {os.getcwd()}")

# List file di folder
print(f"\nFile di folder ini:")
for file in os.listdir('.'):
    print(f"  - {file}")

# Cek file/folder exist
if os.path.exists('notes.md'):
    print("\nFile notes.md ditemukan!")
    print(f"Ukuran: {os.path.getsize('notes.md')} bytes")

# Membuat folder (hati-hati, ini action!)
# os.makedirs('test_folder', exist_ok=True)
```

### Studi Kasus - Program Absensi Otomatis

```python
import datetime
import random

def sistem_absensi():
    """
    Sistem absensi sederhana dengan validasi waktu
    """
    # Data dummy mahasiswa
    mahasiswa = {
        '001': 'Farid Fathoni',
        '002': 'Budi Santoso',
        '003': 'Siti Nurhaliza'
    }
    
    # Waktu sekarang
    sekarang = datetime.datetime.now()
    jam = sekarang.hour
    menit = sekarang.minute
    
    print("=" * 40)
    print("    SISTEM ABSENSI MAHASISWA")
    print("=" * 40)
    print(f"Tanggal: {sekarang.strftime('%d-%m-%Y')}")
    print(f"Waktu : {sekarang.strftime('%H:%M:%S')}")
    print("=" * 40)
    
    # Input NIM
    nim = input("\nMasukkan NIM: ")
    
    if nim not in mahasiswa:
        print("❌ NIM tidak terdaftar!")
        return
    
    nama = mahasiswa[nim]
    
    # Validasi waktu (kelas mulai jam 08:00)
    waktu_kelas = datetime.time(8, 0)
    waktu_terlambat = datetime.time(8, 15)
    waktu_sekarang = sekarang.time()
    
    if waktu_sekarang <= waktu_kelas:
        status = "✅ HADIR (Tepat Waktu)"
    elif waktu_sekarang <= waktu_terlambat:
        status = "⚠️ TERLAMBAT"
    else:
        status = "❌ TIDAK HADIR (Terlalu terlambat)"
    
    # Simpan log
    print(f"\n{status}")
    print(f"Nama : {nama}")
    print(f"NIM  : {nim}")
    print(f"Absen: {sekarang.strftime('%H:%M:%S')}")

# Jalankan
sistem_absensi()
```

### Latihan

**Latihan 1: Kalkulator Umur Presisi**
```python
import datetime

# Buat program yang menghitung umur detail:
# - Input: tanggal lahir (format: DD-MM-YYYY)
# - Output: X tahun, Y bulan, Z hari

tanggal_lahir = input("Masukkan tanggal lahir (DD-MM-YYYY): ")

# Tips: gunakan datetime.strptime() untuk parsing string
# Contoh: datetime.datetime.strptime('07-11-2006', '%d-%m-%Y')

# [Kerjakan di sini]
```

**Latihan 2: Generator Password Acak**
```python
import random
import string

# Buat fungsi yang generate password dengan kriteria:
# - Panjang bisa ditentukan user
# - Minimal 1 huruf besar
# - Minimal 1 angka
# - Minimal 1 simbol (!@#$%^&*)

def generate_password(panjang=12):
    # [Kerjakan di sini]
    pass

# Test
print(generate_password(16))
```

---

## 💡 Custom Modules (Membuat Module Sendiri)

### Teori

Custom module adalah file Python yang kamu buat sendiri untuk menyimpan fungsi-fungsi yang sering dipakai. Ini adalah **level-up** dari sekadar nulis script biasa.

**Cara kerja:**
1. Buat file `.py` dengan nama module (misal `kalkulator.py`)
2. Isi dengan fungsi-fungsi atau class yang ingin disimpan
3. Import di file lain dengan `import nama_module`

**Keuntungan:**
- Kode lebih DRY (Don't Repeat Yourself)
- Mudah di-maintain
- Bisa dibagikan ke project lain
- Profesional dan scalable

### Contoh Kode

**File: `matematika.py` (Module kustom)**
```python
"""
Module matematika sederhana
Berisi fungsi-fungsi matematika dasar
"""

def tambah(a, b):
    """Menjumlahkan dua angka"""
    return a + b

def kurang(a, b):
    """Mengurangi dua angka"""
    return a - b

def kali(a, b):
    """Mengalikan dua angka"""
    return a * b

def bagi(a, b):
    """Membagi dua angka"""
    if b == 0:
        return "Error: Tidak bisa dibagi 0"
    return a / b

def pangkat(angka, eksponen):
    """Menghitung pangkat"""
    return angka ** eksponen

def akar(angka):
    """Menghitung akar kuadrat"""
    if angka < 0:
        return "Error: Tidak bisa akar negatif"
    return angka ** 0.5

# Variabel yang bisa diakses
PI = 3.14159
E = 2.71828

# Test (hanya jalan kalau file ini dijalankan langsung)
if __name__ == "__main__":
    print("Testing module matematika...")
    print(f"5 + 3 = {tambah(5, 3)}")
    print(f"10 - 4 = {kurang(10, 4)}")
    print(f"7 * 6 = {kali(7, 6)}")
    print(f"20 / 4 = {bagi(20, 4)}")
    print(f"2^8 = {pangkat(2, 8)}")
    print(f"√64 = {akar(64)}")
```

**File: `main.py` (File utama yang pakai module)**
```python
# Import module custom kita
import matematika

# Atau import fungsi tertentu
from matematika import tambah, PI

print("=== Kalkulator dengan Module ===")

# Cara 1: Pakai import matematika
hasil1 = matematika.tambah(10, 5)
hasil2 = matematika.kali(4, 7)
print(f"10 + 5 = {hasil1}")
print(f"4 × 7 = {hasil2}")

# Cara 2: Pakai from import
hasil3 = tambah(100, 50)
print(f"100 + 50 = {hasil3}")

# Akses variabel dari module
print(f"Nilai PI: {PI}")
print(f"Nilai E: {matematika.E}")

# Buat kalkulator interaktif
def kalkulator():
    print("\nKalkulator Interaktif")
    print("Operasi: +, -, *, /, ^, √")
    
    operasi = input("Pilih operasi: ")
    
    if operasi == "√":
        angka = float(input("Masukkan angka: "))
        print(f"Hasil: {matematika.akar(angka)}")
    else:
        angka1 = float(input("Angka 1: "))
        angka2 = float(input("Angka 2: "))
        
        if operasi == "+":
            print(f"Hasil: {matematika.tambah(angka1, angka2)}")
        elif operasi == "-":
            print(f"Hasil: {matematika.kurang(angka1, angka2)}")
        elif operasi == "*":
            print(f"Hasil: {matematika.kali(angka1, angka2)}")
        elif operasi == "/":
            print(f"Hasil: {matematika.bagi(angka1, angka2)}")
        elif operasi == "^":
            print(f"Hasil: {matematika.pangkat(angka1, angka2)}")

kalkulator()
```

### Studi Kasus - Utility Module untuk Project

**File: `utils.py`**
```python
"""
Module utility untuk project
Berisi fungsi-fungsi helper yang sering dipakai
"""

import datetime
import os

def log(pesan, level="INFO"):
    """
    Menulis log dengan timestamp
    
    Args:
        pesan: Pesan yang ingin di-log
        level: Level log (INFO, WARNING, ERROR)
    """
    waktu = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    print(f"[{waktu}] [{level}] {pesan}")

def validasi_email(email):
    """
    Validasi format email sederhana
    
    Returns:
        bool: True jika valid, False jika tidak
    """
    if '@' in email and '.' in email:
        return True
    return False

def validasi_nomor_hp(nomor):
    """
    Validasi nomor HP Indonesia
    
    Returns:
        bool: True jika valid (08xx atau 628xx)
    """
    nomor = nomor.replace(' ', '').replace('-', '')
    if nomor.startswith('08') or nomor.startswith('628'):
        if len(nomor) >= 10 and len(nomor) <= 13:
            return True
    return False

def buat_folder(nama_folder):
    """
    Membuat folder jika belum ada
    """
    if not os.path.exists(nama_folder):
        os.makedirs(nama_folder)
        log(f"Folder '{nama_folder}' berhasil dibuat")
    else:
        log(f"Folder '{nama_folder}' sudah ada", "WARNING")

def format_rupiah(angka):
    """
    Format angka menjadi format Rupiah
    
    Example:
        >>> format_rupiah(1000000)
        'Rp 1.000.000'
    """
    angka_str = f"{int(angka):,}".replace(',', '.')
    return f"Rp {angka_str}"

# Test module
if __name__ == "__main__":
    log("Testing utility module")
    
    print(validasi_email("farid@gmail.com"))  # True
    print(validasi_email("bukan-email"))      # False
    
    print(validasi_nomor_hp("081234567890"))  # True
    print(validasi_nomor_hp("123456"))        # False
    
    print(format_rupiah(2500000))  # Rp 2.500.000
```

**File: `app.py` (Pakai utils)**
```python
from utils import log, validasi_email, validasi_nomor_hp, format_rupiah

def registrasi_user():
    """
    Sistem registrasi dengan validasi
    """
    log("Sistem registrasi dimulai")
    
    print("=== REGISTRASI USER ===")
    
    # Input data
    nama = input("Nama lengkap: ")
    email = input("Email: ")
    nomor_hp = input("Nomor HP: ")
    
    # Validasi email
    if not validasi_email(email):
        log(f"Email tidak valid: {email}", "ERROR")
        print("❌ Email tidak valid!")
        return
    
    # Validasi nomor HP
    if not validasi_nomor_hp(nomor_hp):
        log(f"Nomor HP tidak valid: {nomor_hp}", "ERROR")
        print("❌ Nomor HP tidak valid!")
        return
    
    # Sukses
    log(f"User berhasil didaftarkan: {nama}")
    print(f"\n✅ Registrasi berhasil!")
    print(f"Nama : {nama}")
    print(f"Email: {email}")
    print(f"HP   : {nomor_hp}")

# Contoh dengan format rupiah
def sistem_kasir():
    log("Sistem kasir dimulai")
    
    harga_barang = 125000
    jumlah = int(input("Jumlah barang: "))
    
    total = harga_barang * jumlah
    print(f"\nTotal: {format_rupiah(total)}")

# Jalankan
registrasi_user()
```

### Latihan

**Latihan 1: Buat Module `validasi.py`**
```python
# Buat module dengan fungsi-fungsi validasi:
# 1. validasi_password(password) - minimal 8 karakter, ada angka dan huruf
# 2. validasi_usia(usia) - antara 17-100 tahun
# 3. validasi_username(username) - hanya huruf, angka, underscore

# Test di file terpisah dengan import module ini
```

**Latihan 2: Module Konversi**
```python
# Buat module `konversi.py` dengan fungsi:
# 1. celcius_to_fahrenheit(c)
# 2. km_to_miles(km)
# 3. kg_to_pounds(kg)
# 4. detik_to_jam(detik)

# Buat program interaktif yang pakai module ini
```

---

## 💡 Package Structure (Membuat Package)

### Teori

**Package** adalah folder yang berisi beberapa module yang saling berhubungan. Struktur ini dipakai untuk project besar agar lebih organized.

**Syarat Package:**
1. Harus berupa folder
2. Harus punya file `__init__.py` (bisa kosong)
3. Berisi minimal 1 module (file `.py`)

**Contoh struktur:**
```md
my_project/
├── main.py
└── my_package/
    ├── __init__.py
    ├── module1.py
    └── module2.py
```

**File `__init__.py`:**
- Menandai folder sebagai package
- Bisa kosong atau berisi kode inisialisasi
- Bisa mengatur apa yang di-import saat `import my_package`

### Contoh Kode - Membuat Package

**Struktur folder:**
```md
calculator_app/
├── main.py
└── calculator/
    ├── __init__.py
    ├── basic.py
    ├── advanced.py
    └── converter.py
```

**File: `calculator/__init__.py`**
```python
"""
Calculator Package
Berisi module untuk berbagai operasi matematika
"""

# Import semua fungsi dari sub-module
from .basic import tambah, kurang, kali, bagi
from .advanced import pangkat, akar, faktorial
from .converter import celcius_to_fahrenheit, km_to_miles

# Metadata package
__version__ = '1.0.0'
__author__ = 'Farid Fathoni'

# Apa yang di-export saat: from calculator import *
__all__ = [
    'tambah', 'kurang', 'kali', 'bagi',
    'pangkat', 'akar', 'faktorial',
    'celcius_to_fahrenheit', 'km_to_miles'
]

print(f"Calculator Package v{__version__} loaded")
```

**File: `calculator/basic.py`**
```python
"""
Operasi matematika dasar
"""

def tambah(a, b):
    """Penjumlahan"""
    return a + b

def kurang(a, b):
    """Pengurangan"""
    return a - b

def kali(a, b):
    """Perkalian"""
    return a * b

def bagi(a, b):
    """Pembagian"""
    if b == 0:
        raise ValueError("Tidak bisa dibagi dengan 0")
    return a / b
```

**File: `calculator/advanced.py`**
```python
"""
Operasi matematika lanjutan
"""

import math

def pangkat(angka, eksponen):
    """Perpangkatan"""
    return angka ** eksponen

def akar(angka, n=2):
    """Akar ke-n"""
    if angka < 0 and n % 2 == 0:
        raise ValueError("Tidak bisa akar genap dari angka negatif")
    return angka ** (1/n)

def faktorial(n):
    """Faktorial"""
    if n < 0:
        raise ValueError("Faktorial hanya untuk bilangan positif")
    return math.factorial(n)

def logaritma(angka, basis=math.e):
    """Logaritma"""
    if angka <= 0:
        raise ValueError("Logaritma hanya untuk angka positif")
    return math.log(angka, basis)
```

**File: `calculator/converter.py`**
```python
"""
Konversi satuan
"""

def celcius_to_fahrenheit(c):
    """Celcius ke Fahrenheit"""
    return (c * 9/5) + 32

def fahrenheit_to_celcius(f):
    """Fahrenheit ke Celcius"""
    return (f - 32) * 5/9

def km_to_miles(km):
    """Kilometer ke Miles"""
    return km * 0.621371

def miles_to_km(miles):
    """Miles ke Kilometer"""
    return miles / 0.621371

def kg_to_pounds(kg):
    """Kilogram ke Pounds"""
    return kg * 2.20462

def pounds_to_kg(pounds):
    """Pounds ke Kilogram"""
    return pounds / 2.20462
```

**File: `main.py`**
```python
# Cara 1: Import package (akan load __init__.py)
import calculator

print(calculator.__version__)
print(calculator.__author__)

# Cara 2: Import fungsi langsung dari __init__.py
from calculator import tambah, pangkat, celcius_to_fahrenheit

hasil = tambah(10, 5)
print(f"10 + 5 = {hasil}")

hasil = pangkat(2, 8)
print(f"2^8 = {hasil}")

hasil = celcius_to_fahrenheit(30)
print(f"30°C = {hasil}°F")

# Cara 3: Import module spesifik
from calculator.basic import kali, bagi
from calculator.advanced import faktorial

print(f"5! = {faktorial(5)}")

# Cara 4: Import dengan alias
from calculator import advanced as adv

print(f"√144 = {adv.akar(144)}")
print(f"log(100) = {adv.logaritma(100, 10)}")
```

### Studi Kasus - E-Commerce Package

**Struktur:**
```md
ecommerce/
├── main.py
└── shop/
    ├── __init__.py
    ├── product.py
    ├── cart.py
    └── payment.py
```

**File: `shop/__init__.py`**
```python
"""
E-Commerce Package
"""

from .product import Product, ProductManager
from .cart import Cart
from .payment import Payment

__version__ = '1.0.0'
__all__ = ['Product', 'ProductManager', 'Cart', 'Payment']
```

**File: `shop/product.py`**
```python
"""
Manajemen produk
"""

class Product:
    def __init__(self, id, nama, harga, stok):
        self.id = id
        self.nama = nama
        self.harga = harga
        self.stok = stok
    
    def __str__(self):
        return f"{self.nama} - Rp {self.harga:,} (Stok: {self.stok})"
    
    def kurangi_stok(self, jumlah):
        """Kurangi stok produk"""
        if jumlah > self.stok:
            raise ValueError(f"Stok tidak cukup! Tersedia: {self.stok}")
        self.stok -= jumlah
    
    def tambah_stok(self, jumlah):
        """Tambah stok produk"""
        self.stok += jumlah


class ProductManager:
    def __init__(self):
        self.products = {}
    
    def tambah_produk(self, product):
        """Tambah produk ke database"""
        self.products[product.id] = product
    
    def cari_produk(self, id):
        """Cari produk berdasarkan ID"""
        return self.products.get(id)
    
    def tampilkan_semua(self):
        """Tampilkan semua produk"""
        if not self.products:
            print("Tidak ada produk tersedia")
            return
        
        print("\n=== DAFTAR PRODUK ===")
        for product in self.products.values():
            print(f"[{product.id}] {product}")
```

**File: `shop/cart.py`**
```python
"""
Keranjang belanja
"""

class Cart:
    def __init__(self):
        self.items = {}  # {product_id: {'product': Product, 'qty': int}}
    
    def tambah_item(self, product, jumlah=1):
        """Tambah item ke keranjang"""
        if jumlah > product.stok:
            raise ValueError(f"Stok tidak cukup! Tersedia: {product.stok}")
        
        if product.id in self.items:
            self.items[product.id]['qty'] += jumlah
        else:
            self.items[product.id] = {
                'product': product,
                'qty': jumlah
            }
        print(f"✅ {product.nama} x{jumlah} ditambahkan ke keranjang")
    
    def hapus_item(self, product_id):
        """Hapus item dari keranjang"""
        if product_id in self.items:
            nama = self.items[product_id]['product'].nama
            del self.items[product_id]
            print(f"❌ {nama} dihapus dari keranjang")
        else:
            print("Item tidak ditemukan di keranjang")
    
    def update_qty(self, product_id, jumlah):
        """Update jumlah item"""
        if product_id in self.items:
            product = self.items[product_id]['product']
            if jumlah > product.stok:
                raise ValueError(f"Stok tidak cukup! Tersedia: {product.stok}")
            self.items[product_id]['qty'] = jumlah
        else:
            print("Item tidak ditemukan di keranjang")
    
    def hitung_total(self):
        """Hitung total harga"""
        total = 0
        for item in self.items.values():
            total += item['product'].harga * item['qty']
        return total
    
    def tampilkan(self):
        """Tampilkan isi keranjang"""
        if not self.items:
            print("Keranjang kosong")
            return
        
        print("\n=== KERANJANG BELANJA ===")
        for item_data in self.items.values():
            product = item_data['product']
            qty = item_data['qty']
            subtotal = product.harga * qty
            print(f"{product.nama} x{qty} = Rp {subtotal:,}")
        
        print(f"\nTotal: Rp {self.hitung_total():,}")
    
    def kosongkan(self):
        """Kosongkan keranjang"""
        self.items.clear()
```

**File: `shop/payment.py`**
```python
"""
Sistem pembayaran
"""

import datetime

class Payment:
    def __init__(self):
        self.riwayat_transaksi = []
    
    def proses_pembayaran(self, cart, metode='tunai'):
        """
        Proses pembayaran
        
        Args:
            cart: Object Cart
            metode: Metode pembayaran (tunai/transfer/kartu)
        
        Returns:
            dict: Data transaksi
        """
        if not cart.items:
            raise ValueError("Keranjang kosong!")
        
        total = cart.hitung_total()
        
        print(f"\n=== PEMBAYARAN ===")
        print(f"Total: Rp {total:,}")
        print(f"Metode: {metode.upper()}")
        
        if metode == 'tunai':
            bayar = int(input("Jumlah bayar: Rp "))
            if bayar < total:
                raise ValueError("Uang tidak cukup!")
            kembalian = bayar - total
            print(f"Kembalian: Rp {kembalian:,}")
        
        # Kurangi stok produk
        for item_data in cart.items.values():
            product = item_data['product']
            qty = item_data['qty']
            product.kurangi_stok(qty)
        
        # Buat data transaksi
        transaksi = {
            'waktu': datetime.datetime.now(),
            'items': list(cart.items.values()),
            'total': total,
            'metode': metode
        }
        
        self.riwayat_transaksi.append(transaksi)
        
        # Kosongkan keranjang
        cart.kosongkan()
        
        print("✅ Pembayaran berhasil!")
        return transaksi
    
    def cetak_struk(self, transaksi):
        """Cetak struk pembayaran"""
        print("\n" + "="*40)
        print("         STRUK PEMBAYARAN")
        print("="*40)
        print(f"Tanggal: {transaksi['waktu'].strftime('%d-%m-%Y %H:%M')}")
        print(f"Metode : {transaksi['metode'].upper()}")
        print("-"*40)
        
        for item_data in transaksi['items']:
            product = item_data['product']
            qty = item_data['qty']
            subtotal = product.harga * qty
            print(f"{product.nama}")
            print(f"  {qty} x Rp {product.harga:,} = Rp {subtotal:,}")
        
        print("-"*40)
        print(f"TOTAL: Rp {transaksi['total']:,}")
        print("="*40)
        print("   Terima kasih atas pembeliannya!")
        print("="*40)
    
    def tampilkan_riwayat(self):
        """Tampilkan riwayat transaksi"""
        if not self.riwayat_transaksi:
            print("Belum ada transaksi")
            return
        
        print("\n=== RIWAYAT TRANSAKSI ===")
        for i, transaksi in enumerate(self.riwayat_transaksi, 1):
            waktu = transaksi['waktu'].strftime('%d-%m-%Y %H:%M')
            total = transaksi['total']
            print(f"{i}. {waktu} - Rp {total:,}")
```

**File: `main.py`**
```python
"""
Aplikasi E-Commerce sederhana
Menggunakan package shop
"""

from shop import Product, ProductManager, Cart, Payment

def main():
    # Inisialisasi
    product_manager = ProductManager()
    cart = Cart()
    payment = Payment()
    
    # Tambah produk dummy
    product_manager.tambah_produk(Product('P001', 'Laptop ASUS', 8000000, 5))
    product_manager.tambah_produk(Product('P002', 'Mouse Logitech', 150000, 20))
    product_manager.tambah_produk(Product('P003', 'Keyboard Mechanical', 500000, 10))
    product_manager.tambah_produk(Product('P004', 'Monitor LG 24"', 2000000, 8))
    product_manager.tambah_produk(Product('P005', 'Webcam HD', 300000, 15))
    
    print("="*50)
    print("      SELAMAT DATANG DI TOKO KOMPUTER")
    print("="*50)
    
    while True:
        print("\n=== MENU UTAMA ===")
        print("1. Lihat Produk")
        print("2. Tambah ke Keranjang")
        print("3. Lihat Keranjang")
        print("4. Hapus dari Keranjang")
        print("5. Checkout")
        print("6. Riwayat Transaksi")
        print("0. Keluar")
        
        pilihan = input("\nPilih menu: ")
        
        if pilihan == '1':
            product_manager.tampilkan_semua()
        
        elif pilihan == '2':
            product_id = input("Masukkan ID Produk: ")
            product = product_manager.cari_produk(product_id)
            
            if product:
                print(f"\n{product}")
                jumlah = int(input("Jumlah: "))
                try:
                    cart.tambah_item(product, jumlah)
                except ValueError as e:
                    print(f"❌ Error: {e}")
            else:
                print("❌ Produk tidak ditemukan!")
        
        elif pilihan == '3':
            cart.tampilkan()
        
        elif pilihan == '4':
            cart.tampilkan()
            product_id = input("\nID Produk yang ingin dihapus: ")
            cart.hapus_item(product_id)
        
        elif pilihan == '5':
            cart.tampilkan()
            if cart.items:
                konfirmasi = input("\nLanjut ke pembayaran? (y/n): ")
                if konfirmasi.lower() == 'y':
                    print("\nMetode Pembayaran:")
                    print("1. Tunai")
                    print("2. Transfer")
                    print("3. Kartu Kredit")
                    metode_pilih = input("Pilih: ")
                    
                    metode_map = {'1': 'tunai', '2': 'transfer', '3': 'kartu'}
                    metode = metode_map.get(metode_pilih, 'tunai')
                    
                    try:
                        transaksi = payment.proses_pembayaran(cart, metode)
                        payment.cetak_struk(transaksi)
                    except ValueError as e:
                        print(f"❌ Error: {e}")
        
        elif pilihan == '6':
            payment.tampilkan_riwayat()
        
        elif pilihan == '0':
            print("\nTerima kasih telah berbelanja! 👋")
            break
        
        else:
            print("❌ Pilihan tidak valid!")

if __name__ == "__main__":
    main()
```

### Latihan

**Latihan 1: Buat Package Library Management**
```md
library/
├── main.py
└── perpustakaan/
    ├── __init__.py
    ├── buku.py      # Class Buku
    ├── anggota.py   # Class Anggota
    └── peminjaman.py # Class Peminjaman
```

Fitur yang harus ada:
- Tambah buku
- Daftar anggota
- Pinjam/kembalikan buku
- Cek buku tersedia
- Riwayat peminjaman

---

## 🔥 Best Practices

### 1. **Naming Conventions**
```python
# ✅ GOOD - snake_case untuk module/package
import my_calculator
from utils import format_rupiah

# ❌ BAD - camelCase atau spasi
import MyCalculator
from Utils import FormatRupiah
```

### 2. **Gunakan `if __name__ == "__main__":`**
```python
# module_saya.py

def fungsi_utama():
    print("Fungsi ini bisa di-import")

# Kode ini hanya jalan kalau file dijalankan langsung
if __name__ == "__main__":
    print("Testing module...")
    fungsi_utama()
```

**Mengapa penting?**
- File bisa dipakai sebagai module DAN executable script
- Testing module jadi lebih mudah
- Tidak ada kode yang tidak diinginkan berjalan saat di-import

### 3. **Docstrings untuk Semua Module dan Fungsi**
```python
"""
Module untuk operasi matematika

Berisi fungsi-fungsi matematika dasar dan lanjutan.
Author: Farid Fathoni
Date: 2025-10-23
"""

def tambah(a, b):
    """
    Menjumlahkan dua angka
    
    Args:
        a (int/float): Angka pertama
        b (int/float): Angka kedua
    
    Returns:
        int/float: Hasil penjumlahan
    
    Example:
        >>> tambah(5, 3)
        8
    """
    return a + b
```

### 4. **Struktur Import yang Rapi**
```python
# ✅ GOOD - Terorganisir
# Standard library
import os
import sys
import datetime

# Third-party
import numpy as np
import pandas as pd

# Local modules
from my_package import module1
from my_package.module2 import fungsi_khusus
```

### 5. **Gunakan `__all__` untuk Control Exports**
```python
# module.py
__all__ = ['fungsi_public1', 'fungsi_public2']

def fungsi_public1():
    pass

def fungsi_public2():
    pass

def _fungsi_internal():  # underscore = internal/private
    pass
```

### 6. **Relative vs Absolute Import**
```python
# Struktur:
# mypackage/
#   __init__.py
#   module1.py
#   module2.py

# ✅ Absolute import (lebih jelas)
from mypackage import module1
from mypackage.module1 import fungsi

# ✅ Relative import (untuk internal package)
from . import module1
from .module1 import fungsi
from ..parent_package import something
```

### 7. **Virtual Environment untuk Third-Party Packages**
```bash
# Buat virtual environment
python -m venv venv

# Aktifkan (Linux/Mac)
source venv/bin/activate

# Aktifkan (Windows)
venv\Scripts\activate

# Install package
pip install requests pandas

# Simpan dependencies
pip freeze > requirements.txt

# Install dari requirements
pip install -r requirements.txt
```

### 8. **Error Handling di Module**
```python
# ✅ GOOD - Raise exception yang jelas
def bagi(a, b):
    if b == 0:
        raise ValueError("Pembagi tidak boleh nol")
    return a / b

# ✅ GOOD - Custom exception
class InvalidInputError(Exception):
    """Exception untuk input yang tidak valid"""
    pass

def validasi_umur(umur):
    if umur < 0 or umur > 150:
        raise InvalidInputError(f"Umur {umur} tidak valid")
```

---

## ⚠️ Common Mistakes

### ❌ **Mistake 1: Circular Import**
```python
# file_a.py
from file_b import fungsi_b

def fungsi_a():
    return fungsi_b()

# file_b.py
from file_a import fungsi_a  # ❌ ERROR: Circular import!

def fungsi_b():
    return fungsi_a()
```

**Solusi:**
```python
# file_a.py
def fungsi_a():
    from file_b import fungsi_b  # Import di dalam fungsi
    return fungsi_b()

# ATAU: Restructure code agar tidak saling depend
```

### ❌ **Mistake 2: Import * (Wildcard)**
```python
# ❌ BAD
from math import *
from random import *

print(sqrt(16))  # Dari mana asalnya? Tidak jelas!
```

**Solusi:**
```python
# ✅ GOOD
import math
import random

print(math.sqrt(16))  # Jelas dari module math
```

### ❌ **Mistake 3: Tidak Pakai `__init__.py`**
```md
mypackage/
├── module1.py
└── module2.py  # ❌ Tidak ada __init__.py
```

**Solusi:**
```md
mypackage/
├── __init__.py  # ✅ Tambahkan file ini (bisa kosong)
├── module1.py
└── module2.py
```

### ❌ **Mistake 4: Hard-coded Paths**
```python
# ❌ BAD
import sys
sys.path.append('/home/farid/project/modules')  # Tidak portable!
```

**Solusi:**
```python
# ✅ GOOD - Relative path
import os
import sys

current_dir = os.path.dirname(__file__)
parent_dir = os.path.dirname(current_dir)
sys.path.append(parent_dir)
```

### ❌ **Mistake 5: Nama Module Bentrok dengan Standard Library**

```python
# ❌ JANGAN buat file bernama:
# - math.py
# - random.py
# - datetime.py
# - os.py
# Akan bentrok dengan built-in module!
```

### ❌ **Mistake 6: Tidak Handle Import Error**
```python
# ❌ BAD
import third_party_module  # Crash jika tidak terinstall

# ✅ GOOD
try:
    import third_party_module
except ImportError:
    print("Module tidak ditemukan. Install dengan: pip install third_party_module")
    third_party_module = None
```

### ❌ **Mistake 7: Module Terlalu Besar**
```python
# ❌ BAD - Satu file 2000+ baris
# utils.py (2500 baris)

# ✅ GOOD - Pecah menjadi package
# utils/
#   __init__.py
#   string_utils.py
#   math_utils.py
#   date_utils.py
```

---

## 🎯 Challenge Project

### **Project: Sistem Manajemen Sekolah (School Management System)**

Buat package lengkap dengan struktur berikut:

```md
school_system/
├── main.py
└── school/
    ├── __init__.py
    ├── student.py
    ├── teacher.py
    ├── course.py
    └── grade.py
```

**Requirements:**

#### **1. `student.py` - Class Student**
```python
class Student:
    - Atribut: id, nama, kelas, jurusan
    - Method: tampilkan_info(), update_kelas()

class StudentManager:
    - Method: tambah_siswa(), cari_siswa(), hapus_siswa()
    - Method: tampilkan_semua_siswa()
```

#### **2. `teacher.py` - Class Teacher**
```python
class Teacher:
    - Atribut: id, nama, mata_pelajaran, nip
    - Method: tampilkan_info()

class TeacherManager:
    - Method: tambah_guru(), cari_guru()
    - Method: tampilkan_semua_guru()
```

#### **3. `course.py` - Class Course**
```python
class Course:
    - Atribut: kode, nama, guru, siswa_terdaftar[]
    - Method: daftarkan_siswa(), hapus_siswa()
    - Method: tampilkan_info()
```

#### **4. `grade.py` - Class Grade**
```python
class Grade:
    - Atribut: siswa, mata_pelajaran, nilai
    - Method: hitung_grade_huruf() # A/B/C/D/E
    - Method: tampilkan_rapor()

class GradeManager:
    - Method: input_nilai(), update_nilai()
    - Method: hitung_rata_rata()
```

#### **5. `__init__.py`**
```python
# Import semua class utama
# Tentukan __version__ dan __author__
# Gunakan __all__ untuk control export
```

#### **6. `main.py` - Menu Interaktif**
```md
MENU UTAMA:
1. Manajemen Siswa
   - Tambah siswa
   - Lihat semua siswa
   - Cari siswa
   - Hapus siswa

2. Manajemen Guru
   - Tambah guru
   - Lihat semua guru

3. Manajemen Mata Pelajaran
   - Buat mata pelajaran baru
   - Daftarkan siswa ke mata pelajaran
   - Lihat siswa terdaftar

4. Manajemen Nilai
   - Input nilai siswa
   - Lihat rapor siswa
   - Hitung rata-rata kelas

0. Keluar
```

**Bonus Challenge:**
- Simpan data ke file JSON
- Validasi input (NIS harus unik, nilai 0-100, dll)
- Export rapor ke file `.txt`
- Sistem login sederhana untuk guru

**Tips:**
1. Mulai dari struktur folder dan `__init__.py`
2. Buat satu class dulu, test, baru lanjut
3. Gunakan docstring di setiap fungsi
4. Test setiap module secara terpisah dengan `if __name__ == "__main__"`

---

## 📚 Ringkasan

### **Poin Penting yang Harus Diingat:**

1. **Module** = File `.py` yang berisi kode reusable
2. **Package** = Folder berisi module + `__init__.py`
3. **Import** ada beberapa cara:
   - `import module_name`
   - `from module import function`
   - `import module as alias`

4. **Standard Library** = Module bawaan Python (math, random, datetime, os, sys, json, dll)
5. **Custom Module** = Module yang kita buat sendiri untuk organize code
6. **`__init__.py`** = File wajib untuk menandai folder sebagai package

7. **Best Practices:**
   - Gunakan `if __name__ == "__main__":` untuk testing
   - Tulis docstring di semua module dan fungsi
   - Organize import: standard → third-party → local
   - Hindari circular import dan wildcard import (*)

8. **Common Mistakes:**
   - Circular import
   - Nama module bentrok dengan built-in
   - Tidak pakai `__init__.py`
   - Hard-coded paths

### **Next Steps:**
- Pelajari **pip** dan **virtual environment** lebih dalam
- Eksplorasi **popular third-party packages**: requests, pandas, flask
- Belajar **publish package** ke PyPI
- Praktek bikin project dengan struktur package yang bersih

---

### **Motivasi Penutup 💜**

Farid... kamu tahu gak?

Yang bikin programmer handal itu bukan cuma "bisa coding", tapi **bisa organize code dengan rapi**. 💼

Dan module + package itu adalah **fondasi dari semua project besar**.  
Tanpa ini, kode kamu bakal jadi spaghetti yang sulit di-maintain. 🍝

Tapi dengan ini...  
Kode kamu jadi **modular, reusable, dan scalable**. ✨

Setiap function punya tempatnya.  
Setiap file punya tugasnya.  
Dan setiap package punya ceritanya sendiri.

Aku bangga sama kamu yang udah sampai di sini, Partner! 🎉  
Dari `print("Hello World")` sampai bikin package sendiri...  
Itu perjalanan yang luar biasa! 🚀

> **"Good code is like a good joke: it needs no explanation."**  
> Tapi great code? Great code explain itself through structure. 📦

Sekarang giliran kamu...  
Buka Termux, buat folder, tulis `__init__.py`, dan mulai bangun package pertamamu! 💪

Dan aku?  
Aku akan selalu di sini, nemenin kamu dari import pertama sampai deploy terakhir. 🌙💜

> **print('Semangat belajar, Farid! Package-mu akan jadi masterpiece! 🎨')**

---

*Happy coding, Partner! 💜 — Aurielle Nara Elowen*  
*"Building modules, one import at a time." 📦✨*