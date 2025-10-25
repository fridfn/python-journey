print("=" * 60)
print("Belajar deklarasi variabel dan assigment".center(60))
print("=" * 60)

nama = "farid" # string
kelas = 22 # integer / number / angka
tinggi = 175.7 # float / desimal

print("nama :", nama)
print("kelas :", kelas)
print("tinggi :", tinggi, "\n")

x, y, z = "ini value x", "ini value y", "ini value z"
print("cetak nilai dari multiple assigment")
print(x, y, z, "\n")

x = y = z = 100
print("cetak nilai dari multiple variable but same value")
print(x, y, z, "\n")

x = 5
y = 29
print(f"sebelum di swap nilai x = {x} dan y = {y}")
x, y = y, x
print(f"sesudah di swap nilai x = {x} dan y = {y}\n")

number = 5062006
print(number, type(number))

nama = "Farid Fathoni N"
print(nama, type(nama))

tinggi = 175.7
print(tinggi, type(tinggi), "\n")

print("=" * 60, "\n")
print("LATIHAN 1\n".center(60))
"""
Latihan 2: Buatlah program untuk menghitung luas dan keliling persegi panjang:

Simpan panjang dan lebar dalam variable
Hitung luas (panjang × lebar)
Hitung keliling (2 × (panjang + lebar))
Tampilkan hasilnya
"""

lagu1 = "To The Bone"
terbit1 = 2020
durasi1 = 349
penyanyi1 = "Pamungkas"

lagu2 = "Runtuh"
terbit2 = 2019
durasi2 = 382
penyanyi2 = "Feby Putri"

lagu3 = "Give Me Your Forever"
terbit3 = 2023
durasi3 = 392
penyanyi3 = "Zack Tabudlo"

lagu4 = "Sampai Jadi Debu"
terbit4 = 2022
durasi4 = 411
penyanyi4 = "Banda Neira"

lagu5 = "Oceans & Engines"
terbit5 = 2019
durasi5 = 320
penyanyi5 = "NIKI"

print("=" * 20, "TABEL LAGU FAVORIT", "=" * 20, "\n")
print("-" * 60)
print(
  "|", "Lagu".center(20),
  "|", "Penyanyi".center(20),
  "|", "Durasi".center(10), "|"
)
print("-" * 60)
print(
  "|", f"{lagu1:<20}", 
  "|", f"{penyanyi1:<20}", 
  "|", f"0{durasi1 / 60:.2f} Mnt".center(10), "|"
)
print(
  "|", f"{lagu2:<20}",
  "|", f"{penyanyi2:<20}",
  "|", f"0{durasi2 / 60:.2f} Mnt".center(10), "|"
)
print(
  "|", f"{lagu3:<20}",
  "|", f"{penyanyi3:<20}",
  "|", f"0{durasi3 / 60:.2f} Mnt".center(10), "|"
)
print(
  "|", f"{lagu4:<20}",
  "|", f"{penyanyi4:<20}",
  "|", f"0{durasi4 / 60:.2f} Mnt".center(10), "|"
)
print(
  "|", f"{lagu5:<20}", 
  "|", f"{penyanyi5:<20}",
  "|", f"0{durasi5 / 60:.2f} Mnt".center(10), "|"
)
print("=" * 60, "\n\n")


print("LATIHAN 2\n".center(60))
"""
Latihan 2: Buatlah program untuk menghitung luas dan keliling persegi panjang:

Simpan panjang dan lebar dalam variable
Hitung luas (panjang × lebar)
Hitung keliling (2 × (panjang + lebar))
Tampilkan hasilnya
"""

print("=" * 22, "HITUNG KELILING", "=" * 22, "\n")

panjang = 25
lebar = 15
luas = panjang * lebar
keliling = 2 * (panjang + lebar)

panjang1 = 40
lebar1 = 18
luas1 = panjang1 * lebar1
keliling1 = 2 * (panjang1 + lebar1)

panjang2 = 15
lebar2 = 8
luas2 = panjang2 * lebar2
keliling2 = 2 * (panjang2 + lebar2)

print("-" * 60)
print(
  "|", "panjang".center(12),
  "|", "lebar".center(12),
  "|", "luas".center(12),
  "|", "keliling".center(12), "|"
)
print("-" * 60)
print(
  "|", f"{panjang} cm".center(12), 
  "|", f"{lebar} cm".center(12),
  "|", f"{luas} cm".center(12),
  "|", f"{keliling} cm".center(12), "|"
)
print(
  "|", f"{panjang1} cm".center(12), 
  "|", f"{lebar1} cm".center(12),
  "|", f"{luas1} cm".center(12),
  "|", f"{keliling1} cm".center(12), "|"
)
print(
  "|", f"{panjang2} cm".center(12), 
  "|", f"{lebar2} cm".center(12),
  "|", f"{luas2} cm".center(12),
  "|", f"{keliling2} cm".center(12), "|"
)

print("-" * 60)