length = 60

print("=" * length)
print("Belajar mewarnai text menggunakan ansi".center(length))
print("=" * length + "\n")

# deklarasi warna warna ansi
RED = '\033[91m'
GREEN = '\033[92m'
YELLOW = '\033[93m'
BLUE = '\033[94m'
RESET = '\033[0m'

# tampilkan hasil output
print(f"{BLUE}═{RESET}" * length)
print(f"{BLUE}" + "║" + f"{YELLOW}" + "PERSONAL IDENTIFICATION CARD".center(length - 2) + f"{BLUE}" + "║")
print(f"{BLUE}═{RESET}" * length)
print(f"{BLUE}║".ljust(length + 4) + "║")
print(f"{BLUE}" + "║" + f"{GREEN}" + "Nama".ljust(length // 4) + ":" + f"{YELLOW}" + "Farid Fathoni N".center(length - 18) + f"{BLUE}" + "║" f"{RESET}")
print(f"{BLUE}" + "║" + f"{GREEN}" + "Umur".ljust(length // 4) + ":" + f"{YELLOW}" + "18 Tahun".center(length - 18) + f"{BLUE}" + "║" f"{RESET}")
print(f"{BLUE}" + "║" + f"{GREEN}" + "Tanggal Lahir".ljust(length // 4) + ":" + f"{YELLOW}" + "29 Oktober 2006".center(length - 18) + f"{BLUE}" + "║" f"{RESET}")
print(f"{BLUE}" + "║" + f"{GREEN}" + "Kelas".ljust(length // 4) + ":" + f"{YELLOW}" + "12 TKJ".center(length - 18) + f"{BLUE}" + "║" f"{RESET}")
print(f"{BLUE}" + "║" + f"{GREEN}" + "Hobi".ljust(length // 4) + ":" + f"{YELLOW}" + "Ngoding, Traveling".center(length - 18) + f"{BLUE}" + "║" f"{RESET}")
print(f"{BLUE}" + "║" + f"{GREEN}" + "Quote".ljust(length // 4) + ":" + f"{YELLOW}" + "Ngoding aja dulu, pusingnya belakangan".center(length - 18) + f"{BLUE}" + "║" f"{RESET}")
print(f"{BLUE}║".ljust(length + 4) + "║")
print(f"{BLUE}═{RESET}" * length)