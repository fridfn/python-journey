# Gunakan font monospaced di terminal biar sejajar

#deklarasi panjang dari karakter
line_width = 50

# membuat fungsi untuk text menjadi di tengah
def center_text(text):
    # keluarkan text menjadi di tengah dengan .center sesuai dengan panjanv line_width
    return text.center(line_width)


# membuat fungsi reusable untuk nama nama list informasi
def format_line(label, value):
    # keluarkan nilai contoh label = alamat, value = isi dari alamat
    return f"║ {label:<8}: {value}".ljust(line_width + 1) + "║"

# tampilkan ouput hasil =>
print("╔" + "═" * line_width + "╗")
print("║" + center_text("PERSONAL IDENTIFICATION CARD") + "║")
print("╠" + "═" * line_width + "╣")
print("║" + " " * line_width + "║")
print(format_line("nama", "Farid Fathoni Nugroho"))
print(format_line("lahir", "29 Oktober 2006"))
print(format_line("alamat", "Bekasi, Indonesia"))
print(f"║  {'Hobi':<8}: Coding & Learning Python".ljust(line_width + 1) + "║")
print("║" + " " * line_width + "║")
print(f"║  {'Quote':<8}: \"Beautiful is better than".ljust(line_width + 1) + "║")
print("║            ugly. Explicit is better".ljust(line_width + 1) + "║")
print("║            than implicit.\"".ljust(line_width + 1) + "║")
print("║" + " " * line_width + "║")
print("╚" + "═" * line_width + "╝")