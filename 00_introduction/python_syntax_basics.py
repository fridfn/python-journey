print("latihan basic python")
print("")

x = 10
y = 5
if x > y:
  print("nilai x adalah", x)
  print("nilai y adalah", y)
  print("nilai", x ,"lebih besar dari", y)
print("akhir dari perbandingan")

print("=" * 60, "\n\n")
print("di python ga perlu semicolon")
print("tapi boleh juga pake"); print("jadi syntax nya di tulis one line tapi bakal warn E702")

# print pake sep buat ngasih - di stiap nilai
print("Farid", "Fathoni", "Nugroho", sep="-")

print("=" * 60, "\n\n")

print("-" * 40)
print("|" + "Toko Python".center(40 - 2) + "|")
print("-" * 40)
print("|" + "barang".center(20) + " | " + "Harga".center(15) + "|")
print("-" * 40)
print("|" + "Pisang".center(20) + " | " + "10.000".center(15) + "|")
print("|" + "Tepung".center(20) + " | " + "8.000".center(15) + "|")
print("|" + "Keju".center(20) + " | " + "11.000".center(15) + "|")
print("|" + "Coklat".center(20) + " | " + "13.000".center(15) + "|")
print("|" + "Minyak".center(20) + " | " + "17.000".center(15) + "|")
print("-" * 40)
print("|" + "Total Belanja".center(20) + " | " + "49.000".center(15) + "|")
print("-" * 40)