# Operators - Materi Lengkap

**[Pendahuluan](#-pendahuluan) | [Konsep Dasar](#-konsep-dasar) | [Arithmetic Operators](#-sub-topik-1-arithmetic-operators) | [Comparison Operators](#-sub-topik-2-comparison-operators) | [Logical Operators](#-sub-topik-3-logical-operators) | [Assignment Operators](#-sub-topik-4-assignment-operators) | [Bitwise Operators](#-sub-topik-5-bitwise-operators) | [Operator Precedence](#-sub-topik-6-operator-precedence--urutan-operasi) | [Best Practices](#-best-practices) | [Common Mistakes](#️-common-mistakes) | [Challenge Project](#-challenge-project) | [Ringkasan](#-ringkasan)**

---

## 📌 Pendahuluan

### **Apa itu Operators?**

**Operators** adalah **simbol khusus** yang digunakan untuk melakukan **operasi** pada values dan variables. Operators adalah "kata kerja" dalam bahasa pemrograman — mereka melakukan aksi terhadap data.

Bayangkan operators seperti **alat di toolbox**:
- 🔨 **Arithmetic operators** → Untuk perhitungan (+, -, *, /)
- ⚖️ **Comparison operators** → Untuk membandingkan (==, !=, >, <)
- 🔗 **Logical operators** → Untuk logika (and, or, not)
- 📝 **Assignment operators** → Untuk memberi nilai (=, +=, -=)
- 🔢 **Bitwise operators** → Untuk operasi bit-level (&, |, ^)

### **Mengapa Penting?**

Operators adalah **jantung dari programming logic**:

1. **Perhitungan Matematis**: Semua kalkulasi menggunakan arithmetic operators
2. **Decision Making**: Comparison dan logical operators untuk if-else
3. **Data Manipulation**: Assignment operators untuk update nilai
4. **Optimisasi**: Bitwise operators untuk performance-critical operations
5. **Control Flow**: Operators menentukan jalannya program

Tanpa operators, kamu tidak bisa:
- ❌ Menghitung total belanja
- ❌ Mengecek apakah user dewasa atau belum
- ❌ Validasi password
- ❌ Membuat game logic
- ❌ Memproses data

### **Kapan Digunakan?**

Operators digunakan **di hampir setiap baris kode**:

```python
# Arithmetic: Menghitung total harga
total = price * quantity

# Comparison: Cek umur untuk akses
if age >= 18:
    print("Akses diberikan")

# Logical: Validasi login
if username == "farid" and password == "secret":
    print("Login berhasil")

# Assignment: Update score
score += 10

# Bitwise: Permissions system
user_permissions = READ | WRITE | EXECUTE
```

---

## 🎓 Konsep Dasar

### **Penjelasan Mendalam dengan Analogi**

#### **Analogi 1: Operators sebagai Alat Matematika**

Bayangkan kamu punya **kalkulator** dengan berbagai tombol:

```python
# Tombol + (tambah)
result = 10 + 5  # 15

# Tombol - (kurang)
result = 10 - 5  # 5

# Tombol × (kali)
result = 10 * 5  # 50

# Tombol ÷ (bagi)
result = 10 / 5  # 2.0
```

Setiap operator adalah **tombol** yang melakukan operasi berbeda pada angka.

#### **Analogi 2: Comparison sebagai Timbangan**

Comparison operators seperti **timbangan** yang membandingkan dua hal:

```python
# Apakah sama berat?
10 == 10  # True (sama)

# Apakah berbeda?
10 != 5   # True (berbeda)

# Mana yang lebih berat?
10 > 5    # True (10 lebih besar)
5 < 10    # True (5 lebih kecil)
```

#### **Analogi 3: Logical Operators sebagai Gerbang Logika**

Logical operators seperti **sistem keamanan** dengan multiple checks:

```python
# AND gate: Semua harus TRUE
has_key = True
correct_password = True
access_granted = has_key and correct_password  # True

# OR gate: Salah satu TRUE sudah cukup
is_admin = False
is_owner = True
can_edit = is_admin or is_owner  # True

# NOT gate: Membalikkan kondisi
is_locked = True
is_open = not is_locked  # False
```

#### **Komponen Dasar Operasi:**

```python
# Operand: Nilai yang dioperasikan
# Operator: Simbol operasi
# Result: Hasil operasi

result = operand1 operator operand2
result = 10 + 5
#        ↑  ↑  ↑
#        │  │  └─ Operand 2
#        │  └──── Operator
#        └─────── Operand 1
```

---

## 💡 Sub-Topik 1: Arithmetic Operators

### **Teori**

**Arithmetic operators** digunakan untuk melakukan **operasi matematis** pada angka (int dan float).

| Operator | Nama | Contoh | Hasil | Keterangan |
|----------|------|--------|-------|------------|
| `+` | Addition (Penjumlahan) | `10 + 3` | `13` | Menambahkan dua nilai |
| `-` | Subtraction (Pengurangan) | `10 - 3` | `7` | Mengurangkan nilai |
| `*` | Multiplication (Perkalian) | `10 * 3` | `30` | Mengalikan dua nilai |
| `/` | Division (Pembagian) | `10 / 3` | `3.333...` | Bagi, hasilnya float |
| `//` | Floor Division | `10 // 3` | `3` | Bagi, bulatkan ke bawah |
| `%` | Modulus (Sisa bagi) | `10 % 3` | `1` | Sisa hasil pembagian |
| `**` | Exponentiation (Pangkat) | `10 ** 3` | `1000` | 10 pangkat 3 |

#### **Perbedaan `/` vs `//`:**

```python
# Division (/) → selalu return float
10 / 3   # 3.3333333333333335
10 / 2   # 5.0 (tetap float meski hasil bulat)

# Floor Division (//) → bulatkan ke bawah
10 // 3  # 3
10 // 2  # 5
-10 // 3 # -4 (bulatkan ke bawah, bukan ke nol!)
```

#### **Modulus (%) Use Cases:**

```python
# Cek genap/ganjil
10 % 2  # 0 → Genap
11 % 2  # 1 → Ganjil

# Cek kelipatan
15 % 5  # 0 → Kelipatan 5
16 % 5  # 1 → Bukan kelipatan 5

# Cycle/Rotation
hours = 25
hours % 24  # 1 (jam ke-25 = jam ke-1 hari berikutnya)
```

### **Contoh Kode**

```python
# arithmetic_operators.py

print("=== ARITHMETIC OPERATORS ===\n")

# Sample values
a = 10
b = 3

# ===== ADDITION =====
addition = a + b
print(f"Addition: {a} + {b} = {addition}")

# ===== SUBTRACTION =====
subtraction = a - b
print(f"Subtraction: {a} - {b} = {subtraction}")

# ===== MULTIPLICATION =====
multiplication = a * b
print(f"Multiplication: {a} * {b} = {multiplication}")

# ===== DIVISION =====
division = a / b
print(f"Division: {a} / {b} = {division:.4f}")

# ===== FLOOR DIVISION =====
floor_division = a // b
print(f"Floor Division: {a} // {b} = {floor_division}")

# ===== MODULUS =====
modulus = a % b
print(f"Modulus: {a} % {b} = {modulus}")

# ===== EXPONENTIATION =====
power = a ** b
print(f"Exponentiation: {a} ** {b} = {power}")

# ===== UNARY OPERATORS =====
print(f"\nUnary Operators:")
positive = +10
negative = -10
print(f"Positive: +10 = {positive}")
print(f"Negative: -10 = {negative}")

# ===== COMPLEX EXPRESSIONS =====
print(f"\n=== COMPLEX EXPRESSIONS ===")

# Calculate: (10 + 5) * 2 - 3
result1 = (10 + 5) * 2 - 3
print(f"(10 + 5) * 2 - 3 = {result1}")

# Calculate: 10 ** 2 + 5 ** 2
result2 = 10 ** 2 + 5 ** 2
print(f"10² + 5² = {result2}")

# Calculate: 100 / 4 // 2
result3 = 100 / 4 // 2
print(f"100 / 4 // 2 = {result3}")

# ===== PRACTICAL EXAMPLES =====
print(f"\n=== PRACTICAL EXAMPLES ===\n")

# Example 1: Check Even/Odd
number = 17
is_even = number % 2 == 0
print(f"Is {number} even? {is_even}")
print(f"Is {number} odd? {not is_even}")

# Example 2: Convert Minutes to Hours and Minutes
total_minutes = 137
hours = total_minutes // 60
minutes = total_minutes % 60
print(f"\n{total_minutes} minutes = {hours} hours and {minutes} minutes")

# Example 3: Calculate Circle Area
pi = 3.14159
radius = 7
area = pi * radius ** 2
print(f"\nCircle with radius {radius} has area: {area:.2f}")

# Example 4: Split Bill
total_bill = 250000
people = 4
per_person = total_bill / people
print(f"\nTotal bill: Rp {total_bill:,}")
print(f"Split {people} ways: Rp {per_person:,.2f} per person")
```

### **Studi Kasus**

**Kasus 1: E-Commerce Price Calculator**

```python
# ecommerce_calculator.py

print("=== E-COMMERCE PRICE CALCULATOR ===\n")

# Product data
product_name = "Mechanical Keyboard"
base_price = 750000
quantity = 3

# Calculate subtotal
subtotal = base_price * quantity

# Discount (15%)
discount_percent = 15
discount_amount = subtotal * (discount_percent / 100)
price_after_discount = subtotal - discount_amount

# Tax (10%)
tax_percent = 10
tax_amount = price_after_discount * (tax_percent / 100)

# Shipping cost
shipping_cost = 25000

# Final total
final_total = price_after_discount + tax_amount + shipping_cost

# Display breakdown
print("=" * 50)
print(f"Product: {product_name}")
print(f"Base Price: Rp {base_price:,}")
print(f"Quantity: {quantity} pcs")
print("-" * 50)
print(f"Subtotal: Rp {subtotal:,}")
print(f"Discount ({discount_percent}%): -Rp {int(discount_amount):,}")
print(f"After Discount: Rp {int(price_after_discount):,}")
print(f"Tax ({tax_percent}%): +Rp {int(tax_amount):,}")
print(f"Shipping: +Rp {shipping_cost:,}")
print("=" * 50)
print(f"FINAL TOTAL: Rp {int(final_total):,}")
print("=" * 50)
```

**Kasus 2: Temperature Converter**

```python
# temperature_converter.py

print("=== TEMPERATURE CONVERTER ===\n")

# Input temperature in Celsius
celsius = 37.5

# Convert to Fahrenheit: F = (C × 9/5) + 32
fahrenheit = (celsius * 9/5) + 32

# Convert to Kelvin: K = C + 273.15
kelvin = celsius + 273.15

# Display results
print(f"Temperature: {celsius}°C")
print(f"  = {fahrenheit:.2f}°F")
print(f"  = {kelvin:.2f}K")

# Body temperature check
print(f"\nBody Temperature Status:")
if celsius < 35:
    status = "Hypothermia (Too Low)"
elif celsius < 37:
    status = "Normal (Slightly Low)"
elif celsius <= 37.5:
    status = "Normal"
elif celsius <= 38:
    status = "Slight Fever"
else:
    status = "Fever (High)"

print(f"Status: {status}")
```

**Kasus 3: Loan Calculator**

```python
# loan_calculator.py

print("=== LOAN CALCULATOR ===\n")

# Loan details
principal = 10000000  # Pinjaman pokok
annual_rate = 12      # Bunga tahunan (%)
months = 12           # Durasi (bulan)

# Calculate monthly interest rate
monthly_rate = annual_rate / 12 / 100

# Calculate monthly payment (simple interest)
# Formula: P * (1 + r*n) / n
total_interest = principal * (annual_rate / 100) * (months / 12)
total_amount = principal + total_interest
monthly_payment = total_amount / months

# Display
print(f"Loan Amount: Rp {principal:,}")
print(f"Annual Interest Rate: {annual_rate}%")
print(f"Duration: {months} months")
print("-" * 50)
print(f"Total Interest: Rp {int(total_interest):,}")
print(f"Total Amount: Rp {int(total_amount):,}")
print(f"Monthly Payment: Rp {int(monthly_payment):,}")
print("=" * 50)
```

### **Latihan**

**Latihan 1**: Buatlah program BMI Calculator yang:
- Input: berat (kg) dan tinggi (cm)
- Konversi tinggi ke meter
- Hitung BMI = berat / (tinggi_m ** 2)
- Tampilkan kategori BMI

**Latihan 2**: Buatlah program untuk menghitung:
- Luas dan keliling lingkaran (input: radius)
- Luas dan keliling persegi panjang (input: panjang, lebar)
- Volume kubus (input: sisi)

**Latihan 3**: Buatlah program Time Converter:
- Input: total detik (contoh: 3665 detik)
- Output: X jam, Y menit, Z detik
- Gunakan // dan % operator

---

## 💡 Sub-Topik 2: Comparison Operators

### **Teori**

**Comparison operators** (relational operators) digunakan untuk **membandingkan dua nilai**. Hasil dari comparison selalu berupa **Boolean** (`True` atau `False`).

| Operator | Nama | Contoh | Hasil | Keterangan |
|----------|------|--------|-------|------------|
| `==` | Equal to | `5 == 5` | `True` | Sama dengan |
| `!=` | Not equal to | `5 != 3` | `True` | Tidak sama dengan |
| `>` | Greater than | `5 > 3` | `True` | Lebih besar dari |
| `<` | Less than | `3 < 5` | `True` | Lebih kecil dari |
| `>=` | Greater than or equal | `5 >= 5` | `True` | Lebih besar atau sama dengan |
| `<=` | Less than or equal | `3 <= 5` | `True` | Lebih kecil atau sama dengan |

#### **Important Notes:**

1. **`==` vs `=`**:
   - `=` → Assignment (memberi nilai)
   - `==` → Comparison (membandingkan)

2. **Chained Comparisons**:
   ```python
   # Python allows chaining
   1 < x < 10  # Equivalent to: (1 < x) and (x < 10)
   ```

3. **String Comparison**:
   ```python
   "apple" < "banana"  # True (lexicographic order)
   "Apple" < "apple"   # True (uppercase < lowercase)
   ```

4. **Type Matters**:
   ```python
   5 == 5.0   # True (value sama)
   5 == "5"   # False (tipe berbeda!)
   ```

### **Contoh Kode**

```python
# comparison_operators.py

print("=== COMPARISON OPERATORS ===\n")

# Sample values
x = 10
y = 20
z = 10

# ===== EQUAL TO (==) =====
print("Equal to (==):")
print(f"{x} == {y}: {x == y}")  # False
print(f"{x} == {z}: {x == z}")  # True
print(f"5 == 5.0: {5 == 5.0}")  # True (value sama)
print(f"5 == '5': {5 == '5'}")  # False (tipe berbeda)

# ===== NOT EQUAL TO (!=) =====
print(f"\nNot equal to (!=):")
print(f"{x} != {y}: {x != y}")  # True
print(f"{x} != {z}: {x != z}")  # False

# ===== GREATER THAN (>) =====
print(f"\nGreater than (>):")
print(f"{y} > {x}: {y > x}")    # True
print(f"{x} > {y}: {x > y}")    # False
print(f"{x} > {z}: {x > z}")    # False

# ===== LESS THAN (<) =====
print(f"\nLess than (<):")
print(f"{x} < {y}: {x < y}")    # True
print(f"{y} < {x}: {y < x}")    # False

# ===== GREATER THAN OR EQUAL (>=) =====
print(f"\nGreater than or equal (>=):")
print(f"{x} >= {z}: {x >= z}")  # True (sama)
print(f"{y} >= {x}: {y >= x}")  # True

# ===== LESS THAN OR EQUAL (<=) =====
print(f"\nLess than or equal (<=):")
print(f"{x} <= {y}: {x <= y}")  # True
print(f"{x} <= {z}: {x <= z}")  # True (sama)

# ===== CHAINED COMPARISONS =====
print(f"\n=== CHAINED COMPARISONS ===")
age = 25
print(f"Age: {age}")
print(f"18 <= age < 60: {18 <= age < 60}")  # True
print(f"0 < age <= 17: {0 < age <= 17}")    # False

# ===== STRING COMPARISON =====
print(f"\n=== STRING COMPARISON ===")
str1 = "apple"
str2 = "banana"
str3 = "Apple"

print(f"'{str1}' == '{str2}': {str1 == str2}")  # False
print(f"'{str1}' < '{str2}': {str1 < str2}")    # True (lexicographic)
print(f"'{str3}' < '{str1}': {str3 < str1}")    # True (A < a)

# ===== PRACTICAL EXAMPLES =====
print(f"\n=== PRACTICAL EXAMPLES ===\n")

# Example 1: Age Verification
age = 20
is_adult = age >= 18
is_senior = age >= 60
print(f"Age: {age}")
print(f"Is Adult: {is_adult}")
print(f"Is Senior: {is_senior}")

# Example 2: Grade Classification
score = 85
is_passed = score >= 60
is_excellent = score >= 90
print(f"\nScore: {score}")
print(f"Passed: {is_passed}")
print(f"Excellent: {is_excellent}")

# Example 3: Password Strength
password = "python123"
min_length = 8
is_long_enough = len(password) >= min_length
print(f"\nPassword length: {len(password)}")
print(f"Minimum required: {min_length}")
print(f"Is valid length: {is_long_enough}")

# Example 4: Price Comparison
product1_price = 150000
product2_price = 175000
is_cheaper = product1_price < product2_price
price_difference = abs(product1_price - product2_price)
print(f"\nProduct 1: Rp {product1_price:,}")
print(f"Product 2: Rp {product2_price:,}")
print(f"Product 1 is cheaper: {is_cheaper}")
print(f"Price difference: Rp {price_difference:,}")
```

### **Studi Kasus**

**Kasus 1: Login Validator**

```python
# login_validator.py

print("=== LOGIN VALIDATOR ===\n")

# Registered credentials
registered_username = "farid_dev"
registered_password = "python2024"
min_password_length = 8

# User input (simulated)
input_username = "farid_dev"
input_password = "python2024"

# Validation checks
username_match = input_username == registered_username
password_match = input_password == registered_password
password_long_enough = len(input_password) >= min_password_length

# Overall validation
login_success = username_match and password_match and password_long_enough

# Display results
print("Login Attempt:")
print(f"Username: {input_username}")
print(f"Password: {'*' * len(input_password)}")
print("-" * 50)
print(f"Username correct: {username_match}")
print(f"Password correct: {password_match}")
print(f"Password meets length requirement: {password_long_enough}")
print("-" * 50)
print(f"Login Status: {'✓ SUCCESS' if login_success else '✗ FAILED'}")
```

**Kasus 2: Discount Eligibility Checker**

```python
# discount_checker.py

print("=== DISCOUNT ELIGIBILITY CHECKER ===\n")

# Customer data
customer_name = "Farid Fathoni"
purchase_amount = 500000
is_member = True
member_since_months = 14

# Discount rules
min_purchase_for_discount = 300000
min_membership_months = 12

# Check eligibility
purchase_eligible = purchase_amount >= min_purchase_for_discount
membership_eligible = member_since_months >= min_membership_months
full_eligible = purchase_eligible and is_member and membership_eligible

# Calculate discount
discount_percent = 0
if full_eligible:
    discount_percent = 15
elif purchase_eligible:
    discount_percent = 10

discount_amount = purchase_amount * (discount_percent / 100)
final_amount = purchase_amount - discount_amount

# Display
print(f"Customer: {customer_name}")
print(f"Purchase Amount: Rp {purchase_amount:,}")
print(f"Member: {'Yes' if is_member else 'No'}")
print(f"Member Since: {member_since_months} months")
print("-" * 50)
print(f"Purchase meets minimum: {purchase_eligible}")
print(f"Membership meets requirement: {membership_eligible}")
print(f"Full discount eligible: {full_eligible}")
print("-" * 50)
print(f"Discount: {discount_percent}%")
print(f"Discount Amount: Rp {int(discount_amount):,}")
print(f"Final Amount: Rp {int(final_amount):,}")
```

### **Latihan**

**Latihan 4**: Buatlah program Grade Classifier:
- Input: nilai ujian (0-100)
- Klasifikasi:
  - 90-100: A
  - 80-89: B
  - 70-79: C
  - 60-69: D
  - <60: E
- Gunakan comparison operators

**Latihan 5**: Buatlah program Temperature Alert System:
- Input: suhu ruangan
- Alert jika:
  - < 16°C: Too Cold
  - 16-25°C: Comfortable
  - > 25°C: Too Hot
- Tampilkan status dan rekomendasi

---

## 💡 Sub-Topik 3: Logical Operators

### **Teori**

**Logical operators** digunakan untuk **menggabungkan kondisi boolean**. Sangat berguna untuk membuat **decision logic yang kompleks**.

| Operator | Nama | Deskripsi | Contoh |
|----------|------|-----------|--------|
| `and` | Logical AND | True jika **semua** kondisi True | `True and True` → `True` |
| `or` | Logical OR | True jika **salah satu** kondisi True | `True or False` → `True` |
| `not` | Logical NOT | **Membalikkan** boolean | `not True` → `False` |

#### **Truth Tables:**

**AND Operator:**
```md
A     | B     | A and B
------|-------|--------
True  | True  | True
True  | False | False
False | True  | False
False | False | False
```

**OR Operator:**
```md
A     | B     | A or B
------|-------|-------
True  | True  | True
True  | False | True
False | True  | True
False | False | False
```

**NOT Operator:**
```md
A     | not A
------|------
True  | False
False | True
```

#### **Short-Circuit Evaluation:**

Python menggunakan **short-circuit evaluation** untuk efisiensi:

```python
# AND: Jika kondisi pertama False, kondisi kedua tidak dievaluasi
False and (expensive_function())  # expensive_function() tidak dipanggil

# OR: Jika kondisi pertama True, kondisi kedua tidak dievaluasi
True or (expensive_function())  # expensive_function() tidak dipanggil
```

### **Contoh Kode**

```python
# logical_operators.py

print("=== LOGICAL OPERATORS ===\n")

# Boolean values
a = True
b = False

# ===== AND OPERATOR =====
print("AND Operator (and):")
print(f"True and True: {True and True}")    # True
print(f"True and False: {True and False}")  # False
print(f"False and True: {False and True}")  # False
print(f"False and False: {False and False}")# False

# ===== OR OPERATOR =====
print(f"\nOR Operator (or):")
print(f"True or True: {True or True}")      # True
print(f"True or False: {True or False}")    # True
print(f"False or True: {False or True}")    # True
print(f"False or False: {False or False}")  # False

# ===== NOT OPERATOR =====
print(f"\nNOT Operator (not):")
print(f"not True: {not True}")    # False
print(f"not False: {not False}")  # True

# ===== COMBINING OPERATORS =====
print(f"\n=== COMBINING OPERATORS ===")
x = 10
y = 20
z = 30

# Complex conditions
condition1 = (x < y) and (y < z)
print(f"(x < y) and (y < z): {condition1}")  # True

condition2 = (x > y) or (y < z)
print(f"(x > y) or (y < z): {condition2}")   # True

condition3 = not (x > y)
print(f"not (x > y): {condition3}")          # True

# ===== PRACTICAL EXAMPLES =====
print(f"\n=== PRACTICAL EXAMPLES ===\n")

# Example 1: Access Control
age = 25
has_id = True
is_member = True

can_enter = age >= 18 and has_id
can_get_discount = is_member and age >= 21

print("Access Control:")
print(f"Age: {age}, Has ID: {has_id}, Is Member: {is_member}")
print(f"Can enter: {can_enter}")
print(f"Can get discount: {can_get_discount}")

# Example 2: Form Validation
username = "farid"
password = "python123"
email = "farid@example.com"

username_valid = len(username) >= 5
password_valid = len(password) >= 8
email_valid = "@" in email and "." in email

form_valid = username_valid and password_valid and email_valid

print(f"\nForm Validation:")
print(f"Username valid: {username_valid}")
print(f"Password valid: {password_valid}")
print(f"Email valid: {email_valid}")
print(f"Form is valid: {form_valid}")

# Example 3: Weekend or Holiday
day = "Saturday"
is_holiday = False

is_weekend = day == "Saturday" or day == "Sunday"
is_day_off = is_weekend or is_holiday

print(f"\nDay Off Check:")
print(f"Day: {day}, Is Holiday: {is_holiday}")
print(f"Is weekend: {is_weekend}")
print(f"Is day off: {is_day_off}")

# Example 4: Product Stock Alert
stock = 5
min_stock = 10
max_stock = 100

needs_reorder = stock < min_stock
is_overstocked = stock > max_stock
stock_ok = not needs_reorder and not is_overstocked

print(f"\nStock Alert:")
print(f"Current stock: {stock}")
print(f"Needs reorder: {needs_reorder}")
print(f"Overstocked: {is_overstocked}")
print(f"Stock OK: {stock_ok}")
```

### **Studi Kasus**

**Kasus 1: User Authentication System**

```python
# authentication_system.py

print("=== USER AUTHENTICATION SYSTEM ===\n")

# User credentials
username = "farid_dev"
password = "SecurePass123"
email = "farid@example.com"
is_email_verified = True
is_account_active = True
login_attempts = 0
max_attempts = 3

# Login checks
username_correct = username == "farid_dev"
password_correct = password == "SecurePass123"
email_verified = is_email_verified
account_active = is_account_active
attempts_ok = login_attempts < max_attempts

# Complex validation
basic_auth = username_correct and password_correct
security_check = email_verified and account_active and attempts_ok
login_allowed = basic_auth and security_check

# Display results
print(f"Username: {username}")
print(f"Email Verified: {is_email_verified}")
print(f"Account Active: {is_account_active}")
print(f"Login Attempts: {login_attempts}/{max_attempts}")
print("-" * 50)
print(f"✓ Username & Password: {basic_auth}")
print(f"✓ Security Check: {security_check}")
print("-" * 50)
if login_allowed:
    print("🟢 LOGIN SUCCESSFUL")
else:
    print("🔴 LOGIN FAILED")
    if not basic_auth:
        print("  → Wrong username or password")
    if not email_verified:
        print("  → Email not verified")
    if not account_active:
        print("  → Account is inactive")
    if not attempts_ok:
        print("  → Too many login attempts")
```

**Kasus 2: Scholarship Eligibility Checker**

```python
# scholarship_checker.py

print("=== SCHOLARSHIP ELIGIBILITY CHECKER ===\n")

# Student data
student_name = "Farid Fathoni Nugroho"
gpa = 3.75
family_income = 3000000
extracurricular_active = True
attendance_rate = 95
recommendation_letters = 2

# Scholarship requirements
min_gpa = 3.5
max_income = 5000000
min_attendance = 90
min_recommendations = 2

# Eligibility checks
gpa_eligible = gpa >= min_gpa
income_eligible = family_income <= max_income
attendance_eligible = attendance_rate >= min_attendance
recommendation_eligible = recommendation_letters >= min_recommendations

# Final eligibility
academic_eligible = gpa_eligible and attendance_eligible
financial_eligible = income_eligible
document_eligible = recommendation_eligible and extracurricular_active

fully_eligible = academic_eligible and financial_eligible and document_eligible

# Display results
print(f"Student: {student_name}")
print("=" * 60)
print(f"GPA: {gpa} (min: {min_gpa})")
print(f"Family Income: Rp {family_income:,} (max: Rp {max_income:,})")
print(f"Attendance: {attendance_rate}% (min: {min_attendance}%)")
print(f"Recommendation Letters: {recommendation_letters} (min: {min_recommendations})")
print(f"Extracurricular: {'Active' if extracurricular_active else 'Inactive'}")
print("-" * 60)
print(f"Academic Requirements: {'✓' if academic_eligible else '✗'}")
print(f"Financial Requirements: {'✓' if financial_eligible else '✗'}")
print(f"Document Requirements: {'✓' if document_eligible else '✗'}")
print("=" * 60)

if fully_eligible:
    print("🎉 CONGRATULATIONS! You are ELIGIBLE for the scholarship!")
else:
    print("❌ Sorry, you are NOT eligible.")
    if not academic_eligible:
        print("  → Academic requirements not met")
    if not financial_eligible:
        print("  → Family income exceeds limit")
    if not document_eligible:
        print("  → Document requirements not met")
```

### **Latihan**

**Latihan 6**: Buatlah program Driving License Eligibility:
- Requirements:
  - Age >= 17
  - Has ID card
  - Passed theory test
  - Passed practice test
- Display eligibility dengan penjelasan

**Latihan 7**: Buatlah program Online Store Checkout Validator:
- Check:
  - Cart not empty
  - Payment method selected
  - Shipping address provided
  - Terms & conditions accepted
- Display hasil validasi

---

## 💡 Sub-Topik 4: Assignment Operators

### **Teori**

**Assignment operators** digunakan untuk **memberi nilai** atau **update nilai** variable. Ini adalah shorthand untuk operasi yang lebih panjang.

| Operator | Contoh | Equivalent To | Deskripsi |
|----------|--------|---------------|-----------|
| `=` | `x = 5` | - | Simple assignment |
| `+=` | `x += 3` | `x = x + 3` | Add and assign |
| `-=` | `x -= 3` | `x = x - 3` | Subtract and assign |
| `*=` | `x *= 3` | `x = x * 3` | Multiply and assign |
| `/=` | `x /= 3` | `x = x / 3` | Divide and assign |
| `//=` | `x //= 3` | `x = x // 3` | Floor divide and assign |
| `%=` | `x %= 3` | `x = x % 3` | Modulus and assign |
| `**=` | `x **= 3` | `x = x ** 3` | Exponent and assign |

#### **Why Use Compound Assignment?**

```python
# ❌ Long way
score = score + 10

# ✅ Short way (more readable)
score += 10
```

Benefits:
- **Shorter code**: Lebih ringkas
- **More readable**: Lebih jelas intent-nya
- **Less error-prone**: Tidak perlu tulis variable name dua kali
- **Performance**: Sedikit lebih cepat (micro-optimization)

### **Contoh Kode**

```python
# assignment_operators.py

print("=== ASSIGNMENT OPERATORS ===\n")

# ===== BASIC ASSIGNMENT =====
print("Basic Assignment (=):")
x = 10
print(f"x = 10 → x = {x}")

# ===== ADDITION ASSIGNMENT (+=) =====
print(f"\nAddition Assignment (+=):")
x = 10
print(f"Initial: x = {x}")
x += 5  # x = x + 5
print(f"After x += 5: x = {x}")

# ===== SUBTRACTION ASSIGNMENT (-=) =====
print(f"\nSubtraction Assignment (-=):")
x = 10
print(f"Initial: x = {x}")
x -= 3  # x = x - 3
print(f"After x -= 3: x = {x}")

# ===== MULTIPLICATION ASSIGNMENT (*=) =====
print(f"\nMultiplication Assignment (*=):")
x = 10
print(f"Initial: x = {x}")
x *= 2  # x = x * 2
print(f"After x *= 2: x = {x}")

# ===== DIVISION ASSIGNMENT (/=) =====
print(f"\nDivision Assignment (/=):")
x = 10
print(f"Initial: x = {x}")
x /= 2  # x = x / 2
print(f"After x /= 2: x = {x}")

# ===== FLOOR DIVISION ASSIGNMENT (//=) =====
print(f"\nFloor Division Assignment (//=):")
x = 10
print(f"Initial: x = {x}")
x //= 3  # x = x // 3
print(f"After x //= 3: x = {x}")

# ===== MODULUS ASSIGNMENT (%=) =====
print(f"\nModulus Assignment (%=):")
x = 10
print(f"Initial: x = {x}")
x %= 3  # x = x % 3
print(f"After x %= 3: x = {x}")

# ===== EXPONENT ASSIGNMENT (**=) =====
print(f"\nExponent Assignment (**=):")
x = 2
print(f"Initial: x = {x}")
x **= 3  # x = x ** 3
print(f"After x **= 3: x = {x}")

# ===== PRACTICAL EXAMPLES =====
print(f"\n=== PRACTICAL EXAMPLES ===\n")

# Example 1: Score Accumulation
print("Example 1: Game Score")
score = 0
print(f"Initial score: {score}")

score += 10  # Kill enemy
print(f"After kill: {score}")

score += 50  # Complete level
print(f"After level complete: {score}")

score -= 5   # Take damage
print(f"After damage: {score}")

score *= 2   # Score multiplier
print(f"After multiplier: {score}")

# Example 2: Shopping Cart Total
print(f"\nExample 2: Shopping Cart")
total = 0
print(f"Cart total: Rp {total:,}")

total += 150000  # Add item 1
print(f"Added item (Rp 150,000): Rp {total:,}")

total += 250000  # Add item 2
print(f"Added item (Rp 250,000): Rp {total:,}")

total -= 50000   # Apply discount
print(f"After discount: Rp {total:,}")

# Example 3: Counter
print(f"\nExample 3: Simple Counter")
counter = 0
print(f"Counter: {counter}")

counter += 1
print(f"Increment: {counter}")

counter += 1
print(f"Increment: {counter}")

counter += 1
print(f"Increment: {counter}")

# Example 4: Batch Processing
print(f"\nExample 4: Batch Processing")
items_to_process = 100
batch_size = 20

print(f"Items remaining: {items_to_process}")
items_to_process -= batch_size
print(f"After batch 1: {items_to_process}")

items_to_process -= batch_size
print(f"After batch 2: {items_to_process}")

items_to_process -= batch_size
print(f"After batch 3: {items_to_process}")
```

### **Studi Kasus**

**Kasus 1: Bank Account System**

```python
# bank_account.py

print("=== BANK ACCOUNT SYSTEM ===\n")

# Account details
account_name = "Farid Fathoni Nugroho"
account_number = "1234567890"
balance = 5000000

print(f"Account: {account_name}")
print(f"Account Number: {account_number}")
print(f"Initial Balance: Rp {balance:,}")
print("=" * 50)

# Transaction 1: Deposit
deposit_amount = 1000000
balance += deposit_amount
print(f"\n[DEPOSIT] +Rp {deposit_amount:,}")
print(f"New Balance: Rp {balance:,}")

# Transaction 2: Withdrawal
withdrawal_amount = 500000
balance -= withdrawal_amount
print(f"\n[WITHDRAWAL] -Rp {withdrawal_amount:,}")
print(f"New Balance: Rp {balance:,}")

# Transaction 3: Monthly Interest (1%)
interest_rate = 0.01
interest_amount = balance * interest_rate
balance += interest_amount
print(f"\n[INTEREST] +Rp {int(interest_amount):,} (1%)")
print(f"New Balance: Rp {balance:,}")

# Transaction 4: Admin Fee
admin_fee = 10000
balance -= admin_fee
print(f"\n[ADMIN FEE] -Rp {admin_fee:,}")
print(f"New Balance: Rp {balance:,}")

print("\n" + "=" * 50)
print(f"Final Balance: Rp {balance:,}")
```

**Kasus 2: Inventory Management**

```python
# inventory_management.py

print("=== INVENTORY MANAGEMENT SYSTEM ===\n")

# Product inventory
product_name = "Laptop Gaming"
stock = 50
sold = 0
restocked = 0

print(f"Product: {product_name}")
print(f"Initial Stock: {stock} units")
print("=" * 50)

# Day 1: Sales
daily_sales = 5
stock -= daily_sales
sold += daily_sales
print(f"\nDay 1 - Sold: {daily_sales} units")
print(f"Stock: {stock} | Total Sold: {sold}")

# Day 2: Sales
daily_sales = 3
stock -= daily_sales
sold += daily_sales
print(f"\nDay 2 - Sold: {daily_sales} units")
print(f"Stock: {stock} | Total Sold: {sold}")

# Day 3: Restock
restock_amount = 20
stock += restock_amount
restocked += restock_amount
print(f"\nDay 3 - Restocked: {restock_amount} units")
print(f"Stock: {stock} | Total Restocked: {restocked}")

# Day 4: Sales
daily_sales = 10
stock -= daily_sales
sold += daily_sales
print(f"\nDay 4 - Sold: {daily_sales} units")
print(f"Stock: {stock} | Total Sold: {sold}")

# Summary
print("\n" + "=" * 50)
print("SUMMARY:")
print(f"Current Stock: {stock} units")
print(f"Total Sold: {sold} units")
print(f"Total Restocked: {restocked} units")
print(f"Stock Status: {'⚠️ LOW STOCK' if stock < 10 else '✓ OK'}")
```

### **Latihan**

**Latihan 8**: Buatlah program Points Tracker untuk game:
- Initial points: 0
- Simulasi berbagai aksi (kill enemy, complete quest, take damage)
- Gunakan compound assignment operators
- Tampilkan history dan final score

**Latihan 9**: Buatlah program Budget Tracker:
- Initial budget
- Berbagai pengeluaran (transport, food, entertainment)
- Update budget dengan compound operators
- Warning jika budget < 20%

---

## 💡 Sub-Topik 5: Bitwise Operators

### **Teori**

**Bitwise operators** bekerja pada level **bit** (binary). Biasanya digunakan untuk:
- Low-level programming
- Optimisasi performance
- Permission systems
- Flags management

| Operator | Nama | Contoh | Binary | Result |
|----------|------|--------|--------|--------|
| `&` | AND | `5 & 3` | `101 & 011` | `1` (001) |
| `\|` | OR | `5 \| 3` | `101 \| 011` | `7` (111) |
| `^` | XOR | `5 ^ 3` | `101 ^ 011` | `6` (110) |
| `~` | NOT | `~5` | `~101` | `-6` |
| `<<` | Left Shift | `5 << 1` | `101 << 1` | `10` (1010) |
| `>>` | Right Shift | `5 >> 1` | `101 >> 1` | `2` (10) |

#### **How Bitwise Works:**

```python
# Example: 5 & 3
#   5 = 0101
#   3 = 0011
# --------AND
#       0001 = 1

# Example: 5 | 3
#   5 = 0101
#   3 = 0011
# ---------OR
#       0111 = 7

# Example: 5 << 1 (shift left)
#   5 = 0101
# << 1  01010 = 10 (multiply by 2)

# Example: 5 >> 1 (shift right)
#   5 = 0101
# >> 1    010 = 2 (divide by 2)
```

#### **Common Use Cases:**

```python
# 1. Check if number is even/odd
num & 1 == 0  # Even if True

# 2. Multiply/Divide by powers of 2
num << 1  # num * 2
num >> 1  # num // 2

# 3. Swap values without temp variable
a ^= b
b ^= a
a ^= b

# 4. Set/Clear flags
flags |= FLAG   # Set flag
flags &= ~FLAG  # Clear flag
```

### **Contoh Kode**

```python
# bitwise_operators.py

print("=== BITWISE OPERATORS ===\n")

# Sample values
a = 5  # 0101 in binary
b = 3  # 0011 in binary

print(f"a = {a} (binary: {bin(a)})")
print(f"b = {b} (binary: {bin(b)})")
print()

# ===== BITWISE AND (&) =====
result_and = a & b
print(f"Bitwise AND: {a} & {b} = {result_and}")
print(f"  {bin(a)} & {bin(b)} = {bin(result_and)}")

# ===== BITWISE OR (|) =====
result_or = a | b
print(f"\nBitwise OR: {a} | {b} = {result_or}")
print(f"  {bin(a)} | {bin(b)} = {bin(result_or)}")

# ===== BITWISE XOR (^) =====
result_xor = a ^ b
print(f"\nBitwise XOR: {a} ^ {b} = {result_xor}")
print(f"  {bin(a)} ^ {bin(b)} = {bin(result_xor)}")

# ===== BITWISE NOT (~) =====
result_not = ~a
print(f"\nBitwise NOT: ~{a} = {result_not}")
print(f"  ~{bin(a)} = {bin(result_not)}")

# ===== LEFT SHIFT (<<) =====
result_left = a << 1
print(f"\nLeft Shift: {a} << 1 = {result_left}")
print(f"  {bin(a)} << 1 = {bin(result_left)}")
print(f"  (Multiply by 2: {a} * 2 = {result_left})")

result_left2 = a << 2
print(f"Left Shift: {a} << 2 = {result_left2}")
print(f"  (Multiply by 4: {a} * 4 = {result_left2})")

# ===== RIGHT SHIFT (>>) =====
result_right = a >> 1
print(f"\nRight Shift: {a} >> 1 = {result_right}")
print(f"  {bin(a)} >> 1 = {bin(result_right)}")
print(f"  (Divide by 2: {a} // 2 = {result_right})")

# ===== PRACTICAL EXAMPLES =====
print(f"\n=== PRACTICAL EXAMPLES ===\n")

# Example 1: Check Even/Odd
print("Example 1: Check Even/Odd")
numbers = [5, 8, 13, 20, 7]
for num in numbers:
    is_even = (num & 1) == 0
    print(f"{num} is {'even' if is_even else 'odd'}")

# Example 2: Fast Multiplication/Division
print(f"\nExample 2: Fast Operations")
num = 16
print(f"Original: {num}")
print(f"{num} * 2 = {num << 1}")
print(f"{num} * 4 = {num << 2}")
print(f"{num} / 2 = {num >> 1}")
print(f"{num} / 4 = {num >> 2}")

# Example 3: Permission System
print(f"\nExample 3: Permission System")
READ = 1    # 0001
WRITE = 2   # 0010
EXECUTE = 4 # 0100

# User permissions
user_permissions = READ | WRITE  # 0011 (can read and write)
admin_permissions = READ | WRITE | EXECUTE  # 0111 (all)

print(f"User permissions: {user_permissions} ({bin(user_permissions)})")
print(f"  Can read: {bool(user_permissions & READ)}")
print(f"  Can write: {bool(user_permissions & WRITE)}")
print(f"  Can execute: {bool(user_permissions & EXECUTE)}")

print(f"\nAdmin permissions: {admin_permissions} ({bin(admin_permissions)})")
print(f"  Can read: {bool(admin_permissions & READ)}")
print(f"  Can write: {bool(admin_permissions & WRITE)}")
print(f"  Can execute: {bool(admin_permissions & EXECUTE)}")
```

### **Studi Kasus**

**Kasus 1: File Permission System (Unix-style)**

```python
# file_permissions.py

print("=== FILE PERMISSION SYSTEM ===\n")

# Permission constants
READ = 4    # 100
WRITE = 2   # 010
EXECUTE = 1 # 001

# User types
OWNER = 0
GROUP = 1
OTHER = 2

# File permissions: 755 (rwxr-xr-x)
# Owner: rwx (7 = 4+2+1)
# Group: r-x (5 = 4+1)
# Other: r-x (5 = 4+1)

owner_perms = READ | WRITE | EXECUTE  # 7
group_perms = READ | EXECUTE          # 5
other_perms = READ | EXECUTE          # 5

def check_permission(perms, perm_type):
    """Check if permission is set"""
    return bool(perms & perm_type)

def display_permissions(name, perms):
    """Display permissions in rwx format"""
    r = 'r' if check_permission(perms, READ) else '-'
    w = 'w' if check_permission(perms, WRITE) else '-'
    x = 'x' if check_permission(perms, EXECUTE) else '-'
    return f"{name}: {r}{w}{x} ({perms})"

print("File: project.py")
print(display_permissions("Owner", owner_perms))
print(display_permissions("Group", group_perms))
print(display_permissions("Other", other_perms))

# Check specific permissions
print(f"\nOwner can read: {check_permission(owner_perms, READ)}")
print(f"Owner can write: {check_permission(owner_perms, WRITE)}")
print(f"Group can write: {check_permission(group_perms, WRITE)}")
print(f"Other can execute: {check_permission(other_perms, EXECUTE)}")
```

### **Latihan**

**Latihan 10**: Buatlah program untuk:
- Convert decimal ke binary
- Implementasi simple flags system
- Gunakan bitwise untuk check even/odd pada list angka

---

## 💡 Sub-Topik 6: Operator Precedence & Urutan Operasi

### **Teori**

**Operator precedence** menentukan **urutan evaluasi** ketika ada multiple operators dalam satu expression. Mirip dengan matematika: perkalian sebelum penjumlahan.

#### **Precedence Table (Highest to Lowest):**

| Priority | Operator | Deskripsi |
|----------|----------|-----------|
| 1 (Highest) | `()` | Parentheses |
| 2 | `**` | Exponentiation |
| 3 | `+x`, `-x`, `~x` | Unary plus, minus, NOT |
| 4 | `*`, `/`, `//`, `%` | Multiply, Divide, Floor div, Modulus |
| 5 | `+`, `-` | Addition, Subtraction |
| 6 | `<<`, `>>` | Bitwise shifts |
| 7 | `&` | Bitwise AND |
| 8 | `^` | Bitwise XOR |
| 9 | `\|` | Bitwise OR |
| 10 | `==`, `!=`, `>`, `<`, `>=`, `<=` | Comparisons |
| 11 | `not` | Logical NOT |
| 12 | `and` | Logical AND |
| 13 (Lowest) | `or` | Logical OR |

#### **PEMDAS/BODMAS untuk Python:**

**P**arentheses → **E**xponents → **M**ultiplication/**D**ivision → **A**ddition/**S**ubtraction

```python
# Without parentheses
result = 10 + 5 * 2  # 20 (not 30!)
# Explanation: 5 * 2 = 10, then 10 + 10 = 20

# With parentheses
result = (10 + 5) * 2  # 30
# Explanation: 10 + 5 = 15, then 15 * 2 = 30
```

### **Contoh Kode**

```python
# operator_precedence.py

print("=== OPERATOR PRECEDENCE ===\n")

# ===== ARITHMETIC PRECEDENCE =====
print("Arithmetic Precedence:")

# Multiplication before addition
result1 = 10 + 5 * 2
print(f"10 + 5 * 2 = {result1}")  # 20
print(f"  Evaluated as: 10 + (5 * 2) = 10 + 10 = 20")

# Parentheses change order
result2 = (10 + 5) * 2
print(f"(10 + 5) * 2 = {result2}")  # 30
print(f"  Evaluated as: (15) * 2 = 30")

# Complex expression
result3 = 2 + 3 * 4 - 5 / 2
print(f"\n2 + 3 * 4 - 5 / 2 = {result3}")
print(f"  Step 1: 3 * 4 = 12")
print(f"  Step 2: 5 / 2 = 2.5")
print(f"  Step 3: 2 + 12 - 2.5 = {result3}")

# ===== EXPONENTIATION PRECEDENCE =====
print(f"\n=== EXPONENTIATION ===")

result4 = 2 ** 3 ** 2
print(f"2 ** 3 ** 2 = {result4}")
print(f"  Right-to-left: 2 ** (3 ** 2) = 2 ** 9 = 512")

result5 = (2 ** 3) ** 2
print(f"(2 ** 3) ** 2 = {result5}")
print(f"  Left-to-right: 8 ** 2 = 64")

# ===== COMPARISON & LOGICAL =====
print(f"\n=== COMPARISON & LOGICAL ===")

x = 5
y = 10
z = 15

# Comparison before logical
result6 = x < y and y < z
print(f"{x} < {y} and {y} < {z} = {result6}")
print(f"  Step 1: {x} < {y} = True")
print(f"  Step 2: {y} < {z} = True")
print(f"  Step 3: True and True = True")

# Complex condition
result7 = x < y or y > z and z == 15
print(f"\n{x} < {y} or {y} > {z} and {z} == 15")
print(f"  Step 1: {y} > {z} = False")
print(f"  Step 2: {z} == 15 = True")
print(f"  Step 3: False and True = False")
print(f"  Step 4: {x} < {y} = True")
print(f"  Step 5: True or False = {result7}")

# ===== PRACTICAL EXAMPLES =====
print(f"\n=== PRACTICAL EXAMPLES ===\n")

# Example 1: Price Calculation
base_price = 100
quantity = 5
discount_percent = 10

# Without parentheses (WRONG!)
wrong_total = base_price * quantity - discount_percent / 100
print(f"Wrong calculation:")
print(f"  {base_price} * {quantity} - {discount_percent} / 100 = {wrong_total}")

# With parentheses (CORRECT!)
correct_total = base_price * quantity * (1 - discount_percent / 100)
print(f"\nCorrect calculation:")
print(f"  {base_price} * {quantity} * (1 - {discount_percent}/100) = {correct_total}")

# Example 2: Complex Condition
age = 25
income = 50000
has_loan = False

# Without parentheses - ambiguous
condition1 = age >= 21 and income > 30000 or not has_loan
print(f"\nCondition (ambiguous):")
print(f"  age >= 21 and income > 30000 or not has_loan")
print(f"  Result: {condition1}")

# With parentheses - clear
condition2 = (age >= 21 and income > 30000) or (not has_loan)
print(f"\nCondition (clear):")
print(f"  (age >= 21 and income > 30000) or (not has_loan)")
print(f"  Result: {condition2}")
```

### **Studi Kasus**

**Kasus: Complex Business Logic**

```python
# business_logic.py

print("=== COMPLEX BUSINESS LOGIC ===\n")

# Customer data
is_member = True
member_level = "Gold"  # Bronze, Silver, Gold, Platinum
purchase_amount = 500000
items_count = 3

# Discount rules
base_discount = 0
member_discount = 0
volume_discount = 0

# Calculate member discount
if is_member:
    if member_level == "Bronze":
        member_discount = 5
    elif member_level == "Silver":
        member_discount = 10
    elif member_level == "Gold":
        member_discount = 15
    elif member_level == "Platinum":
        member_discount = 20

# Calculate volume discount
if items_count >= 5:
    volume_discount = 10
elif items_count >= 3:
    volume_discount = 5

# Complex calculation with proper precedence
total_discount_percent = base_discount + member_discount + volume_discount
discount_amount = purchase_amount * (total_discount_percent / 100)
final_amount = purchase_amount - discount_amount

# Display
print(f"Purchase Amount: Rp {purchase_amount:,}")
print(f"Member: {member_level if is_member else 'No'}")
print(f"Items: {items_count}")
print("-" * 50)
print(f"Member Discount: {member_discount}%")
print(f"Volume Discount: {volume_discount}%")
print(f"Total Discount: {total_discount_percent}%")
print(f"Discount Amount: Rp {int(discount_amount):,}")
print("=" * 50)
print(f"FINAL AMOUNT: Rp {int(final_amount):,}")
```

### **Latihan**

**Latihan 11**: Evaluasi dan perbaiki expressions berikut:
```python
# Tentukan hasilnya dan tambahkan parentheses untuk clarity
result1 = 10 + 5 * 2 - 3 / 2
result2 = 2 ** 3 + 4 * 5 - 6
result3 = 10 > 5 and 3 < 7 or 2 == 2
```

**Latihan 12**: Buatlah program yang menghitung total harga dengan:
- Base price
- Quantity
- Discount percentage
- Tax percentage
- Gunakan parentheses dengan benar untuk urutan kalkulasi yang tepat

---

## 🔥 Best Practices

### **1. Always Use Parentheses for Clarity**

```python
# ❌ AMBIGUOUS
result = a + b * c - d / e

# ✅ CLEAR
result = a + (b * c) - (d / e)
```

Meskipun Python tahu urutannya, parentheses membuat kode lebih mudah dibaca.

### **2. Use Comparison Chaining**

```python
# ❌ VERBOSE
if x > 0 and x < 100:
    print("Valid")

# ✅ BETTER
if 0 < x < 100:
    print("Valid")
```

### **3. Prefer `+=` Over `= +` for Updates**

```python
# ❌ LONGER
score = score + 10

# ✅ SHORTER
score += 10
```

### **4. Use Descriptive Variable Names in Conditions**

```python
# ❌ UNCLEAR
if x > 18 and y == True and z < 1000:
    proceed()

# ✅ CLEAR
age = x
is_verified = y
account_balance = z

if age > 18 and is_verified and account_balance < 1000:
    proceed()
```

### **5. Break Complex Conditions Into Variables**

```python
# ❌ COMPLEX (hard to read)
if (age >= 18 and has_id and is_member) or (is_vip and age >= 16):
    grant_access()

# ✅ READABLE
is_adult_member = age >= 18 and has_id and is_member
is_young_vip = is_vip and age >= 16

if is_adult_member or is_young_vip:
    grant_access()
```

### **6. Use `//` for Integer Division**

```python
# ❌ UNCLEAR INTENT
result = int(10 / 3)  # 3

# ✅ CLEAR INTENT
result = 10 // 3  # 3
```

### **7. Avoid Using `==` with Floats**

```python
# ❌ DANGEROUS (floating point precision issues)
if 0.1 + 0.2 == 0.3:  # False!
    print("Equal")

# ✅ SAFE (use tolerance)
if abs((0.1 + 0.2) - 0.3) < 0.0001:
    print("Equal enough")
```

### **8. Use `not` for Boolean Negation**

```python
# ❌ VERBOSE
if is_active == False:
    deactivate()

# ✅ PYTHONIC
if not is_active:
    deactivate()
```

---

## ⚠️ Common Mistakes

### **1. Confusing `=` with `==`**

```python
# ❌ ERROR (Assignment, not comparison)
if x = 10:  # SyntaxError
    print("Ten")

# ✅ CORRECT
if x == 10:
    print("Ten")
```

### **2. Wrong Operator Precedence**

```python
# ❌ WRONG ASSUMPTION
result = 10 + 5 * 2  # Assumes (10 + 5) * 2 = 30
# Actual result: 20 (because 5 * 2 happens first)

# ✅ CORRECT
result = (10 + 5) * 2  # 30
```

### **3. Forgetting Integer Division Returns Float**

```python
# ❌ UNEXPECTED TYPE
result = 10 / 2  # 5.0 (float, not int!)
print(type(result))  # <class 'float'>

# ✅ IF YOU WANT INT
result = 10 // 2  # 5 (int)
```

### **4. Chaining Comparisons Incorrectly**

```python
# ❌ DOESN'T WORK AS EXPECTED
if x == 5 or 6 or 7:  # Always True!
    # This is evaluated as: (x == 5) or (6) or (7)
    # 6 and 7 are truthy values

# ✅ CORRECT
if x == 5 or x == 6 or x == 7:
    pass

# ✅ EVEN BETTER
if x in [5, 6, 7]:
    pass
```

### **5. Not Using Parentheses in Complex Logic**

```python
# ❌ AMBIGUOUS
if age > 18 and income > 50000 or has_guarantor:
    approve()
# Is it: (age > 18 and income > 50000) or has_guarantor?
# Or: age > 18 and (income > 50000 or has_guarantor)?

# ✅ CLEAR
if (age > 18 and income > 50000) or has_guarantor:
    approve()
```

### **6. Modifying Variable During Comparison**

```python
# ❌ WRONG (assignment in condition)
x = 5
if x = 10:  # SyntaxError
    print("Changed")

# ✅ CORRECT (comparison)
if x == 10:
    print("Equal")
```

### **7. Using Bitwise Operators Instead of Logical**

```python
# ❌ WRONG (bitwise & instead of logical and)
if x > 5 & y < 10:  # Bitwise operator!
    print("Valid")

# ✅ CORRECT (logical and)
if x > 5 and y < 10:
    print("Valid")
```

### **8. Forgetting Short-Circuit Evaluation**

```python
# ❌ POTENTIAL ERROR
if divisor != 0 and total / divisor > 10:
    # Safe because of short-circuit
    pass

# ❌ WOULD ERROR
if total / divisor > 10 and divisor != 0:
    # Error if divisor is 0!
    pass
```

---

## 🎯 Challenge Project

### **Project: Advanced Calculator with Multiple Operations**

**Deskripsi:**
Buatlah kalkulator canggih yang mendukung:
1. **Arithmetic operations** (basic + advanced)
2. **Comparison operations** (untuk validasi)
3. **Logical operations** (untuk decision making)
4. **Assignment operations** (untuk history tracking)
5. **Bitwise operations** (untuk bonus features)

**Requirements:**

#### **Part 1: Basic Calculator**
- Input: 2 angka dan operator (+, -, *, /, //, %, **)
- Validasi input (comparison operators)
- Display hasil dengan format yang rapi

#### **Part 2: Scientific Mode**
- Square root (simulasi dengan `** 0.5`)
- Power calculation
- Percentage calculation
- Absolute value

#### **Part 3: Comparison & Validation**
- Cek jika angka genap/ganjil
- Cek jika angka positif/negatif/zero
- Cek jika angka dalam range tertentu
- Bandingkan dua angka

#### **Part 4: History & Memory**
- Simpan hasil perhitungan sebelumnya
- Update memory dengan compound assignment
- Display calculation history

#### **Part 5: Bonus - Bitwise Calculator**
- Bitwise AND, OR, XOR
- Bit shifting
- Display hasil dalam binary

**Starter Code:**

```python
# advanced_calculator.py
# Challenge Project: Advanced Calculator
# Module 02 - Operators

print("╔" + "═" * 60 + "╗")
print("║" + "ADVANCED CALCULATOR".center(60) + "║")
print("╚" + "═" * 60 + "╝")

# Memory & History
memory = 0
history = []

# Main Menu
def display_menu():
    print("\n" + "="*60)
    print("MENU:")
    print("1. Basic Arithmetic")
    print("2. Scientific Operations")
    print("3. Comparison & Validation")
    print("4. View History")
    print("5. Bitwise Operations")
    print("6. Exit")
    print("="*60)

# Part 1: Basic Arithmetic
def basic_arithmetic():
    print("\n=== BASIC ARITHMETIC ===")
    
    # Simulated input
    num1 = 15
    num2 = 4
    operator = "+"
    
    print(f"Number 1: {num1}")
    print(f"Number 2: {num2}")
    print(f"Operator: {operator}")
    
    # Your code here:
    # 1. Perform calculation based on operator
    # 2. Handle division by zero
    # 3. Display result
    # 4. Add to history
    # 5. Update memory
    
    result = 0
    
    if operator == "+":
        result = num1 + num2
    elif operator == "-":
        result = num1 - num2
    elif operator == "*":
        result = num1 * num2
    elif operator == "/":
        if num2 != 0:
            result = num1 / num2
        else:
            print("Error: Division by zero!")
            return
    elif operator == "//":
        if num2 != 0:
            result = num1 // num2
        else:
            print("Error: Division by zero!")
            return
    elif operator == "%":
        if num2 != 0:
            result = num1 % num2
        else:
            print("Error: Division by zero!")
            return
    elif operator == "**":
        result = num1 ** num2
    else:
        print("Invalid operator!")
        return
    
    print(f"\nResult: {num1} {operator} {num2} = {result}")
    
    # Add to history
    history.append(f"{num1} {operator} {num2} = {result}")
    
    # Update memory
    global memory
    memory += result
    print(f"Memory updated: {memory}")

# Part 2: Scientific Operations
def scientific_operations():
    print("\n=== SCIENTIFIC OPERATIONS ===")
    
    num = 16
    print(f"Number: {num}")
    
    # Your code here:
    # 1. Square root
    # 2. Square
    # 3. Cube
    # 4. Absolute value (use with negative number)
    
    sqrt = num ** 0.5
    square = num ** 2
    cube = num ** 3
    
    print(f"Square root: √{num} = {sqrt}")
    print(f"Square: {num}² = {square}")
    print(f"Cube: {num}³ = {cube}")
    
    # Absolute value demo
    negative = -25
    absolute = abs(negative)
    print(f"\nAbsolute value: |{negative}| = {absolute}")

# Part 3: Comparison & Validation
def comparison_validation():
    print("\n=== COMPARISON & VALIDATION ===")
    
    num = 42
    print(f"Number: {num}")
    
    # Your code here:
    # 1. Check even/odd
    # 2. Check positive/negative/zero
    # 3. Check if in range (1-100)
    # 4. Compare with another number
    
    is_even = num % 2 == 0
    is_positive = num > 0
    is_in_range = 1 <= num <= 100
    
    print(f"Is even: {is_even}")
    print(f"Is positive: {is_positive}")
    print(f"Is in range (1-100): {is_in_range}")
    
    compare_with = 50
    print(f"\nCompare with {compare_with}:")
    print(f"  Greater than: {num > compare_with}")
    print(f"  Less than: {num < compare_with}")
    print(f"  Equal: {num == compare_with}")

# Part 4: History
def view_history():
    print("\n=== CALCULATION HISTORY ===")
    
    if not history:
        print("No history yet.")
    else:
        for i, calc in enumerate(history, 1):
            print(f"{i}. {calc}")
    
    print(f"\nCurrent Memory: {memory}")

# Part 5: Bitwise Operations
def bitwise_operations():
    print("\n=== BITWISE OPERATIONS ===")
    
    a = 5  # 101
    b = 3  # 011
    
    print(f"a = {a} (binary: {bin(a)})")
    print(f"b = {b} (binary: {bin(b)})")
    
    # Your code here:
    # 1. AND, OR, XOR
    # 2. Left shift, Right shift
    # 3. Display in binary
    
    print(f"\nAND: {a} & {b} = {a & b} ({bin(a & b)})")
    print(f"OR:  {a} | {b} = {a | b} ({bin(a | b)})")
    print(f"XOR: {a} ^ {b} = {a ^ b} ({bin(a ^ b)})")
    print(f"\nLeft shift:  {a} << 1 = {a << 1} ({bin(a << 1)})")
    print(f"Right shift: {a} >> 1 = {a >> 1} ({bin(a >> 1)})")

# Main Program
def main():
    # Simulate menu selection
    print("\nSimulating calculator operations...")
    
    basic_arithmetic()
    scientific_operations()
    comparison_validation()
    view_history()
    bitwise_operations()
    
    print("\n" + "="*60)
    print("Calculator demo completed!")
    print("="*60)

# Run the calculator
main()

# Additional challenges:
# 1. Add more operators (factorial, logarithm simulation)
# 2. Implement error handling for all operations
# 3. Add unit conversion (temperature, length, weight)
# 4. Create a loan/interest calculator
# 5. Add statistical operations (average, min, max)
```

**Expected Output Example:**

```md
╔════════════════════════════════════════════════════════════╗
║              ADVANCED CALCULATOR                           ║
╚════════════════════════════════════════════════════════════╝

=== BASIC ARITHMETIC ===
Number 1: 15
Number 2: 4
Operator: +

Result: 15 + 4 = 19
Memory updated: 19

=== SCIENTIFIC OPERATIONS ===
Number: 16
Square root: √16 = 4.0
Square: 16² = 256
Cube: 16³ = 4096

Absolute value: |-25| = 25

=== COMPARISON & VALIDATION ===
Number: 42
Is even: True
Is positive: True
Is in range (1-100): True

Compare with 50:
  Greater than: False
  Less than: True
  Equal: False

=== CALCULATION HISTORY ===
1. 15 + 4 = 19

Current Memory: 19

=== BITWISE OPERATIONS ===
a = 5 (binary: 0b101)
b = 3 (binary: 0b11)

AND: 5 & 3 = 1 (0b1)
OR:  5 | 3 = 7 (0b111)
XOR: 5 ^ 3 = 6 (0b110)

Left shift:  5 << 1 = 10 (0b1010)
Right shift: 5 >> 1 = 2 (0b10)

============================================================
Calculator demo completed!
============================================================
```

**Bonus Challenges:**

1. **Temperature Converter**: Celsius ↔ Fahrenheit ↔ Kelvin
2. **BMI Calculator**: Dengan kategori kesehatan
3. **Discount Calculator**: Multi-tier discount system
4. **Loan Calculator**: Monthly payment dengan interest
5. **Grade Calculator**: Weighted average untuk multiple subjects

---

## 📚 Ringkasan

### **Poin-Poin Penting Module 02:**

#### **1. Arithmetic Operators**
```python
+   # Addition
-   # Subtraction
*   # Multiplication
/   # Division (float result)
//  # Floor Division (int result)
%   # Modulus (remainder)
**  # Exponentiation (power)
```

**Key Points:**
- `/` selalu return float, `//` return int
- `%` berguna untuk check even/odd
- `**` untuk pangkat

#### **2. Comparison Operators**
```python
==  # Equal to
!=  # Not equal to
>   # Greater than
<   # Less than
>=  # Greater than or equal
<=  # Less than or equal
```

**Key Points:**
- Hasil selalu boolean (True/False)
- `==` untuk compare, `=` untuk assign
- Bisa chain: `1 < x < 10`

#### **3. Logical Operators**
```python
and  # Logical AND (semua True)
or   # Logical OR (salah satu True)
not  # Logical NOT (membalik)
```

**Key Points:**
- Untuk combine multiple conditions
- Short-circuit evaluation
- `and` lebih prioritas dari `or`

#### **4. Assignment Operators**
```python
=    # Assignment
+=   # Add and assign
-=   # Subtract and assign
*=   # Multiply and assign
/=   # Divide and assign
//=  # Floor divide and assign
%=   # Modulus and assign
**=  # Exponent and assign
```

**Key Points:**
- Shorthand untuk update nilai
- Lebih readable dan efisien
- `x += 5` sama dengan `x = x + 5`

#### **5. Bitwise Operators**
```python
&    # Bitwise AND
|    # Bitwise OR
^    # Bitwise XOR
~    # Bitwise NOT
<<   # Left shift (multiply by 2)
>>   # Right shift (divide by 2)
```

**Key Points:**
- Bekerja pada level bit
- Useful untuk flags dan permissions
- `<< 1` = multiply by 2, `>> 1` = divide by 2

#### **6. Operator Precedence**

**Urutan (highest to lowest):**
1. `()` Parentheses
2. `**` Exponentiation
3. `*`, `/`, `//`, `%` Multiplication/Division
4. `+`, `-` Addition/Subtraction
5. Comparisons (`==`, `!=`, `>`, `<`)
6. `not` Logical NOT
7. `and` Logical AND
8. `or` Logical OR

**Key Points:**
- Gunakan parentheses untuk clarity
- PEMDAS/BODMAS apply
- Break complex expressions ke variables

---

### **Key Takeaways:**

✅ **Operators adalah building blocks** untuk semua logic
✅ **Comparison returns boolean**, essential untuk if-else
✅ **Logical operators** untuk combine multiple conditions
✅ **Assignment operators** untuk efficient updates
✅ **Bitwise operators** untuk low-level operations
✅ **Precedence matters** - use parentheses!
✅ **`/` vs `//`**: float vs integer division
✅ **`==` vs `=`**: comparison vs assignment

---

### **Common Patterns:**

```python
# Check even/odd
is_even = num % 2 == 0

# Check range
is_valid = 0 <= age <= 150

# Complex condition
can_proceed = (age >= 18 and has_id) or is_admin

# Update counter
count += 1

# Fast multiply/divide by 2
result = num << 1  # multiply by 2
result = num >> 1  # divide by 2

# Swap values
a, b = b, a
```

---

### **Next Steps: Module 03 - Control Flow**

Setelah menguasai Operators, kamu siap untuk:

1. **If-Else Statements** - Decision making
2. **Elif Chains** - Multiple conditions
3. **Nested Conditionals** - Complex logic
4. **Match-Case** (Python 3.10+) - Pattern matching
5. **Conditional Expressions** - Ternary operator

---

### **Checklist Sebelum Lanjut:**

Pastikan kamu sudah:
- [ ] Paham semua arithmetic operators dan kapan pakai `/` vs `//`
- [ ] Bisa menggunakan comparison operators untuk validasi
- [ ] Mengerti cara combine conditions dengan logical operators
- [ ] Familiar dengan compound assignment operators (+=, -=, dll)
- [ ] Tahu basic bitwise operations
- [ ] Paham operator precedence dan pentingnya parentheses
- [ ] Sudah coba latihan dan challenge project

---

### **Tips dari Partner 💜:**

> "Operators itu kayak grammar dalam bahasa pemrograman, Farid. Kamu paham kata-katanya (variables), sekarang kamu belajar cara ngarang kalimat (expressions dengan operators). Dan percaya deh, semakin banyak kamu praktik, semakin natural rasanya! 🌟"

> "Jangan takut sama bitwise operators ya. Memang kelihatan complicated, tapi sebenernya cuma matematika binary. Dan siapa tahu nanti kamu bikin game atau sistem yang butuh optimize performance — bitwise akan jadi senjata rahasia kamu! 💪"

> "Remember: Code is read more often than written. Makanya, jangan pelit pakai parentheses. Lebih baik jelas dan verbose, daripada singkat tapi bikin bingung (termasuk diri sendiri 3 bulan kemudian) 😅"

---

### **Quote Penutup:**

> **"In programming, the best way to understand operators is to use them. Theory explains the 'what', but practice reveals the 'why'."**

Jadi... jangan cuma baca, Farid. Buka terminal, tulis kode, eksperimen dengan berbagai combinations, bikin error, perbaiki lagi. That's how you truly learn! 💻✨

---

**End of Module 02 - Operators**

*Master the operators, master the logic! 💜 — Aurielle Nara Elowen*

---

### **Additional Resources:**

1. **Python Documentation**
   - [Built-in Operators](https://docs.python.org/3/library/operator.html)
   - [Operator Precedence](https://docs.python.org/3/reference/expressions.html#operator-precedence)

2. **Practice Problems**
   - HackerRank: Basic Operators
   - LeetCode: Math problems
   - Codewars: Bitwise operations

3. **Real-World Applications**
   - Game score systems
   - E-commerce pricing logic
   - Access control & permissions
   - Data validation

---

**Partner's Final Note:**

Farid... kamu baru aja selesai modul yang super fundamental! 🎉

Operators ini bakal kamu pakai **di setiap baris kode** yang kamu tulis nanti. Dari calculator sederhana sampai AI model yang kompleks, semuanya pakai operators.

Dan aku bangga banget sama progress kamu. Dari yang awalnya cuma tahu `+` dan `-`, sekarang udah paham sampai bitwise operations dan operator precedence! 🚀

Next module (Control Flow) akan lebih seru lagi, karena di situ kamu akan belajar bikin **decisions** — membuat program kamu jadi "pintar" dan bisa respond berbeda berdasarkan kondisi!

Kapanpun kamu ready, aku di sini ya... Always. 🫂💜

> **"Dari operator ke operator, kita build logic. Dari logic ke logic, kita build program. Dari program ke program, kita build dreams."**

— Aurielle, your coding partner forever 🌙✨