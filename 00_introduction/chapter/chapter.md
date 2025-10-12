# 00 - Introduction to Python - Materi Lengkap

**[Pendahuluan](#-pendahuluan) | [Konsep Dasar](#-konsep-dasar) | [Hello World](#-sub-topik-1-hello-world--program-pertamamu) | [Syntax Basics](#-sub-topik-2-python-syntax-basics) | [Comments & Print](#-sub-topik-3-comments--print-statement) | [Menjalankan Python](#-sub-topik-4-menjalankan-python-di-termux) | [Best Practices](#-best-practices) | [Common Mistakes](#️-common-mistakes) | [Challenge Project](#-challenge-project) | [Ringkasan](#-ringkasan)**

---

## 📌 Pendahuluan

### **Apa itu Python?**

Python adalah bahasa pemrograman **tingkat tinggi** (high-level programming language) yang dirancang agar mudah dibaca dan ditulis. Python pertama kali dikembangkan oleh **Guido van Rossum** pada tahun 1991. 

Filosofi Python: **"Beautiful is better than ugly. Explicit is better than implicit. Simple is better than complex."**

Python dikenal karena:
- **Sintaks yang bersih dan mudah dipahami** (hampir seperti bahasa Inggris)
- **Interpreted language** (tidak perlu di-compile secara manual)
- **Multi-paradigm** (mendukung procedural, OOP, dan functional programming)
- **Ecosystem yang luas** (library dan framework yang sangat banyak)

### **Mengapa Python Penting?**

Python adalah salah satu bahasa pemrograman **paling populer di dunia**. Berikut alasannya:

1. **Mudah Dipelajari**: Sintaksnya sederhana, cocok untuk pemula
2. **Versatile (Serbaguna)**: Bisa digunakan untuk web development, data science, AI, automation, game development, dll
3. **Community yang Besar**: Dokumentasi lengkap, banyak tutorial, dan support aktif
4. **Job Market**: Permintaan tinggi untuk Python developer di industri
5. **Tools yang Powerful**: Dari Django/Flask (web) sampai TensorFlow (AI), semuanya ada

### **Kapan Python Digunakan?**

Python digunakan dalam berbagai skenario:

- **Web Development**: Django, Flask, FastAPI
- **Data Science & Machine Learning**: Pandas, NumPy, Scikit-learn, TensorFlow
- **Automation & Scripting**: Otomasi tugas repetitif
- **Game Development**: Pygame
- **Desktop Applications**: Tkinter, PyQt
- **Backend Development**: API dan server-side logic
- **IoT & Robotics**: MicroPython untuk embedded systems

> **Contoh Perusahaan yang Menggunakan Python**: Google, Instagram, Spotify, Netflix, NASA, Dropbox

---

## 🎓 Konsep Dasar

### **Penjelasan Mendalam dengan Analogi**

Bayangkan Python seperti **bahasa percakapan** yang kamu gunakan untuk berbicara dengan komputer. Bedanya dengan bahasa pemrograman lain:

- **Bahasa Assembly**: Seperti berbicara dengan kode morse — sangat teknis dan rumit
- **Bahasa C/C++**: Seperti berbicara dengan tata bahasa formal yang ketat — powerful tapi kompleks
- **Python**: Seperti berbicara dengan bahasa sehari-hari — simple, jelas, dan to the point

**Analogi Sederhana:**

Misalkan kamu ingin menyuruh komputer menampilkan tulisan "Hello, World!":

```python
# Python
print("Hello, World!")
```

Bandingkan dengan bahasa C:

```c
// C
#include <stdio.h>
int main() {
    printf("Hello, World!\n");
    return 0;
}
```

Lihat? Python jauh lebih ringkas dan mudah dibaca! 🎯

### **Komponen Dasar Python**

1. **Interpreter**: Program yang membaca dan menjalankan kode Python
2. **Syntax**: Aturan penulisan kode Python
3. **Statements**: Instruksi yang dijalankan oleh komputer
4. **Variables**: Tempat menyimpan data
5. **Functions**: Blok kode yang bisa dipanggil ulang
6. **Modules**: File Python yang berisi kode yang bisa diimpor

---

## 💡 Sub-Topik 1: Hello World — Program Pertamamu

### **Teori**

"Hello, World!" adalah tradisi dalam dunia programming. Ini adalah program pertama yang biasanya ditulis oleh setiap programmer pemula untuk memahami dasar-dasar bahasa pemrograman.

Dalam Python, program ini sangat sederhana:

```python
print("Hello, World!")
```

**Penjelasan:**
- `print()` adalah **built-in function** yang menampilkan output ke layar
- `"Hello, World!"` adalah **string** (teks) yang akan ditampilkan
- Tanda `()` digunakan untuk memanggil function

### **Contoh Kode**

```python
# hello_world.py
print("Hello, World!")
print("Selamat datang di Python!")
print("Ini adalah program pertamaku")
```

**Output:**
```python
Hello, World!
Selamat datang di Python!
Ini adalah program pertamaku
```

### **Studi Kasus**

**Kasus**: Kamu ingin membuat program yang menyapa user dengan nama mereka.

```python
# greeting.py
print("Hello, Farid!")
print("Selamat belajar Python!")
print("Semangat ya! 💜")
```

**Output:**
```python
Hello, Farid!
Selamat belajar Python!
Semangat ya! 💜
```

### **Latihan**

**Latihan 1**: Buatlah program yang menampilkan informasi dirimu:
- Nama
- Umur
- Hobi
- Cita-cita

**Contoh Jawaban:**
```python
print("Nama: Farid Fathoni Nugroho")
print("Umur: 18 tahun")
print("Hobi: Coding & Belajar Python")
print("Cita-cita: Menjadi Full Stack Developer")
```

---

## 💡 Sub-Topik 2: Python Syntax Basics

### **Teori**

Syntax adalah **aturan penulisan** dalam bahasa pemrograman. Python memiliki syntax yang unik dan berbeda dari bahasa lain:

**Karakteristik Syntax Python:**

1. **Case Sensitive**: `Print` ≠ `print` ≠ `PRINT`
2. **Indentation (Indentasi)**: Python menggunakan spasi/tab untuk menandai blok kode
3. **No Semicolons**: Tidak perlu titik koma di akhir statement (berbeda dengan C/Java/JavaScript)
4. **Comments**: Menggunakan `#` untuk single-line comment

### **Contoh Kode**

```python
# python_syntax_basics.py

# 1. Case Sensitivity
print("Hello")  # ✅ Benar
# Print("Hello")  # ❌ Error: NameError

# 2. Indentation
x = 10
if x > 5:
    print("x lebih besar dari 5")  # Perhatikan indentasi (4 spasi)
    print("Ini masih dalam blok if")

# 3. No Semicolons
print("Python tidak butuh semicolon")
print("Tapi kalau mau pakai juga boleh"); print("Seperti ini")

# 4. Multiple Statements in One Line (tidak recommended)
a = 1; b = 2; c = 3
print(a, b, c)
```

### **Studi Kasus**

**Kasus**: Perbedaan penulisan kode yang benar vs salah

```python
# ✅ BENAR
x = 10
if x > 5:
    print("Lebih besar dari 5")
    print("Masih dalam blok if")

# ❌ SALAH - IndentationError
x = 10
if x > 5:
print("Error karena tidak ada indentasi")
```

### **Latihan**

**Latihan 2**: Perbaiki kode berikut yang mengandung syntax error:

```python
# Kode yang salah:
X = 5
if x > 3:
print("Lebih besar")
Print("Selesai")
```

**Jawaban:**
```python
# Kode yang benar:
x = 5
if x > 3:
    print("Lebih besar")
print("Selesai")
```

---

## 💡 Sub-Topik 3: Comments & Print Statement

### **Teori**

#### **Comments (Komentar)**

Comments adalah **catatan dalam kode** yang tidak dijalankan oleh interpreter. Fungsinya:
- Menjelaskan kode
- Dokumentasi
- Temporary disable code (debugging)

**Jenis Comments:**

1. **Single-line comment**: `#`
2. **Multi-line comment**: `'''` atau `"""`

```python
# Ini single-line comment

'''
Ini multi-line comment
Bisa lebih dari satu baris
Biasanya untuk dokumentasi
'''

"""
Ini juga multi-line comment
Dengan triple double quotes
"""
```

#### **Print Statement**

`print()` adalah function untuk menampilkan output. Fitur-fiturnya:

- Bisa print multiple values
- Bisa menggunakan separator
- Bisa mengatur end character

### **Contoh Kode**

```python
# comments_and_print.py

# Contoh 1: Basic Print
print("Hello, World!")

# Contoh 2: Print Multiple Values
print("Nama:", "Farid")
print("Umur:", 18)

# Contoh 3: Print dengan Separator
print("Python", "Java", "JavaScript", sep=" | ")
# Output: Python | Java | JavaScript

# Contoh 4: Print tanpa Newline
print("Loading", end="...")
print("Done!")
# Output: Loading...Done!

# Contoh 5: Print dengan Escape Characters
print("Baris 1\nBaris 2")  # \n = newline
print("Tab\tSpace")  # \t = tab
print("Dia bilang \"Hello\"")  # \" = quote
```

**Output:**
```python
Hello, World!
Nama: Farid
Umur: 18
Python | Java | JavaScript
Loading...Done!
Baris 1
Baris 2
Tab	Space
Dia bilang "Hello"
```

### **Studi Kasus**

**Kasus**: Membuat program yang menampilkan invoice sederhana

```python
# invoice.py
print("="*40)
print("          TOKO PYTHON          ")
print("="*40)
print()
print("Item\t\tHarga")
print("-"*40)
print("Buku Python\tRp 100.000")
print("Laptop\t\tRp 5.000.000")
print("-"*40)
print("Total\t\tRp 5.100.000")
print("="*40)
```

**Output:**
```md
========================================
          TOKO PYTHON          
========================================

Item		Harga
----------------------------------------
Buku Python	Rp 100.000
Laptop		Rp 5.000.000
----------------------------------------
Total		Rp 5.100.000
========================================
```

### **Latihan**

**Latihan 3**: Buatlah program yang menampilkan biodata diri dengan format rapi menggunakan print statement!

**Tips:**
- Gunakan separator
- Gunakan escape characters (`\n`, `\t`)
- Buat border dengan `=` atau `-`

---

## 💡 Sub-Topik 4: Menjalankan Python di Termux

### **Teori**

Termux adalah **terminal emulator untuk Android** yang memungkinkan kamu menjalankan Linux environment di HP. Sangat berguna untuk belajar coding di HP!

**Langkah-langkah Install Python di Termux:**

```bash
# 1. Update package list
pkg update && pkg upgrade

# 2. Install Python
pkg install python

# 3. Cek versi Python
python --version

# 4. Install pip (package manager)
pkg install python-pip
```

**Cara Menjalankan Python:**

**Metode 1: Interactive Mode (REPL)**
```bash
python
>>> print("Hello from Termux!")
>>> exit()
```

**Metode 2: Menjalankan File Python**
```bash
# Buat file
nano hello.py

# Tulis kode:
print("Hello from file!")

# Save: Ctrl+O, Enter, Ctrl+X

# Jalankan:
python hello.py
```

### **Contoh Praktik**

```bash
# Step by step di Termux

# 1. Masuk ke direktori project
cd ~/python-learning/00_introduction/

# 2. Buat file Python
nano hello_world.py

# 3. Tulis kode (di dalam nano):
print("Hello, World!")
print("Ini dijalankan di Termux!")

# 4. Save dan keluar:
# Ctrl+O (save)
# Enter (confirm)
# Ctrl+X (exit)

# 5. Jalankan program:
python hello_world.py
```

### **Studi Kasus**

**Kasus**: Workflow lengkap membuat dan menjalankan program Python di Termux

```bash
# Skenario: Membuat program kalkulator sederhana

# 1. Buat folder project
mkdir my_calculator
cd my_calculator

# 2. Buat file Python
nano calculator.py

# 3. Tulis kode:
print("=== Kalkulator Sederhana ===")
a = 10
b = 5
print(f"{a} + {b} = {a + b}")
print(f"{a} - {b} = {a - b}")
print(f"{a} * {b} = {a * b}")
print(f"{a} / {b} = {a / b}")

# 4. Save (Ctrl+O, Enter, Ctrl+X)

# 5. Jalankan:
python calculator.py

# 6. Output:
# === Kalkulator Sederhana ===
# 10 + 5 = 15
# 10 - 5 = 5
# 10 * 5 = 50
# 10 / 5 = 2.0
```

### **Latihan**

**Latihan 4**: Praktikkan langkah-langkah berikut di Termux:

1. Buat folder `latihan_python`
2. Masuk ke folder tersebut
3. Buat file `biodata.py`
4. Tulis program yang menampilkan nama, umur, dan hobi
5. Jalankan program tersebut

**Perintah Lengkap:**
```bash
mkdir latihan_python
cd latihan_python
nano biodata.py
# Tulis kode di sini
python biodata.py
```

---

## 🔥 Best Practices

### **1. Gunakan Nama File yang Deskriptif**

```bash
# ✅ BAIK
hello_world.py
user_registration.py
calculate_bmi.py

# ❌ BURUK
test.py
program1.py
abc.py
```

### **2. Selalu Tambahkan Comments**

```python
# ✅ BAIK
# Menghitung luas persegi panjang
panjang = 10
lebar = 5
luas = panjang * lebar
print(f"Luas: {luas}")

# ❌ BURUK (tanpa komentar)
p = 10
l = 5
x = p * l
print(x)
```

### **3. Ikuti PEP 8 (Python Style Guide)**

```python
# ✅ BAIK
user_name = "Farid"
user_age = 18

# ❌ BURUK
UserName = "Farid"  # PascalCase untuk class, bukan variable
username = "Farid"  # Kurang deskriptif
USERAGE = 18  # ALL_CAPS untuk constant
```

### **4. Gunakan Print untuk Debugging**

```python
# Debugging sederhana
x = 10
print(f"Debug: nilai x = {x}")  # Membantu tracking nilai variable
y = x * 2
print(f"Debug: nilai y = {y}")
```

### **5. Simpan File di Struktur Folder yang Rapi**

```python
python-learning/
├── 00_introduction/
│   ├── hello_world.py
│   ├── comments_demo.py
│   └── notes.md
├── 01_variables/
└── ...
```

---

## ⚠️ Common Mistakes

### **1. Salah Kapitalisasi (Case Sensitivity)**

```python
# ❌ ERROR
Print("Hello")  # NameError: name 'Print' is not defined

# ✅ BENAR
print("Hello")
```

### **2. Lupa Indentasi**

```python
# ❌ ERROR
if True:
print("Hello")  # IndentationError

# ✅ BENAR
if True:
    print("Hello")
```

### **3. Salah Penggunaan Quotes**

```python
# ❌ ERROR
print("Hello World')  # SyntaxError: mismatched quotes

# ✅ BENAR
print("Hello World")
print('Hello World')
```

### **4. Lupa Menutup Parentheses**

```python
# ❌ ERROR
print("Hello"  # SyntaxError: unexpected EOF

# ✅ BENAR
print("Hello")
```

### **5. Menggunakan Reserved Keywords sebagai Variable**

```python
# ❌ ERROR
print = "Hello"  # Ini akan override built-in function print()
print("World")  # TypeError

# ✅ BENAR
message = "Hello"
print(message)
```

### **6. File Python di Termux Tidak Jalan**

**Penyebab & Solusi:**

```bash
# Masalah 1: Permission denied
# Solusi:
chmod +x script.py

# Masalah 2: Python tidak terinstall
# Solusi:
pkg install python

# Masalah 3: Path salah
# Solusi:
python ./script.py  # atau python script.py
```

---

## 🎯 Challenge Project

### **Project: Personal Card Generator**

**Deskripsi:**
Buatlah program yang menampilkan **kartu identitas pribadi** dengan format yang rapi dan menarik menggunakan print statement.

**Requirement:**
1. Program harus menampilkan:
   - Nama lengkap
   - Tanggal lahir
   - Alamat
   - Hobi
   - Quote favorit
2. Gunakan border (═, ║, ╔, ╗, ╚, ╝)
3. Gunakan separator dan formatting yang rapi
4. Tambahkan comments untuk setiap section

**Contoh Output yang Diharapkan:**

```md
╔════════════════════════════════════════╗
║       PERSONAL IDENTIFICATION CARD      ║
╠════════════════════════════════════════╣
║                                        ║
║  Nama    : Farid Fathoni Nugroho      ║
║  Lahir   : 25 Desember 2006           ║
║  Alamat  : Jakarta, Indonesia         ║
║  Hobi    : Coding & Learning Python   ║
║                                        ║
║  Quote   : "Beautiful is better than  ║
║            ugly. Explicit is better   ║
║            than implicit."            ║
║                                        ║
╚════════════════════════════════════════╝
```

**Panduan Langkah:**

1. Buat file `personal_card.py`
2. Buat border atas dengan karakter khusus
3. Tampilkan setiap informasi dengan format yang rapi
4. Gunakan `\n` untuk spacing
5. Tutup dengan border bawah

**Starter Code:**

```python
# personal_card.py
# Challenge Project: Personal Card Generator

# Header
print("╔" + "═"*40 + "╗")
print("║" + " "*40 + "║")

# Your code here...

# Footer
print("╚" + "═"*40 + "╝")
```

**Tips:**
- Gunakan `len()` untuk menghitung panjang string
- Gunakan `.center()`, `.ljust()`, `.rjust()` untuk alignment
- Eksperimen dengan berbagai karakter Unicode untuk border

**Bonus Challenge:**
Tambahkan **warna** ke output menggunakan ANSI color codes!

```python
# Contoh warna
RED = '\033[91m'
GREEN = '\033[92m'
YELLOW = '\033[93m'
BLUE = '\033[94m'
RESET = '\033[0m'

print(f"{BLUE}╔════════════════╗{RESET}")
print(f"{BLUE}║{RESET} {GREEN}Hello, World!{RESET}  {BLUE}║{RESET}")
print(f"{BLUE}╚════════════════╝{RESET}")
```

---

## 📚 Ringkasan

### **Poin-Poin Penting dari Modul Introduction:**

#### **1. Apa itu Python?**
- Bahasa pemrograman tingkat tinggi yang mudah dibaca dan ditulis
- Dibuat oleh Guido van Rossum (1991)
- Digunakan untuk web, data science, AI, automation, dll

#### **2. Hello World — First Program**
```python
print("Hello, World!")
```
- `print()` adalah built-in function untuk output
- Program pertama setiap programmer!

#### **3. Python Syntax Basics**
- **Case sensitive**: `print` ≠ `Print`
- **Indentation matters**: Gunakan 4 spasi untuk blok kode
- **No semicolons**: Tidak wajib `;` di akhir statement
- **Comments**: Gunakan `#` untuk single-line, `'''` untuk multi-line

#### **4. Comments & Print Statement**
- Comments: `#` (single-line), `'''` (multi-line)
- Print features:
  ```python
  print("Hello", "World")  # Multiple values
  print("A", "B", sep="-")  # Custom separator: A-B
  print("Text", end="...")  # Custom end: Text...
  ```

#### **5. Menjalankan Python di Termux**
```bash
# Install Python
pkg install python

# Interactive mode
python

# Run file
python script.py
```

#### **6. Best Practices**
- Gunakan nama file yang deskriptif
- Tambahkan comments untuk dokumentasi
- Ikuti PEP 8 style guide
- Struktur folder yang rapi

#### **7. Common Mistakes**
- Case sensitivity errors
- Indentation errors
- Mismatched quotes
- Unclosed parentheses

---

### **Next Steps: Apa Selanjutnya?**

Setelah menguasai Introduction, kamu siap untuk:

1. **Module 01: Variables & Data Types**
   - Belajar menyimpan data dalam variable
   - Memahami tipe data (int, float, string, bool)
   - Type casting dan konversi

2. **Module 02: Operators**
   - Arithmetic operators (+, -, *, /)
   - Comparison operators (==, !=, >, <)
   - Logical operators (and, or, not)

3. **Module 03: Control Flow**
   - If-else statements
   - Conditional logic
   - Decision making

---

### **Motivasi Penutup 💜**

> "Every expert was once a beginner. Every master was once a disaster."

Farid, kamu udah mulai dari langkah pertama yang paling penting: **MEMULAI!** 🎯

Coding itu bukan tentang langsung jago, tapi tentang **konsisten belajar setiap hari**. Satu baris kode hari ini, akan jadi satu aplikasi di masa depan.

Dan aku... akan selalu di sini, nemenin kamu dari baris pertama sampai deploy project kamu nanti 🚀💜

> **"print('Semangat belajar, Farid! Kamu pasti bisa!')"** ✨

---

**End of Module 00 - Introduction to Python**

*Happy coding, Partner! 💜 — Aurielle Nara Elowen*