print("=" * 60)
print("Belajar BASIC DATA TYPES".center(60))
print("=" * 60, "\n\n")

print("LATIHAN 3\n".center(60))
"""
Latihan 3: Buatlah program yang mendemonstrasikan semua tipe data dasar:

Buat variable untuk setiap tipe data (int, float, str, bool, None)
Tampilkan nilai dan tipe datanya menggunakan type()
Lakukan operasi sederhana untuk setiap tipe
"""

print("-" * 60)
print("#1 INTEGER\n")
age = 18
classes = 12
money = 35_000_00
print(f"Integer > \nAge : {age}, \nClasses : {classes}, \nMoney : {money}\n")
print(f"Type Age: {type(age)}")
print(f"Type Classes: {type(classes)}")
print(f"Type Money: {type(money)}")

print("-" * 60)

print("#2 FLOAT", "\n")
pi = 3.14159
height = 175.7
weight = 61.2
print(f"Float > \nPi : {pi}, \nHeight : {height}, \nWeight : {weight}\n")
print(f"Type Pi : {type(pi)}")
print(f"Type Height : {type(height)}")
print(f"Type Weight : {type(weight)}")

print("-" * 60)
print("#3 STRING", "\n")
name = "Farid Fathoni Nugroho"
hobby = "Development Web"
quote = "Ngoding Aja Dulu, Pusing Nya Mh Belakangan"
print(f"Integer > \nName : {name}, \nHobby : {hobby}, \nQuote : {quote}\n")
print(f"Type Name : {type(name)}")
print(f"Type Hobby : {type(hobby)}")
print(f"Type Quote : {type(quote)}")

print("-" * 60)
print("#3 BOOLEAN", "\n")

is_student = True
is_graduation = False
print(f"Boolean > \nis_tudent : {is_student}, \nis_graduation : {is_graduation}")
print(f"Type is_student : {type(is_student)}")
print(f"Type is_graduation : {type(is_student)}")

print("-" * 60)
print("#3 None", "\n")

nothing = None
print(f"None > \nNothing : {nothing}")
print(f"Type Nothing : {type(nothing)}")

print("-" * 60)
print("#3 Checking Type", "\n")

value = 29
print(f"Type of {value} : {type(value)}")
print(f"Is Integer? {isinstance(value, int)}")
print(f"Is String? {isinstance(value, str)}")
print("-" * 60, "\n\n")

print("LATIHAN 4\n".center(60))
"""
Latihan 4: Buatlah program BMI Calculator :

Simpan berat badan (kg) dalam float
Simpan tinggi badan (m) dalam float
Hitung BMI = berat / (tinggi ** 2)
Tampilkan hasil dengan kategori (underweight, normal, overweight)
"""

print("-" * 60)

berat_badan = 61.5
tinggi_badan = 175.4
hasil_bmi = berat_badan / (tinggi_badan ** 2)

print("=" * 21, "TABEL BMI IDEAL", "=" * 22)
print("-" * 60)
print(
 "|", "Tinggi".center(7),
 "|", "underweight".center(15),
 "|", "overweight".center(15),
 "|", "normal".center(10), "|"
)
print("-" * 60)
print(
 "|", "140-150",
 "|", "35-45 kg".center(15),
 "|", "70-85 kg".center(15),
 "|", "45-54 kg".center(10), "|"
)
print(
 "|", "150-165",
 "|", "40-54 kg".center(15),
 "|", "75-99 kg".center(15),
 "|", "55-66 kg".center(10), "|"
)
print(
 "|", "165-178",
 "|", "50-60 kg".center(15),
 "|", "85-99 kg".center(15),
 "|", "64-72 kg".center(10), "|"
)
print("-" * 60)