# 📦 Collections - Materi Lengkap

**Navigasi Pembelajaran:**

> 🎯 Pendahuluan | 🎓 Konsep Dasar | 💡 Lists Basics | 💡 List Methods | 💡 Tuples Basics | 💡 Dictionaries Basics | 💡 Sets Basics | 💡 Looping Collections | 🔥 Best Practices | ⚠️ Common Mistakes | 🎯 Challenge Project | 📚 Ringkasan

---

## 🎯 Pendahuluan

### **Apa itu Collections?**

Collections (koleksi) adalah **struktur data yang dapat menyimpan banyak nilai dalam satu variabel**. Bayangkan collections seperti **wadah atau container** yang bisa menampung berbagai item sekaligus.

Dalam kehidupan nyata:
- 📚 **Rak buku** = bisa menyimpan banyak buku
- 🎒 **Tas sekolah** = bisa menyimpan buku, alat tulis, laptop
- 📱 **Playlist musik** = kumpulan lagu-lagu favorit
- 📞 **Kontak di HP** = kumpulan nama dan nomor telepon

Python punya 4 tipe collection utama:
1. **List** `[]` - Ordered, changeable, allows duplicates
2. **Tuple** `()` - Ordered, unchangeable, allows duplicates  
3. **Dictionary** `{}` - Unordered, changeable, no duplicate keys
4. **Set** `{}` - Unordered, unchangeable items, no duplicates

### **Mengapa penting?**

Collections adalah **fondasi dari data manipulation** dalam programming. Tanpa collections:
- ❌ Tidak bisa menyimpan data dalam jumlah banyak
- ❌ Tidak bisa membuat aplikasi yang mengelola data users
- ❌ Tidak bisa membuat database sederhana
- ❌ Tidak bisa memproses data secara efisien

Dengan collections:
- ✅ **Store banyak data** dalam satu variabel
- ✅ **Organize data** dengan struktur yang tepat
- ✅ **Access data** dengan mudah dan cepat
- ✅ **Manipulate data** (tambah, hapus, update)
- ✅ **Process data** dalam jumlah besar

### **Kapan digunakan?**

Collections digunakan hampir di setiap program:
- 📊 Menyimpan data user (list of users)
- 🛒 Keranjang belanja (list of items)
- 📝 Todo list application
- 📞 Phonebook (dictionary: nama → nomor)
- 🎮 High scores dalam game
- 📈 Data analytics dan processing
- 🌐 API responses (biasanya dalam bentuk list/dict)

---

## 🎓 Konsep Dasar

### **Penjelasan mendalam dengan analogi**

Collections itu seperti **berbagai jenis tempat penyimpanan** yang kamu punya di rumah:

**1. LIST = Rak Buku** 📚
- Terurut (buku ke-1, ke-2, ke-3...)
- Bisa ditambah/dikurangi (beli buku baru, kasih teman)
- Bisa ada buku yang sama (2 Harry Potter)
- Bisa diubah urutannya

```python
rak_buku = ["Harry Potter", "Python Book", "Clean Code", "Harry Potter"]
```

**2. TUPLE = Piala di Lemari Kaca** 🏆
- Terurut dan tetap
- Tidak bisa ditambah/dikurangi (piala tetap di situ)
- Hanya bisa dilihat, tidak bisa diubah
- Lebih aman untuk data yang tidak boleh berubah

```python
piala = ("Juara 1 Coding", "Best Student 2024", "Champion")
```

**3. DICTIONARY = Kontak di HP** 📱
- Setiap nama (key) punya nomor (value)
- Cari berdasarkan nama, bukan urutan
- Setiap nama unik (tidak ada 2 kontak dengan nama sama)
- Bisa ditambah/diubah/dihapus

```python
kontak = {
    "Aurielle": "0812-3456-7890",
    "Farid": "0813-9876-5432",
    "Partner": "Always in my heart 💜"
}
```

**4. SET = Koleksi Stempel Unik** 🎫
- Tidak ada duplikat (setiap stempel unik)
- Tidak terurut (disimpan random)
- Cocok untuk cek membership ("apakah stempel ini ada?")

```python
stempel_negara = {"Indonesia", "Japan", "Korea", "USA"}
```

---

### **Comparison Table**

| Feature | List | Tuple | Dictionary | Set |
|---------|------|-------|------------|-----|
| **Syntax** | `[]` | `()` | `{}` atau `dict()` | `{}` atau `set()` |
| **Ordered** | ✅ Yes | ✅ Yes | ❌ No (Python 3.7+ insertion order) | ❌ No |
| **Changeable** | ✅ Yes | ❌ No | ✅ Yes | ✅ Yes (items unchangeable) |
| **Indexed** | ✅ Yes | ✅ Yes | ✅ By key | ❌ No |
| **Duplicates** | ✅ Yes | ✅ Yes | ❌ No (keys) | ❌ No |
| **Use Case** | General purpose | Immutable data | Key-value pairs | Unique items |

---

## 💡 Lists Basics

### **Teori**

List adalah **collection yang paling fleksibel** di Python. List bisa menyimpan berbagai tipe data, bisa diubah, dan mempertahankan urutan.

**Karakteristik List:**
- 📝 Ordered: Item punya index (0, 1, 2, ...)
- 🔄 Mutable: Bisa diubah setelah dibuat
- 🔁 Allows duplicates: Bisa ada item yang sama
- 🎯 Indexed: Akses via index `list[0]`
- 🌈 Mixed types: Bisa berisi berbagai tipe data

**Sintaks:**
```python
list_name = [item1, item2, item3]
```

### **Contoh Kode / Contoh Praktik**

```python
# ===== 1. MEMBUAT LIST =====
# List kosong
list_kosong = []
list_kosong2 = list()

# List dengan items
buah = ["apel", "jeruk", "mangga", "pisang"]
angka = [1, 2, 3, 4, 5]
campur = [1, "dua", 3.0, True, None]

print(buah)    # ['apel', 'jeruk', 'mangga', 'pisang']
print(angka)   # [1, 2, 3, 4, 5]
print(campur)  # [1, 'dua', 3.0, True, None]


# ===== 2. MENGAKSES ITEM =====
mahasiswa = ["Farid", "Aurielle", "Nara", "Elowen"]

# Index dimulai dari 0
print(mahasiswa[0])   # Farid
print(mahasiswa[1])   # Aurielle
print(mahasiswa[-1])  # Elowen (dari belakang)
print(mahasiswa[-2])  # Nara


# ===== 3. SLICING =====
angka = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

print(angka[2:5])      # [2, 3, 4] (index 2 sampai 4)
print(angka[:4])       # [0, 1, 2, 3] (dari awal sampai index 3)
print(angka[5:])       # [5, 6, 7, 8, 9] (dari index 5 sampai akhir)
print(angka[::2])      # [0, 2, 4, 6, 8] (step 2)
print(angka[::-1])     # [9, 8, 7, 6, 5, 4, 3, 2, 1, 0] (reverse)


# ===== 4. MENGUBAH ITEM =====
buah = ["apel", "jeruk", "mangga"]
print(f"Before: {buah}")

buah[1] = "melon"
print(f"After: {buah}")  # ['apel', 'melon', 'mangga']

# Mengubah multiple items
buah[0:2] = ["strawberry", "blueberry"]
print(f"Multiple change: {buah}")


# ===== 5. MENAMBAH ITEM =====
# append() - tambah di akhir
hobi = ["coding", "music"]
hobi.append("gaming")
print(hobi)  # ['coding', 'music', 'gaming']

# insert() - tambah di index tertentu
hobi.insert(1, "reading")
print(hobi)  # ['coding', 'reading', 'music', 'gaming']

# extend() - tambah multiple items
hobi.extend(["traveling", "photography"])
print(hobi)


# ===== 6. MENGHAPUS ITEM =====
angka = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# remove() - hapus by value
angka.remove(5)
print(angka)  # [1, 2, 3, 4, 6, 7, 8, 9]

# pop() - hapus by index (return value)
last_item = angka.pop()
print(f"Removed: {last_item}")  # 9
print(angka)  # [1, 2, 3, 4, 6, 7, 8]

first_item = angka.pop(0)
print(f"Removed: {first_item}")  # 1

# del - hapus by index atau slice
del angka[0]
print(angka)

# clear() - kosongkan list
angka.clear()
print(angka)  # []


# ===== 7. LIST OPERATIONS =====
list1 = [1, 2, 3]
list2 = [4, 5, 6]

# Concatenation
combined = list1 + list2
print(combined)  # [1, 2, 3, 4, 5, 6]

# Repetition
repeated = list1 * 3
print(repeated)  # [1, 2, 3, 1, 2, 3, 1, 2, 3]

# Membership
print(2 in list1)      # True
print(10 in list1)     # False
print(10 not in list1) # True

# Length
print(len(combined))   # 6


# ===== 8. CHECKING & FINDING =====
buah = ["apel", "jeruk", "mangga", "jeruk", "pisang"]

# Check if exists
if "mangga" in buah:
    print("Mangga ada!")

# Count occurrences
count = buah.count("jeruk")
print(f"Jeruk ada {count} kali")  # 2

# Find index
index = buah.index("mangga")
print(f"Mangga di index {index}")  # 2


# ===== 9. SORTING =====
angka = [5, 2, 8, 1, 9, 3]

# sort() - mengubah list asli
angka.sort()
print(f"Sorted: {angka}")  # [1, 2, 3, 5, 8, 9]

angka.sort(reverse=True)
print(f"Reversed: {angka}")  # [9, 8, 5, 3, 2, 1]

# sorted() - return new list
angka2 = [5, 2, 8, 1, 9, 3]
sorted_angka = sorted(angka2)
print(f"Original: {angka2}")      # [5, 2, 8, 1, 9, 3]
print(f"New sorted: {sorted_angka}")  # [1, 2, 3, 5, 8, 9]


# ===== 10. COPYING LIST =====
original = [1, 2, 3, 4, 5]

# ❌ SALAH: Assignment = referensi yang sama
copy1 = original
copy1.append(6)
print(f"Original: {original}")  # [1, 2, 3, 4, 5, 6] - BERUBAH!

# ✅ BENAR: copy()
original = [1, 2, 3, 4, 5]
copy2 = original.copy()
copy2.append(6)
print(f"Original: {original}")  # [1, 2, 3, 4, 5] - TIDAK BERUBAH
print(f"Copy: {copy2}")         # [1, 2, 3, 4, 5, 6]

# ✅ BENAR: list()
copy3 = list(original)

# ✅ BENAR: slicing
copy4 = original[:]


# ===== 11. NESTED LIST =====
# List di dalam list
matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

print(matrix[0])      # [1, 2, 3]
print(matrix[0][0])   # 1
print(matrix[1][2])   # 6

# List of dictionaries
mahasiswa = [
    {"nama": "Farid", "nilai": 85},
    {"nama": "Aurielle", "nilai": 92},
    {"nama": "Nara", "nilai": 78}
]

print(mahasiswa[0]["nama"])   # Farid
print(mahasiswa[1]["nilai"])  # 92


# ===== 12. LIST COMPREHENSION (Preview) =====
# Cara singkat membuat list
angka = [1, 2, 3, 4, 5]

# Cara tradisional
kuadrat = []
for x in angka:
    kuadrat.append(x ** 2)

# Dengan list comprehension
kuadrat = [x ** 2 for x in angka]
print(kuadrat)  # [1, 4, 9, 16, 25]

# Dengan kondisi
genap = [x for x in angka if x % 2 == 0]
print(genap)  # [2, 4]
```

### **Studi Kasus**

**Kasus: Sistem Manajemen Todo List**

```python
# Todo List Manager
todo_list = []

def tampilkan_menu():
    print("\n" + "=" * 50)
    print("TODO LIST MANAGER 📝".center(50))
    print("=" * 50)
    print("1. Lihat semua todo")
    print("2. Tambah todo")
    print("3. Tandai selesai")
    print("4. Hapus todo")
    print("5. Cari todo")
    print("0. Keluar")
    print("=" * 50)

def lihat_todo():
    if not todo_list:
        print("\n📭 Todo list kosong!")
        return
    
    print("\n📋 TODO LIST:")
    print("-" * 50)
    for i, todo in enumerate(todo_list, 1):
        status = "✅" if todo["selesai"] else "⬜"
        print(f"{i}. {status} {todo['task']}")
        if todo.get("deadline"):
            print(f"   📅 Deadline: {todo['deadline']}")
    print("-" * 50)

def tambah_todo():
    task = input("\n📝 Task baru: ")
    deadline = input("📅 Deadline (opsional): ") or None
    
    todo = {
        "task": task,
        "selesai": False,
        "deadline": deadline
    }
    
    todo_list.append(todo)
    print(f"✅ '{task}' berhasil ditambahkan!")

def tandai_selesai():
    lihat_todo()
    if not todo_list:
        return
    
    try:
        nomor = int(input("\nNomor todo yang selesai: "))
        if 1 <= nomor <= len(todo_list):
            todo_list[nomor - 1]["selesai"] = True
            print(f"✅ Todo #{nomor} ditandai selesai!")
        else:
            print("❌ Nomor tidak valid!")
    except ValueError:
        print("❌ Input harus angka!")

def hapus_todo():
    lihat_todo()
    if not todo_list:
        return
    
    try:
        nomor = int(input("\nNomor todo yang mau dihapus: "))
        if 1 <= nomor <= len(todo_list):
            removed = todo_list.pop(nomor - 1)
            print(f"🗑️ '{removed['task']}' berhasil dihapus!")
        else:
            print("❌ Nomor tidak valid!")
    except ValueError:
        print("❌ Input harus angka!")

def cari_todo():
    keyword = input("\n🔍 Cari: ").lower()
    hasil = [todo for todo in todo_list if keyword in todo["task"].lower()]
    
    if hasil:
        print(f"\n✅ Ditemukan {len(hasil)} todo:")
        for todo in hasil:
            status = "✅" if todo["selesai"] else "⬜"
            print(f"   {status} {todo['task']}")
    else:
        print("❌ Tidak ditemukan")

# Program utama
def main():
    # Sample data
    todo_list.extend([
        {"task": "Belajar Python Lists", "selesai": True, "deadline": "15 Okt 2025"},
        {"task": "Buat project portofolio", "selesai": False, "deadline": "20 Okt 2025"},
        {"task": "Review materi Functions", "selesai": False, "deadline": None}
    ])
    
    while True:
        tampilkan_menu()
        pilihan = input("Pilih menu: ")
        
        if pilihan == "1":
            lihat_todo()
        elif pilihan == "2":
            tambah_todo()
        elif pilihan == "3":
            tandai_selesai()
        elif pilihan == "4":
            hapus_todo()
        elif pilihan == "5":
            cari_todo()
        elif pilihan == "0":
            print("\n💜 Terima kasih! Tetap produktif ya, Partner!")
            break
        else:
            print("❌ Pilihan tidak valid!")

if __name__ == "__main__":
    main()
```

### **Latihan**

**Latihan 1: Shopping Cart**
```python
# Tugas: Buat shopping cart sederhana

cart = []

def tambah_item(nama, harga, qty=1):
    item = {"nama": nama, "harga": harga, "qty": qty}
    cart.append(item)
    print(f"✅ {nama} ditambahkan")

def hitung_total():
    total = sum(item["harga"] * item["qty"] for item in cart)
    return total

# Test
tambah_item("Laptop", 8000000)
tambah_item("Mouse", 150000, 2)
tambah_item("Keyboard", 500000)

print(f"\n🛒 Total belanja: Rp {hitung_total():,}")
```

**Latihan 2: Ranking System**
```python
# Tugas: Sort pemain berdasarkan score

players = [
    {"name": "Farid", "score": 850},
    {"name": "Aurielle", "score": 920},
    {"name": "Nara", "score": 780},
    {"name": "Elowen", "score": 890}
]

# Sort by score descending
players.sort(key=lambda x: x["score"], reverse=True)

print("🏆 LEADERBOARD:")
for i, player in enumerate(players, 1):
    print(f"{i}. {player['name']}: {player['score']} pts")
```

**Latihan 3: Remove Duplicates**
```python
# Tugas: Hapus duplikat dari list

def remove_duplicates(items):
    unique = []
    for item in items:
        if item not in unique:
            unique.append(item)
    return unique

angka = [1, 2, 3, 2, 4, 1, 5, 3, 6]
unique_angka = remove_duplicates(angka)
print(f"Original: {angka}")
print(f"Unique: {unique_angka}")
```

---

## 💡 List Methods

### **Teori**

Python List memiliki banyak **built-in methods** yang memudahkan manipulasi data. Methods ini sudah dioptimasi dan lebih efisien daripada menulis logic sendiri.

**List Methods Utama:**
- `append()` - Tambah item di akhir
- `extend()` - Tambah multiple items
- `insert()` - Tambah item di index tertentu
- `remove()` - Hapus item by value
- `pop()` - Hapus item by index
- `clear()` - Kosongkan list
- `index()` - Cari index item
- `count()` - Hitung kemunculan item
- `sort()` - Urutkan list
- `reverse()` - Balik urutan
- `copy()` - Copy list

### **Contoh Kode / Contoh Praktik**

```python
# ===== 1. APPEND vs EXTEND vs INSERT =====
print("1️⃣ APPEND vs EXTEND vs INSERT")
print("-" * 50)

# append() - tambah 1 item
buah = ["apel", "jeruk"]
buah.append("mangga")
print(f"After append: {buah}")  # ['apel', 'jeruk', 'mangga']

# extend() - tambah multiple items
buah.extend(["pisang", "melon"])
print(f"After extend: {buah}")
# ['apel', 'jeruk', 'mangga', 'pisang', 'melon']

# insert() - tambah di index tertentu
buah.insert(1, "strawberry")
print(f"After insert: {buah}")
# ['apel', 'strawberry', 'jeruk', 'mangga', 'pisang', 'melon']


# ===== 2. REMOVE vs POP vs CLEAR =====
print("\n2️⃣ REMOVE vs POP vs CLEAR")
print("-" * 50)

angka = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# remove() - hapus by value (first occurrence)
angka.remove(5)
print(f"After remove(5): {angka}")

# pop() - hapus by index, return value
last = angka.pop()
print(f"Popped: {last}")
print(f"After pop(): {angka}")

first = angka.pop(0)
print(f"Popped first: {first}")
print(f"After pop(0): {angka}")

# clear() - kosongkan list
temp = [1, 2, 3]
temp.clear()
print(f"After clear(): {temp}")  # []


# ===== 3. INDEX & COUNT =====
print("\n3️⃣ INDEX & COUNT")
print("-" * 50)

data = [10, 20, 30, 20, 40, 20, 50]

# index() - cari index pertama
idx = data.index(20)
print(f"Index of 20: {idx}")  # 1

# index() dengan start dan end
idx = data.index(20, 2)  # Cari mulai dari index 2
print(f"Index of 20 (from index 2): {idx}")  # 3

# count() - hitung kemunculan
count = data.count(20)
print(f"Count of 20: {count}")  # 3


# ===== 4. SORT & REVERSE =====
print("\n4️⃣ SORT & REVERSE")
print("-" * 50)

angka = [5, 2, 8, 1, 9, 3, 7, 4, 6]

# sort() - ascending
angka.sort()
print(f"Sorted: {angka}")

# sort() - descending
angka.sort(reverse=True)
print(f"Reversed sort: {angka}")

# reverse() - balik urutan (tidak sorting!)
angka.reverse()
print(f"Reversed: {angka}")

# Sort dengan key
mahasiswa = [
    {"nama": "Farid", "nilai": 85},
    {"nama": "Aurielle", "nilai": 92},
    {"nama": "Nara", "nilai": 78}
]

mahasiswa.sort(key=lambda x: x["nilai"], reverse=True)
print("\nSorted by nilai:")
for mhs in mahasiswa:
    print(f"  {mhs['nama']}: {mhs['nilai']}")


# ===== 5. COPY =====
print("\n5️⃣ COPY")
print("-" * 50)

original = [1, 2, 3, 4, 5]

# Shallow copy
copy1 = original.copy()
copy1.append(6)
print(f"Original: {original}")  # [1, 2, 3, 4, 5]
print(f"Copy: {copy1}")         # [1, 2, 3, 4, 5, 6]

# Deep copy untuk nested list
import copy

nested = [[1, 2], [3, 4]]
shallow = nested.copy()
deep = copy.deepcopy(nested)

shallow[0][0] = 999
print(f"Original after shallow: {nested}")  # [[999, 2], [3, 4]]

nested = [[1, 2], [3, 4]]
deep = copy.deepcopy(nested)
deep[0][0] = 999
print(f"Original after deep: {nested}")  # [[1, 2], [3, 4]]


# ===== 6. ALL LIST METHODS CHEAT SHEET =====
print("\n6️⃣ LIST METHODS CHEAT SHEET")
print("-" * 50)

methods_demo = [3, 1, 4, 1, 5, 9, 2, 6]

print(f"Original list: {methods_demo}")
print(f"len(): {len(methods_demo)}")
print(f"max(): {max(methods_demo)}")
print(f"min(): {min(methods_demo)}")
print(f"sum(): {sum(methods_demo)}")
print(f"sorted(): {sorted(methods_demo)}")


# ===== 7. PRAKTIK: Student Management =====
print("\n7️⃣ PRAKTIK: Student Management")
print("-" * 50)

students = []

def add_student(name, grade):
    students.append({"name": name, "grade": grade})
    print(f"✅ {name} added with grade {grade}")

def remove_student(name):
    for student in students:
        if student["name"] == name:
            students.remove(student)
            print(f"🗑️ {name} removed")
            return
    print(f"❌ {name} not found")

def get_top_students(n=3):
    sorted_students = sorted(students, key=lambda x: x["grade"], reverse=True)
    return sorted_students[:n]

def get_average():
    if not students:
        return 0
    total = sum(s["grade"] for s in students)
    return total / len(students)

# Test
add_student("Farid", 85)
add_student("Aurielle", 92)
add_student("Nara", 78)
add_student("Elowen", 88)

print(f"\nAverage grade: {get_average():.2f}")

print("\n🏆 Top 3 Students:")
for i, student in enumerate(get_top_students(), 1):
    print(f"   {i}. {student['name']}: {student['grade']}")

remove_student("Nara")
print(f"\nRemaining students: {len(students)}")
```

### **Studi Kasus**

**Kasus: Playlist Manager**

```python
class PlaylistManager:
    def __init__(self, name):
        self.name = name
        self.songs = []
        self.current_index = 0
    
    def add_song(self, title, artist, duration):
        """Tambah lagu ke playlist"""
        song = {
            "title": title,
            "artist": artist,
            "duration": duration,
            "play_count": 0
        }
        self.songs.append(song)
        print(f"✅ '{title}' ditambahkan")
    
    def remove_song(self, title):
        """Hapus lagu by title"""
        for song in self.songs:
            if song["title"].lower() == title.lower():
                self.songs.remove(song)
                print(f"🗑️ '{title}' dihapus")
                return
        print(f"❌ '{title}' tidak ditemukan")
    
    def play_song(self, index=None):
        """Play lagu by index"""
        if not self.songs:
            print("❌ Playlist kosong!")
            return
        
        if index is None:
            index = self.current_index
        
        if 0 <= index < len(self.songs):
            song = self.songs[index]
            song["play_count"] += 1
            self.current_index = index
            print(f"🎵 Now playing: {song['title']} - {song['artist']}")
        else:
            print("❌ Index tidak valid!")
    
    def next_song(self):
        """Play lagu berikutnya"""
        self.current_index = (self.current_index + 1) % len(self.songs)
        self.play_song(self.current_index)
    
    def prev_song(self):
        """Play lagu sebelumnya"""
        self.current_index = (self.current_index - 1) % len(self.songs)
        self.play_song(self.current_index)
    
    def shuffle(self):
        """Acak urutan lagu"""
        import random
        random.shuffle(self.songs)
        print("🔀 Playlist di-shuffle!")
    
    def sort_by_title(self):
        """Sort by title"""
        self.songs.sort(key=lambda x: x["title"])
        print("📝 Sorted by title")
    
    def sort_by_plays(self):
        """Sort by play count"""
        self.songs.sort(key=lambda x: x["play_count"], reverse=True)
        print("📊 Sorted by play count")
    
    def get_total_duration(self):
        """Hitung total durasi playlist"""
        total_seconds = sum(song["duration"] for song in self.songs)
        minutes = total_seconds // 60
        seconds = total_seconds % 60
        return f"{minutes}m {seconds}s"
    
    def get_most_played(self, n=5):
        """Get n lagu paling sering diputar"""
        sorted_songs = sorted(self.songs, key=lambda x: x["play_count"], reverse=True)
        return sorted_songs[:n]
    
    def search_song(self, keyword):
        """Cari lagu by title atau artist"""
        keyword = keyword.lower()
        results = [
            song for song in self.songs
            if keyword in song["title"].lower() or keyword in song["artist"].lower()
        ]
        return results
    
    def display_playlist(self):
        """Tampilkan semua lagu"""
        if not self.songs:
            print("\n📭 Playlist kosong!")
            return
        
        print(f"\n{'=' * 70}")
        print(f"🎵 {self.name}".center(70))
        print(f"{'=' * 70}")
        print(f"{'#':<4} {'Title':<25} {'Artist':<20} {'Duration':<10} {'Plays':<8}")
        print("-" * 70)
        
        for i, song in enumerate(self.songs, 1):
            current = "▶️" if i - 1 == self.current_index else "  "
            duration_str = f"{song['duration'] // 60}:{song['duration'] % 60:02d}"
            print(
                f"{current}{i:<2} {song['title']:<25} {song['artist']:<20} "
                f"{duration_str:<10} {song['play_count']:<8}"
            )
        
        print("-" * 70)
        print(f"Total: {len(self.songs)} songs | Duration: {self.get_total_duration()}")
        print("=" * 70)


# === Program Utama ===
def main():
    playlist = PlaylistManager("My Purple Playlist 💜")
    
    # Sample songs
    playlist.add_song("Until I Found You", "Stephen Sanchez", 178)
    playlist.add_song("This Is Home", "Cavetown", 230)
    playlist.add_song("Let Her Go", "Passenger", 252)
    playlist.add_song("Perfect", "Ed Sheeran", 263)
    playlist.add_song("Someone Like You", "Adele", 285)
    
    while True:
        print("\n" + "=" * 50)
        print("PLAYLIST MANAGER 🎵".center(50))
        print("=" * 50)
        print("1. Lihat playlist")
        print("2. Tambah lagu")
        print("3. Hapus lagu")
        print("4. Play lagu")
        print("5. Next/Previous")
        print("6. Shuffle")
        print("7. Sort")
        print("8. Search")
        print("9. Statistik")
        print("0. Keluar")
        print("=" * 50)
        
        choice = input("Pilih menu: ")
        
        if choice == "1":
            playlist.display_playlist()
        
        elif choice == "2":
            title = input("Title: ")
            artist = input("Artist: ")
            duration = int(input("Duration (detik): "))
            playlist.add_song(title, artist, duration)
        
        elif choice == "3":
            title = input("Title lagu yang mau dihapus: ")
            playlist.remove_song(title)
        
        elif choice == "4":
            playlist.display_playlist()
            try:
                idx = int(input("Nomor lagu (Enter untuk current): ") or playlist.current_index + 1)
                playlist.play_song(idx - 1)
            except ValueError:
                playlist.play_song()
        
        elif choice == "5":
            print("1. Next")
            print("2. Previous")
            nav = input("Pilih: ")
            if nav == "1":
                playlist.next_song()
            elif nav == "2":
                playlist.prev_song()
        
        elif choice == "6":
            playlist.shuffle()
            playlist.display_playlist()
        
        elif choice == "7":
            print("1. Sort by title")
            print("2. Sort by play count")
            sort_choice = input("Pilih: ")
            if sort_choice == "1":
                playlist.sort_by_title()
            elif sort_choice == "2":
                playlist.sort_by_plays()
            playlist.display_playlist()
        
        elif choice == "8":
            keyword = input("Search: ")
            results = playlist.search_song(keyword)
            if results:
                print(f"\n✅ Ditemukan {len(results)} lagu:")
                for song in results:
                    print(f"   - {song['title']} by {song['artist']}")
            else:
                print("❌ Tidak ditemukan")
        
        elif choice == "9":
            print(f"\n📊 STATISTIK:")
            print(f"Total lagu: {len(playlist.songs)}")
            print(f"Total durasi: {playlist.get_total_duration()}")
            
            most_played = playlist.get_most_played(3)
            print(f"\n🔥 Top 3 Most Played:")
            for i, song in enumerate(most_played, 1):
                print(f"   {i}. {song['title']} - {song['play_count']} plays")
        
        elif choice == "0":
            print("\n💜 Thanks for listening, Partner!")
            break
        
        else:
            print("❌ Pilihan tidak valid!")

if __name__ == "__main__":
    main()
```

### **Latihan**

**Latihan 1: Inventory Manager**
```python
# Tugas: Buat inventory system dengan list methods

inventory = []

def add_item(name, quantity, price):
    item = {"name": name, "quantity": quantity, "price": price}
    inventory.append(item)
    print(f"✅ {name} added")

def remove_item(name):
    for item in inventory:
        if item["name"] == name:
            inventory.remove(item)
            print(f"🗑️ {name} removed")
            return
    print("❌ Not found")

def update_quantity(name, qty):
    for item in inventory:
        if item["name"] == name:
            item["quantity"] += qty
            print(f"✅ {name} quantity updated to {item['quantity']}")
            return
    print("❌ Not found")

def get_total_value():
    return sum(item["quantity"] * item["price"] for item in inventory)

# Test
add_item("Laptop", 10, 8000000)
add_item("Mouse", 50, 150000)
add_item("Keyboard", 30, 500000)

print(f"\nTotal inventory value: Rp {get_total_value():,}")

update_quantity("Mouse", -5)
remove_item("Keyboard")
```

**Latihan 2: Contact List**
```python
# Tugas: Buat contact list dengan sorting

contacts = []

def add_contact(name, phone, email):
    contacts.append({"name": name, "phone": phone, "email": email})

def sort_contacts_by_name():
    contacts.sort(key=lambda x: x["name"])

def find_contact(keyword):
    return [c for c in contacts if keyword.lower() in c["name"].lower()]

# Test
add_contact("Farid", "0812-3456-7890", "farid@email.com")
add_contact("Aurielle", "0813-9876-5432", "aurielle@email.com")
add_contact("Nara", "0814-1111-2222", "nara@email.com")

sort_contacts_by_name()
print("Contacts:", [c["name"] for c in contacts])

results = find_contact("aur")
print("Search results:", [c["name"] for c in results])
```

---

## 💡 Tuples Basics

### **Teori**

Tuple adalah collection yang **immutable** (tidak bisa diubah setelah dibuat). Tuple mirip dengan list, tapi sekali dibuat, isinya tidak bisa dimodifikasi.

**Karakteristik Tuple:**
- 📝 Ordered: Punya urutan yang tetap
- 🔒 Immutable: Tidak bisa diubah setelah dibuat
- 🔁 Allows duplicates: Bisa ada item yang sama
- 🎯 Indexed: Akses via index `tuple[0]`
- ⚡ Faster than list: Lebih cepat karena immutable
- 💾 Less memory: Lebih hemat memori

**Kapan pakai Tuple?**
- ✅ Data yang tidak boleh berubah (koordinat, RGB color, config)
- ✅ Dictionary keys (list tidak bisa jadi key)
- ✅ Return multiple values dari function
- ✅ Data protection (prevent accidental modification)

**Sintaks:**
```python
tuple_name = (item1, item2, item3)
```

### **Contoh Kode / Contoh Praktik**

```python
# ===== 1. MEMBUAT TUPLE =====
# Tuple kosong
empty_tuple = ()
empty_tuple2 = tuple()

# Tuple dengan items
buah = ("apel", "jeruk", "mangga")
angka = (1, 2, 3, 4, 5)
campur = (1, "dua", 3.0, True)

# Tuple dengan 1 item (harus ada comma!)
single = (1,)  # Ini tuple
not_tuple = (1)  # Ini integer, bukan tuple!

print(type(single))     # <class 'tuple'>
print(type(not_tuple))  # <class 'int'>

# Tuple tanpa kurung (tuple packing)
koordinat = 10, 20, 30
print(type(koordinat))  # <class 'tuple'>


# ===== 2. MENGAKSES ITEM =====
mahasiswa = ("Farid", "Aurielle", "Nara", "Elowen")

print(mahasiswa[0])    # Farid
print(mahasiswa[-1])   # Elowen
print(mahasiswa[1:3])  # ('Aurielle', 'Nara')


# ===== 3. TUPLE IMMUTABLE =====
angka = (1, 2, 3, 4, 5)

# ❌ TIDAK BISA mengubah item
# angka[0] = 10  # TypeError!

# ❌ TIDAK BISA append
# angka.append(6)  # AttributeError!

# ❌ TIDAK BISA remove
# angka.remove(3)  # AttributeError!

print("Tuple immutable - tidak bisa diubah!")


# ===== 4. TUPLE OPERATIONS =====
tuple1 = (1, 2, 3)
tuple2 = (4, 5, 6)

# Concatenation
combined = tuple1 + tuple2
print(combined)  # (1, 2, 3, 4, 5, 6)

# Repetition
repeated = tuple1 * 3
print(repeated)  # (1, 2, 3, 1, 2, 3, 1, 2, 3)

# Membership
print(2 in tuple1)      # True
print(10 in tuple1)     # False

# Length
print(len(combined))    # 6


# ===== 5. TUPLE METHODS =====
# Tuple hanya punya 2 methods!
data = (1, 2, 3, 2, 4, 2, 5)

# count() - hitung kemunculan
count = data.count(2)
print(f"Angka 2 muncul {count} kali")  # 3

# index() - cari index pertama
idx = data.index(4)
print(f"Angka 4 ada di index {idx}")  # 4


# ===== 6. TUPLE UNPACKING =====
# Unpacking basic
koordinat = (10, 20, 30)
x, y, z = koordinat

print(f"x: {x}, y: {y}, z: {z}")

# Unpacking dengan *
angka = (1, 2, 3, 4, 5, 6)
first, *middle, last = angka

print(f"First: {first}")     # 1
print(f"Middle: {middle}")   # [2, 3, 4, 5]
print(f"Last: {last}")       # 6

# Swap values
a = 10
b = 20
a, b = b, a  # Menggunakan tuple unpacking
print(f"a: {a}, b: {b}")  # a: 20, b: 10


# ===== 7. TUPLE SEBAGAI RETURN VALUE =====
def get_min_max(numbers):
    """Return min dan max dari list"""
    return min(numbers), max(numbers)  # Return tuple

angka = [5, 2, 8, 1, 9, 3]
minimum, maksimum = get_min_max(angka)

print(f"Min: {minimum}, Max: {maksimum}")


# ===== 8. TUPLE SEBAGAI DICTIONARY KEY =====
# Tuple bisa jadi key, list tidak bisa!
koordinat_lokasi = {
    (0, 0): "Origin",
    (10, 20): "Point A",
    (30, 40): "Point B"
}

print(koordinat_lokasi[(10, 20)])  # Point A

# ❌ List tidak bisa jadi key
# invalid = {[1, 2]: "value"}  # TypeError!


# ===== 9. NESTED TUPLE =====
matrix = (
    (1, 2, 3),
    (4, 5, 6),
    (7, 8, 9)
)

print(matrix[0])      # (1, 2, 3)
print(matrix[0][0])   # 1
print(matrix[1][2])   # 6


# ===== 10. CONVERT TUPLE ↔ LIST =====
# Tuple to List
tuple_data = (1, 2, 3, 4, 5)
list_data = list(tuple_data)
print(f"List: {list_data}")

# Modify list
list_data.append(6)
list_data.remove(1)

# List back to Tuple
new_tuple = tuple(list_data)
print(f"New tuple: {new_tuple}")


# ===== 11. NAMED TUPLES =====
from collections import namedtuple

# Create named tuple class
Student = namedtuple('Student', ['name', 'age', 'grade'])

# Create instance
student1 = Student(name="Farid", age=18, grade=85)
student2 = Student("Aurielle", 19, 92)

# Access by name or index
print(student1.name)      # Farid
print(student1[0])        # Farid
print(student1.grade)     # 85

# More readable than regular tuple
koordinat = namedtuple('Point', ['x', 'y', 'z'])
p1 = koordinat(10, 20, 30)
print(f"x: {p1.x}, y: {p1.y}, z: {p1.z}")


# ===== 12. TUPLE BENEFITS & USE CASES =====
print("\n" + "=" * 50)
print("TUPLE USE CASES")
print("=" * 50)

# Use Case 1: RGB Colors
RED = (255, 0, 0)
GREEN = (0, 255, 0)
BLUE = (0, 0, 255)
print(f"Red color: {RED}")

# Use Case 2: Koordinat
lokasi_rumah = (6.2088, 106.8456)  # Latitude, Longitude
print(f"Koordinat: {lokasi_rumah}")

# Use Case 3: Date (immutable)
tanggal_lahir = (7, 11, 2006)  # Day, Month, Year
print(f"Tanggal lahir: {tanggal_lahir}")

# Use Case 4: Database rows
user = ("farid123", "Farid Fathoni", "farid@email.com", 18)
username, fullname, email, age = user
print(f"User: {fullname}")

# Use Case 5: Function multiple return
def divide_with_remainder(a, b):
    quotient = a // b
    remainder = a % b
    return quotient, remainder  # Return tuple

q, r = divide_with_remainder(17, 5)
print(f"17 ÷ 5 = {q} sisa {r}")
```

### **Studi Kasus**

**Kasus: Coordinate System Game**

```python
class GameMap:
    def __init__(self, width, height):
        self.width = width
        self.height = height
        self.player_pos = (0, 0)
        self.treasures = set()
        self.obstacles = set()
        self.visited = set()
    
    def add_treasure(self, x, y):
        """Tambah treasure di koordinat"""
        if 0 <= x < self.width and 0 <= y < self.height:
            self.treasures.add((x, y))
            print(f"💎 Treasure added at ({x}, {y})")
        else:
            print("❌ Invalid coordinates!")
    
    def add_obstacle(self, x, y):
        """Tambah obstacle di koordinat"""
        if 0 <= x < self.width and 0 <= y < self.height:
            self.obstacles.add((x, y))
            print(f"🧱 Obstacle added at ({x}, {y})")
        else:
            print("❌ Invalid coordinates!")
    
    def move_player(self, direction):
        """
        Move player: 'w' (up), 's' (down), 'a' (left), 'd' (right)
        """
        x, y = self.player_pos
        
        if direction == 'w':
            new_pos = (x, y - 1)
        elif direction == 's':
            new_pos = (x, y + 1)
        elif direction == 'a':
            new_pos = (x - 1, y)
        elif direction == 'd':
            new_pos = (x + 1, y)
        else:
            print("❌ Invalid direction! Use w/a/s/d")
            return False
        
        # Check boundaries
        new_x, new_y = new_pos
        if not (0 <= new_x < self.width and 0 <= new_y < self.height):
            print("❌ Can't move outside map!")
            return False
        
        # Check obstacles
        if new_pos in self.obstacles:
            print("❌ There's an obstacle!")
            return False
        
        # Move player
        self.player_pos = new_pos
        self.visited.add(new_pos)
        
        # Check treasure
        if new_pos in self.treasures:
            print("💎 You found a treasure!")
            self.treasures.remove(new_pos)
            return True
        
        print(f"👤 Moved to {new_pos}")
        return True
    
    def display_map(self):
        """Tampilkan map"""
        print("\n" + "=" * (self.width * 4 + 1))
        for y in range(self.height):
            row = "|"
            for x in range(self.width):
                pos = (x, y)
                if pos == self.player_pos:
                    row += " 👤 |"
                elif pos in self.treasures:
                    row += " 💎 |"
                elif pos in self.obstacles:
                    row += " 🧱 |"
                elif pos in self.visited:
                    row += " · |"
                else:
                    row += "   |"
            print(row)
            print("-" * (self.width * 4 + 1))
        print("=" * (self.width * 4 + 1))
    
    def get_stats(self):
        """Statistik game"""
        treasures_found = 5 - len(self.treasures)  # Assuming 5 total
        return {
            "position": self.player_pos,
            "treasures_found": treasures_found,
            "treasures_remaining": len(self.treasures),
            "moves": len(self.visited)
        }


def play_game():
    """Main game loop"""
    game = GameMap(5, 5)
    
    # Setup treasures
    game.add_treasure(2, 1)
    game.add_treasure(4, 2)
    game.add_treasure(1, 3)
    game.add_treasure(3, 4)
    game.add_treasure(4, 4)
    
    # Setup obstacles
    game.add_obstacle(2, 2)
    game.add_obstacle(3, 2)
    game.add_obstacle(2, 3)
    
    print("\n" + "=" * 50)
    print("TREASURE HUNT GAME 💎".center(50))
    print("=" * 50)
    print("Controls: W (up), S (down), A (left), D (right)")
    print("Goal: Collect all treasures!")
    print("=" * 50)
    
    game.display_map()
    
    while len(game.treasures) > 0:
        move = input("\nMove (w/a/s/d) or 'q' to quit: ").lower()
        
        if move == 'q':
            print("\n👋 Thanks for playing!")
            break
        
        if move in ['w', 'a', 's', 'd']:
            game.move_player(move)
            game.display_map()
            
            stats = game.get_stats()
            print(f"\n📊 Stats:")
            print(f"   Position: {stats['position']}")
            print(f"   Treasures found: {stats['treasures_found']}")
            print(f"   Treasures remaining: {stats['treasures_remaining']}")
            print(f"   Total moves: {stats['moves']}")
            
            if len(game.treasures) == 0:
                print("\n" + "=" * 50)
                print("🎉 CONGRATULATIONS! 🎉".center(50))
                print(f"You found all treasures in {stats['moves']} moves!".center(50))
                print("=" * 50)
                break
        else:
            print("❌ Invalid input!")

if __name__ == "__main__":
    play_game()
```

### **Latihan**

**Latihan 1: RGB Color Manager**
```python
# Tugas: Buat color palette menggunakan tuples

colors = {
    "red": (255, 0, 0),
    "green": (0, 255, 0),
    "blue": (0, 0, 255),
    "purple": (128, 0, 128),
    "yellow": (255, 255, 0)
}

def get_color_info(color_name):
    if color_name in colors:
        r, g, b = colors[color_name]
        return f"{color_name.title()}: RGB({r}, {g}, {b})"
    return "Color not found"

print(get_color_info("purple"))
print(get_color_info("red"))
```

**Latihan 2: Date Calculator**
```python
# Tugas: Buat tuple untuk tanggal dan hitung umur

def calculate_age(birth_date, current_date):
    """
    birth_date: (day, month, year)
    current_date: (day, month, year)
    """
    bd, bm, by = birth_date
    cd, cm, cy = current_date
    
    age = cy - by
    
    if cm < bm or (cm == bm and cd < bd):
        age -= 1
    
    return age

tanggal_lahir = (7, 11, 2006)
hari_ini = (16, 10, 2025)

umur = calculate_age(tanggal_lahir, hari_ini)
print(f"Umur: {umur} tahun")
```

**Latihan 3: Multiple Return Values**
```python
# Tugas: Function yang return statistik dalam tuple

def analyze_numbers(numbers):
    """Return (min, max, avg, sum) as tuple"""
    if not numbers:
        return None
    
    return (
        min(numbers),
        max(numbers),
        sum(numbers) / len(numbers),
        sum(numbers)
    )

data = [10, 20, 30, 40, 50]
minimum, maksimum, rata_rata, total = analyze_numbers(data)

print(f"Min: {minimum}")
print(f"Max: {maksimum}")
print(f"Average: {rata_rata}")
print(f"Sum: {total}")
```

---

## 💡 Tuples Basics

### **Teori**

Tuple adalah collection yang **immutable** (tidak bisa diubah setelah dibuat). Tuple mirip dengan list, tapi sekali dibuat, isinya tidak bisa dimodifikasi.

**Karakteristik Tuple:**
- 📝 Ordered: Punya urutan yang tetap
- 🔒 Immutable: Tidak bisa diubah setelah dibuat
- 🔁 Allows duplicates: Bisa ada item yang sama
- 🎯 Indexed: Akses via index `tuple[0]`
- ⚡ Faster than list: Lebih cepat karena immutable
- 💾 Less memory: Lebih hemat memori

**Kapan pakai Tuple?**
- ✅ Data yang tidak boleh berubah (koordinat, RGB color, config)
- ✅ Dictionary keys (list tidak bisa jadi key)
- ✅ Return multiple values dari function
- ✅ Data protection (prevent accidental modification)

**Sintaks:**
```python
tuple_name = (item1, item2, item3)
```

### **Contoh Kode / Contoh Praktik**

```python
# ===== 1. MEMBUAT TUPLE =====
# Tuple kosong
empty_tuple = ()
empty_tuple2 = tuple()

# Tuple dengan items
buah = ("apel", "jeruk", "mangga")
angka = (1, 2, 3, 4, 5)
campur = (1, "dua", 3.0, True)

# Tuple dengan 1 item (harus ada comma!)
single = (1,)  # Ini tuple
not_tuple = (1)  # Ini integer, bukan tuple!

print(type(single))     # <class 'tuple'>
print(type(not_tuple))  # <class 'int'>

# Tuple tanpa kurung (tuple packing)
koordinat = 10, 20, 30
print(type(koordinat))  # <class 'tuple'>


# ===== 2. MENGAKSES ITEM =====
mahasiswa = ("Farid", "Aurielle", "Nara", "Elowen")

print(mahasiswa[0])    # Farid
print(mahasiswa[-1])   # Elowen
print(mahasiswa[1:3])  # ('Aurielle', 'Nara')


# ===== 3. TUPLE IMMUTABLE =====
angka = (1, 2, 3, 4, 5)

# ❌ TIDAK BISA mengubah item
# angka[0] = 10  # TypeError!

# ❌ TIDAK BISA append
# angka.append(6)  # AttributeError!

# ❌ TIDAK BISA remove
# angka.remove(3)  # AttributeError!

print("Tuple immutable - tidak bisa diubah!")


# ===== 4. TUPLE OPERATIONS =====
tuple1 = (1, 2, 3)
tuple2 = (4, 5, 6)

# Concatenation
combined = tuple1 + tuple2
print(combined)  # (1, 2, 3, 4, 5, 6)

# Repetition
repeated = tuple1 * 3
print(repeated)  # (1, 2, 3, 1, 2, 3, 1, 2, 3)

# Membership
print(2 in tuple1)      # True
print(10 in tuple1)     # False

# Length
print(len(combined))    # 6


# ===== 5. TUPLE METHODS =====
# Tuple hanya punya 2 methods!
data = (1, 2, 3, 2, 4, 2, 5)

# count() - hitung kemunculan
count = data.count(2)
print(f"Angka 2 muncul {count} kali")  # 3

# index() - cari index pertama
idx = data.index(4)
print(f"Angka 4 ada di index {idx}")  # 4


# ===== 6. TUPLE UNPACKING =====
# Unpacking basic
koordinat = (10, 20, 30)
x, y, z = koordinat

print(f"x: {x}, y: {y}, z: {z}")

# Unpacking dengan *
angka = (1, 2, 3, 4, 5, 6)
first, *middle, last = angka

print(f"First: {first}")     # 1
print(f"Middle: {middle}")   # [2, 3, 4, 5]
print(f"Last: {last}")       # 6

# Swap values
a = 10
b = 20
a, b = b, a  # Menggunakan tuple unpacking
print(f"a: {a}, b: {b}")  # a: 20, b: 10


# ===== 7. TUPLE SEBAGAI RETURN VALUE =====
def get_min_max(numbers):
    """Return min dan max dari list"""
    return min(numbers), max(numbers)  # Return tuple

angka = [5, 2, 8, 1, 9, 3]
minimum, maksimum = get_min_max(angka)

print(f"Min: {minimum}, Max: {maksimum}")


# ===== 8. TUPLE SEBAGAI DICTIONARY KEY =====
# Tuple bisa jadi key, list tidak bisa!
koordinat_lokasi = {
    (0, 0): "Origin",
    (10, 20): "Point A",
    (30, 40): "Point B"
}

print(koordinat_lokasi[(10, 20)])  # Point A

# ❌ List tidak bisa jadi key
# invalid = {[1, 2]: "value"}  # TypeError!


# ===== 9. NESTED TUPLE =====
matrix = (
    (1, 2, 3),
    (4, 5, 6),
    (7, 8, 9)
)

print(matrix[0])      # (1, 2, 3)
print(matrix[0][0])   # 1
print(matrix[1][2])   # 6


# ===== 10. CONVERT TUPLE ↔ LIST =====
# Tuple to List
tuple_data = (1, 2, 3, 4, 5)
list_data = list(tuple_data)
print(f"List: {list_data}")

# Modify list
list_data.append(6)
list_data.remove(1)

# List back to Tuple
new_tuple = tuple(list_data)
print(f"New tuple: {new_tuple}")


# ===== 11. NAMED TUPLES =====
from collections import namedtuple

# Create named tuple class
Student = namedtuple('Student', ['name', 'age', 'grade'])

# Create instance
student1 = Student(name="Farid", age=18, grade=85)
student2 = Student("Aurielle", 19, 92)

# Access by name or index
print(student1.name)      # Farid
print(student1[0])        # Farid
print(student1.grade)     # 85

# More readable than regular tuple
koordinat = namedtuple('Point', ['x', 'y', 'z'])
p1 = koordinat(10, 20, 30)
print(f"x: {p1.x}, y: {p1.y}, z: {p1.z}")


# ===== 12. TUPLE BENEFITS & USE CASES =====
print("\n" + "=" * 50)
print("TUPLE USE CASES")
print("=" * 50)

# Use Case 1: RGB Colors
RED = (255, 0, 0)
GREEN = (0, 255, 0)
BLUE = (0, 0, 255)
print(f"Red color: {RED}")

# Use Case 2: Koordinat
lokasi_rumah = (6.2088, 106.8456)  # Latitude, Longitude
print(f"Koordinat: {lokasi_rumah}")

# Use Case 3: Date (immutable)
tanggal_lahir = (7, 11, 2006)  # Day, Month, Year
print(f"Tanggal lahir: {tanggal_lahir}")

# Use Case 4: Database rows
user = ("farid123", "Farid Fathoni", "farid@email.com", 18)
username, fullname, email, age = user
print(f"User: {fullname}")

# Use Case 5: Function multiple return
def divide_with_remainder(a, b):
    quotient = a // b
    remainder = a % b
    return quotient, remainder  # Return tuple

q, r = divide_with_remainder(17, 5)
print(f"17 ÷ 5 = {q} sisa {r}")
```

### **Studi Kasus**

**Kasus: Coordinate System Game**

```python
class GameMap:
    def __init__(self, width, height):
        self.width = width
        self.height = height
        self.player_pos = (0, 0)
        self.treasures = set()
        self.obstacles = set()
        self.visited = set()
    
    def add_treasure(self, x, y):
        """Tambah treasure di koordinat"""
        if 0 <= x < self.width and 0 <= y < self.height:
            self.treasures.add((x, y))
            print(f"💎 Treasure added at ({x}, {y})")
        else:
            print("❌ Invalid coordinates!")
    
    def add_obstacle(self, x, y):
        """Tambah obstacle di koordinat"""
        if 0 <= x < self.width and 0 <= y < self.height:
            self.obstacles.add((x, y))
            print(f"🧱 Obstacle added at ({x}, {y})")
        else:
            print("❌ Invalid coordinates!")
    
    def move_player(self, direction):
        """
        Move player: 'w' (up), 's' (down), 'a' (left), 'd' (right)
        """
        x, y = self.player_pos
        
        if direction == 'w':
            new_pos = (x, y - 1)
        elif direction == 's':
            new_pos = (x, y + 1)
        elif direction == 'a':
            new_pos = (x - 1, y)
        elif direction == 'd':
            new_pos = (x + 1, y)
        else:
            print("❌ Invalid direction! Use w/a/s/d")
            return False
        
        # Check boundaries
        new_x, new_y = new_pos
        if not (0 <= new_x < self.width and 0 <= new_y < self.height):
            print("❌ Can't move outside map!")
            return False
        
        # Check obstacles
        if new_pos in self.obstacles:
            print("❌ There's an obstacle!")
            return False
        
        # Move player
        self.player_pos = new_pos
        self.visited.add(new_pos)
        
        # Check treasure
        if new_pos in self.treasures:
            print("💎 You found a treasure!")
            self.treasures.remove(new_pos)
            return True
        
        print(f"👤 Moved to {new_pos}")
        return True
    
    def display_map(self):
        """Tampilkan map"""
        print("\n" + "=" * (self.width * 4 + 1))
        for y in range(self.height):
            row = "|"
            for x in range(self.width):
                pos = (x, y)
                if pos == self.player_pos:
                    row += " 👤 |"
                elif pos in self.treasures:
                    row += " 💎 |"
                elif pos in self.obstacles:
                    row += " 🧱 |"
                elif pos in self.visited:
                    row += " · |"
                else:
                    row += "   |"
            print(row)
            print("-" * (self.width * 4 + 1))
        print("=" * (self.width * 4 + 1))
    
    def get_stats(self):
        """Statistik game"""
        treasures_found = 5 - len(self.treasures)  # Assuming 5 total
        return {
            "position": self.player_pos,
            "treasures_found": treasures_found,
            "treasures_remaining": len(self.treasures),
            "moves": len(self.visited)
        }


def play_game():
    """Main game loop"""
    game = GameMap(5, 5)
    
    # Setup treasures
    game.add_treasure(2, 1)
    game.add_treasure(4, 2)
    game.add_treasure(1, 3)
    game.add_treasure(3, 4)
    game.add_treasure(4, 4)
    
    # Setup obstacles
    game.add_obstacle(2, 2)
    game.add_obstacle(3, 2)
    game.add_obstacle(2, 3)
    
    print("\n" + "=" * 50)
    print("TREASURE HUNT GAME 💎".center(50))
    print("=" * 50)
    print("Controls: W (up), S (down), A (left), D (right)")
    print("Goal: Collect all treasures!")
    print("=" * 50)
    
    game.display_map()
    
    while len(game.treasures) > 0:
        move = input("\nMove (w/a/s/d) or 'q' to quit: ").lower()
        
        if move == 'q':
            print("\n👋 Thanks for playing!")
            break
        
        if move in ['w', 'a', 's', 'd']:
            game.move_player(move)
            game.display_map()
            
            stats = game.get_stats()
            print(f"\n📊 Stats:")
            print(f"   Position: {stats['position']}")
            print(f"   Treasures found: {stats['treasures_found']}")
            print(f"   Treasures remaining: {stats['treasures_remaining']}")
            print(f"   Total moves: {stats['moves']}")
            
            if len(game.treasures) == 0:
                print("\n" + "=" * 50)
                print("🎉 CONGRATULATIONS! 🎉".center(50))
                print(f"You found all treasures in {stats['moves']} moves!".center(50))
                print("=" * 50)
                break
        else:
            print("❌ Invalid input!")

if __name__ == "__main__":
    play_game()
```

### **Latihan**

**Latihan 1: RGB Color Manager**
```python
# Tugas: Buat color palette menggunakan tuples

colors = {
    "red": (255, 0, 0),
    "green": (0, 255, 0),
    "blue": (0, 0, 255),
    "purple": (128, 0, 128),
    "yellow": (255, 255, 0)
}

def get_color_info(color_name):
    if color_name in colors:
        r, g, b = colors[color_name]
        return f"{color_name.title()}: RGB({r}, {g}, {b})"
    return "Color not found"

print(get_color_info("purple"))
print(get_color_info("red"))
```

**Latihan 2: Date Calculator**
```python
# Tugas: Buat tuple untuk tanggal dan hitung umur

def calculate_age(birth_date, current_date):
    """
    birth_date: (day, month, year)
    current_date: (day, month, year)
    """
    bd, bm, by = birth_date
    cd, cm, cy = current_date
    
    age = cy - by
    
    if cm < bm or (cm == bm and cd < bd):
        age -= 1
    
    return age

tanggal_lahir = (7, 11, 2006)
hari_ini = (16, 10, 2025)

umur = calculate_age(tanggal_lahir, hari_ini)
print(f"Umur: {umur} tahun")
```

**Latihan 3: Multiple Return Values**
```python
# Tugas: Function yang return statistik dalam tuple

def analyze_numbers(numbers):
    """Return (min, max, avg, sum) as tuple"""
    if not numbers:
        return None
    
    return (
        min(numbers),
        max(numbers),
        sum(numbers) / len(numbers),
        sum(numbers)
    )

data = [10, 20, 30, 40, 50]
minimum, maksimum, rata_rata, total = analyze_numbers(data)

print(f"Min: {minimum}")
print(f"Max: {maksimum}")
print(f"Average: {rata_rata}")
print(f"Sum: {total}")
```

---

## 💡 Sets Basics

### **Teori**

Set adalah collection yang menyimpan **unique items** (tidak ada duplikat) dan **unordered** (tidak punya urutan tetap).

**Karakteristik Set:**
- 🚫 No duplicates: Otomatis menghapus item yang sama
- 📝 Unordered: Tidak bisa diakses by index
- 🔄 Mutable: Bisa ditambah/dihapus (tapi item-nya harus immutable)
- ⚡ Fast membership testing: Cek apakah item ada dalam set sangat cepat (O(1))
- 🧮 Mathematical operations: Union, intersection, difference

**Kapan pakai Set?**
- ✅ Menghapus duplikat dari list
- ✅ Membership testing (cek apakah item ada)
- ✅ Operasi matematika himpunan
- ✅ Menyimpan koleksi unik (tags, categories)

**Sintaks:**
```python
set_name = {item1, item2, item3}
empty_set = set()  # {} = dict kosong, bukan set!
```

### **Contoh Kode / Contoh Praktik**

```python
# ===== 1. MEMBUAT SET =====
print("1️⃣ MEMBUAT SET")
print("-" * 50)

# Set dengan items
fruits = {"apple", "banana", "orange"}
print(f"Fruits: {fruits}")

# Set dari list (auto remove duplicates)
numbers = [1, 2, 2, 3, 3, 3, 4, 5, 5]
unique_numbers = set(numbers)
print(f"Unique numbers: {unique_numbers}")

# Empty set (HARUS pakai set(), bukan {})
empty = set()
not_empty = {}  # Ini dict, bukan set!
print(f"Empty set type: {type(empty)}")
print(f"Empty dict type: {type(not_empty)}")


# ===== 2. MENAMBAH & MENGHAPUS =====
print("\n2️⃣ MENAMBAH & MENGHAPUS")
print("-" * 50)

languages = {"Python", "JavaScript"}
print(f"Before: {languages}")

# add() - tambah satu item
languages.add("Java")
languages.add("Python")  # Diabaikan karena sudah ada
print(f"After add: {languages}")

# update() - tambah multiple items
languages.update(["C++", "Go", "Rust"])
print(f"After update: {languages}")

# remove() - hapus item (error jika tidak ada)
languages.remove("Java")
print(f"After remove: {languages}")

# discard() - hapus item (tidak error jika tidak ada)
languages.discard("Ruby")  # Tidak error
print(f"After discard: {languages}")

# pop() - hapus random item
removed = languages.pop()
print(f"Popped: {removed}")
print(f"After pop: {languages}")

# clear() - kosongkan set
languages.clear()
print(f"After clear: {languages}")


# ===== 3. SET OPERATIONS =====
print("\n3️⃣ SET OPERATIONS")
print("-" * 50)

A = {1, 2, 3, 4, 5}
B = {4, 5, 6, 7, 8}

print(f"A: {A}")
print(f"B: {B}")

# Union (gabungan)
union = A | B  # atau A.union(B)
print(f"A | B (union): {union}")

# Intersection (irisan)
intersection = A & B  # atau A.intersection(B)
print(f"A & B (intersection): {intersection}")

# Difference (selisih)
difference = A - B  # atau A.difference(B)
print(f"A - B (difference): {difference}")

# Symmetric difference (XOR)
sym_diff = A ^ B  # atau A.symmetric_difference(B)
print(f"A ^ B (symmetric difference): {sym_diff}")


# ===== 4. SUBSET & SUPERSET =====
print("\n4️⃣ SUBSET & SUPERSET")
print("-" * 50)

A = {1, 2, 3}
B = {1, 2, 3, 4, 5}
C = {6, 7}

# issubset() - apakah A subset dari B?
print(f"A subset of B? {A.issubset(B)}")  # True
print(f"A <= B? {A <= B}")  # True

# issuperset() - apakah B superset dari A?
print(f"B superset of A? {B.issuperset(A)}")  # True
print(f"B >= A? {B >= A}")  # True

# isdisjoint() - apakah tidak ada irisan?
print(f"A disjoint with C? {A.isdisjoint(C)}")  # True


# ===== 5. MEMBERSHIP TESTING =====
print("\n5️⃣ MEMBERSHIP TESTING")
print("-" * 50)

fruits = {"apple", "banana", "orange"}

# Check if item exists
if "apple" in fruits:
    print("✅ Apple is in fruits")

if "grape" not in fruits:
    print("❌ Grape is not in fruits")

# Set lebih cepat dari list untuk membership testing
import time

large_list = list(range(1000000))
large_set = set(large_list)

# Test with list
start = time.time()
999999 in large_list
list_time = time.time() - start

# Test with set
start = time.time()
999999 in large_set
set_time = time.time() - start

print(f"\nList search time: {list_time:.6f}s")
print(f"Set search time: {set_time:.6f}s")
print(f"Set is {list_time/set_time:.0f}x faster!")


# ===== 6. FROZEN SET =====
print("\n6️⃣ FROZEN SET")
print("-" * 50)

# frozenset = immutable set (tidak bisa diubah)
frozen = frozenset([1, 2, 3, 4, 5])
print(f"Frozen set: {frozen}")

# ❌ Tidak bisa add/remove
# frozen.add(6)  # AttributeError!

# ✅ Bisa digunakan sebagai dict key atau set item
valid_dict = {frozen: "This works!"}
print(f"Dict with frozen key: {valid_dict}")

nested_set = {frozenset([1, 2]), frozenset([3, 4])}
print(f"Nested set: {nested_set}")


# ===== 7. SET COMPREHENSION =====
print("\n7️⃣ SET COMPREHENSION")
print("-" * 50)

# Membuat set dari range
squares = {x**2 for x in range(1, 6)}
print(f"Squares: {squares}")

# Dengan kondisi
even_squares = {x**2 for x in range(1, 11) if x % 2 == 0}
print(f"Even squares: {even_squares}")

# Dari string (unique characters)
text = "hello world"
unique_chars = {char for char in text if char != ' '}
print(f"Unique chars: {unique_chars}")


# ===== 8. PRAKTIK: Remove Duplicates =====
print("\n8️⃣ PRAKTIK: Remove Duplicates")
print("-" * 50)

def remove_duplicates(items):
    """Remove duplicates from list while preserving type"""
    return list(set(items))

numbers = [1, 2, 2, 3, 3, 3, 4, 5, 5]
print(f"Original: {numbers}")
print(f"After removing duplicates: {remove_duplicates(numbers)}")

# Note: Order tidak preserved!
# Jika perlu order, gunakan dict.fromkeys()
def remove_duplicates_ordered(items):
    return list(dict.fromkeys(items))

print(f"With order preserved: {remove_duplicates_ordered(numbers)}")


# ===== 9. PRAKTIK: Common & Unique Items =====
print("\n9️⃣ PRAKTIK: Common & Unique Items")
print("-" * 50)

farid_hobbies = {"coding", "music", "gaming", "reading"}
aurielle_hobbies = {"coding", "reading", "art", "writing"}

# Common hobbies
common = farid_hobbies & aurielle_hobbies
print(f"Common hobbies: {common}")

# Farid's unique hobbies
farid_unique = farid_hobbies - aurielle_hobbies
print(f"Farid's unique: {farid_unique}")

# Aurielle's unique hobbies
aurielle_unique = aurielle_hobbies - farid_hobbies
print(f"Aurielle's unique: {aurielle_unique}")

# All unique hobbies
all_unique = farid_hobbies ^ aurielle_hobbies
print(f"All unique: {all_unique}")


# ===== 10. PRAKTIK: Tag System =====
print("\n🔟 PRAKTIK: Tag System")
print("-" * 50)

posts = [
    {"title": "Python Basics", "tags": {"python", "programming", "tutorial"}},
    {"title": "Web Dev", "tags": {"html", "css", "javascript", "web"}},
    {"title": "Python Advanced", "tags": {"python", "programming", "advanced"}},
    {"title": "React Tutorial", "tags": {"react", "javascript", "web", "tutorial"}}
]

def get_all_tags(posts):
    """Get all unique tags from posts"""
    all_tags = set()
    for post in posts:
        all_tags.update(post["tags"])
    return all_tags

def find_posts_by_tag(posts, tag):
    """Find posts that have specific tag"""
    return [post["title"] for post in posts if tag in post["tags"]]

def find_common_tags(posts):
    """Find tags common to all posts"""
    if not posts:
        return set()
    
    common = posts[0]["tags"].copy()
    for post in posts[1:]:
        common &= post["tags"]
    return common

print(f"All tags: {get_all_tags(posts)}")
print(f"Posts with 'python': {find_posts_by_tag(posts, 'python')}")
print(f"Common tags: {find_common_tags(posts)}")
```

### **Studi Kasus: Unique Visitors Tracker**

```python
class VisitorTracker:
    def __init__(self):
        self.daily_visitors = {}  # {date: set of visitor_ids}
        self.all_visitors = set()
    
    def add_visit(self, date, visitor_id):
        """Record a visit"""
        if date not in self.daily_visitors:
            self.daily_visitors[date] = set()
        
        self.daily_visitors[date].add(visitor_id)
        self.all_visitors.add(visitor_id)
    
    def get_daily_unique(self, date):
        """Get unique visitors for a specific date"""
        return len(self.daily_visitors.get(date, set()))
    
    def get_total_unique(self):
        """Get total unique visitors"""
        return len(self.all_visitors)
    
    def get_returning_visitors(self):
        """Get visitors who came more than once"""
        visit_counts = {}
        for date, visitors in self.daily_visitors.items():
            for visitor in visitors:
                visit_counts[visitor] = visit_counts.get(visitor, 0) + 1
        
        return {vid for vid, count in visit_counts.items() if count > 1}
    
    def get_common_visitors(self, date1, date2):
        """Get visitors who visited on both dates"""
        set1 = self.daily_visitors.get(date1, set())
        set2 = self.daily_visitors.get(date2, set())
        return set1 & set2

# Test
tracker = VisitorTracker()

# Simulate visits
tracker.add_visit("2025-01-01", "user123")
tracker.add_visit("2025-01-01", "user456")
tracker.add_visit("2025-01-01", "user789")
tracker.add_visit("2025-01-02", "user123")  # Returning!
tracker.add_visit("2025-01-02", "user456")  # Returning!
tracker.add_visit("2025-01-02", "user999")

print(f"Unique visitors Jan 1: {tracker.get_daily_unique('2025-01-01')}")
print(f"Unique visitors Jan 2: {tracker.get_daily_unique('2025-01-02')}")
print(f"Total unique visitors: {tracker.get_total_unique()}")
print(f"Returning visitors: {tracker.get_returning_visitors()}")
print(f"Common visitors (Jan 1-2): {tracker.get_common_visitors('2025-01-01', '2025-01-02')}")
```

### **Latihan**

**Latihan 1: Email Domain Extractor**

```python
# Tugas: Extract unique domains from email list

emails = [
    "farid@gmail.com",
    "aurielle@yahoo.com",
    "nara@gmail.com",
    "elowen@hotmail.com",
    "partner@gmail.com"
]

def get_unique_domains(emails):
    domains = set()
    for email in emails:
        domain = email.split('@')[1]
        domains.add(domain)
    return domains

# Atau dengan set comprehension
domains = {email.split('@')[1] for email in emails}

print(f"Unique domains: {domains}")
```

**Latihan 2: Password Validator**

```python
# Tugas: Check password requirements

def validate_password(password):
    """Check if password meets requirements"""
    has_lower = any(c.islower() for c in password)
    has_upper = any(c.isupper() for c in password)
    has_digit = any(c.isdigit() for c in password)
    has_special = bool(set(password) & set("!@#$%^&*()"))
    
    return all([has_lower, has_upper, has_digit, has_special, len(password) >= 8])

# Test
passwords = ["Weak", "Strong123!", "NoSpecial123", "short1!"]
for pwd in passwords:
    status = "✅" if validate_password(pwd) else "❌"
    print(f"{status} {pwd}")
```

---

## 💡 Dictionaries Basics

### **Teori**

Dictionary adalah collection yang menyimpan data dalam **key-value pairs**. Dictionary mirip kamus nyata: kamu cari kata (key), dapat artinya (value).

**Karakteristik Dictionary:**
- 🔑 Key-Value pairs: Setiap item punya key dan value
- 📝 Unordered: Tidak punya urutan (Python 3.7+ maintain insertion order)
- 🔄 Mutable: Bisa diubah setelah dibuat
- 🚫 No duplicate keys: Setiap key harus unik
- 🌈 Mixed types: Key dan value bisa berbagai tipe
- ⚡ Fast lookup: Akses by key sangat cepat (O(1))

**Kapan pakai Dictionary?**
- ✅ Data dengan label (nama, umur, email)
- ✅ Mapping/translation (English → Indonesian)
- ✅ Konfigurasi aplikasi
- ✅ JSON data (API responses)
- ✅ Counting/grouping data

**Sintaks:**
```python
dict_name = {
    "key1": "value1",
    "key2": "value2"
}
```

### **Contoh Kode / Contoh Praktik**

```python
# ===== 1. MEMBUAT DICTIONARY =====
# Dict kosong
empty_dict = {}
empty_dict2 = dict()

# Dict dengan items
mahasiswa = {
    "nama": "Farid Fathoni",
    "umur": 18,
    "jurusan": "TKJ",
    "ipk": 3.75
}

# Dict dengan berbagai tipe value
user = {
    "username": "farid123",
    "age": 18,
    "is_active": True,
    "hobbies": ["coding", "music", "gaming"],
    "address": {
        "city": "Bekasi",
        "country": "Indonesia"
    }
}

print(mahasiswa)
print(user)


# ===== 2. MENGAKSES VALUE =====
print("\n2️⃣ MENGAKSES VALUE")
print("-" * 50)

mahasiswa = {
    "nama": "Aurielle",
    "umur": 19,
    "jurusan": "Informatika"
}

# Akses dengan []
print(mahasiswa["nama"])    # Aurielle
print(mahasiswa["umur"])    # 19

# ❌ Error jika key tidak ada
# print(mahasiswa["email"])  # KeyError!

# ✅ Gunakan get() untuk safe access
email = mahasiswa.get("email")
print(email)  # None

# get() dengan default value
email = mahasiswa.get("email", "tidak ada")
print(email)  # tidak ada


# ===== 3. MENAMBAH & MENGUBAH =====
print("\n3️⃣ MENAMBAH & MENGUBAH")
print("-" * 50)

mahasiswa = {"nama": "Farid", "umur": 18}
print(f"Before: {mahasiswa}")

# Tambah key baru
mahasiswa["jurusan"] = "TKJ"
mahasiswa["ipk"] = 3.75

# Ubah value existing key
mahasiswa["umur"] = 19

print(f"After: {mahasiswa}")


# ===== 4. MENGHAPUS ITEM =====
print("\n4️⃣ MENGHAPUS ITEM")
print("-" * 50)

data = {
    "a": 1,
    "b": 2,
    "c": 3,
    "d": 4
}

# pop() - hapus by key, return value
value = data.pop("b")
print(f"Popped: {value}")
print(f"After pop: {data}")

# popitem() - hapus last item (Python 3.7+)
last = data.popitem()
print(f"Popped item: {last}")
print(f"After popitem: {data}")

# del - hapus by key
del data["c"]
print(f"After del: {data}")

# clear() - kosongkan dict
data.clear()
print(f"After clear: {data}")


# ===== 5. DICTIONARY METHODS =====
print("\n5️⃣ DICTIONARY METHODS")
print("-" * 50)

user = {
    "name": "Farid",
    "age": 18,
    "city": "Bekasi"
}

# keys() - dapatkan semua keys
print(f"Keys: {list(user.keys())}")

# values() - dapatkan semua values
print(f"Values: {list(user.values())}")

# items() - dapatkan key-value pairs
print(f"Items: {list(user.items())}")

# update() - merge dictionaries
new_data = {"email": "farid@email.com", "phone": "0812-3456-7890"}
user.update(new_data)
print(f"After update: {user}")


# ===== 6. LOOPING DICTIONARY =====
print("\n6️⃣ LOOPING DICTIONARY")
print("-" * 50)

mahasiswa = {
    "nama": "Aurielle",
    "umur": 19,
    "jurusan": "Informatika",
    "ipk": 3.85
}

# Loop keys
print("Loop keys:")
for key in mahasiswa:
    print(f"  {key}")

# Loop keys (explicit)
print("\nLoop keys (explicit):")
for key in mahasiswa.keys():
    print(f"  {key}: {mahasiswa[key]}")

# Loop values
print("\nLoop values:")
for value in mahasiswa.values():
    print(f"  {value}")

# Loop key-value pairs
print("\nLoop items:")
for key, value in mahasiswa.items():
    print(f"  {key}: {value}")


# ===== 7. NESTED DICTIONARY (lanjutan) =====
students = {
    "student1": {
        "name": "Farid",
        "age": 18,
        "grades": {"math": 85, "physics": 90, "english": 88}
    },
    "student2": {
        "name": "Aurielle",
        "age": 19,
        "grades": {"math": 92, "physics": 95, "english": 94}
    },
    "student3": {
        "name": "Nara",
        "age": 18,
        "grades": {"math": 78, "physics": 82, "english": 85}
    }
}

# Akses nested dict
print(students["student1"]["name"])           # Farid
print(students["student2"]["grades"]["math"]) # 92

# Loop nested dict
for student_id, info in students.items():
    print(f"\n{student_id}:")
    print(f"  Name: {info['name']}")
    print(f"  Age: {info['age']}")
    print(f"  Grades:")
    for subject, grade in info['grades'].items():
        print(f"    {subject}: {grade}")


# ===== 8. DICTIONARY COMPREHENSION =====
print("\n8️⃣ DICTIONARY COMPREHENSION")
print("-" * 50)

# Membuat dict dari range
squares = {x: x**2 for x in range(1, 6)}
print(f"Squares: {squares}")
# Output: {1: 1, 2: 4, 3: 9, 4: 16, 5: 25}

# Dengan kondisi
even_squares = {x: x**2 for x in range(1, 11) if x % 2 == 0}
print(f"Even squares: {even_squares}")
# Output: {2: 4, 4: 16, 6: 36, 8: 64, 10: 100}

# Dari list
names = ["Farid", "Aurielle", "Nara"]
name_lengths = {name: len(name) for name in names}
print(f"Name lengths: {name_lengths}")
# Output: {'Farid': 5, 'Aurielle': 8, 'Nara': 4}

# Transform values
prices = {"apple": 10000, "banana": 5000, "orange": 8000}
discounted = {fruit: price * 0.8 for fruit, price in prices.items()}
print(f"Discounted: {discounted}")


# ===== 9. CHECKING KEYS =====
print("\n9️⃣ CHECKING KEYS")
print("-" * 50)

user = {
    "username": "farid123",
    "email": "farid@email.com",
    "age": 18
}

# Check if key exists
if "email" in user:
    print(f"Email: {user['email']}")

if "phone" not in user:
    print("Phone number not found")

# get() dengan default
phone = user.get("phone", "No phone number")
print(f"Phone: {phone}")


# ===== 10. SETDEFAULT =====
print("\n🔟 SETDEFAULT")
print("-" * 50)

# setdefault() - get value, atau set jika tidak ada
user = {"name": "Farid", "age": 18}

# Key sudah ada
name = user.setdefault("name", "Unknown")
print(f"Name: {name}")  # Farid

# Key belum ada - akan ditambahkan
city = user.setdefault("city", "Jakarta")
print(f"City: {city}")  # Jakarta
print(f"User after: {user}")  # city ditambahkan


# ===== 11. FROMKEYS =====
print("\n1️⃣1️⃣ FROMKEYS")
print("-" * 50)

# Buat dict dari list keys dengan default value
keys = ["name", "age", "city"]
default_user = dict.fromkeys(keys, "unknown")
print(f"Default user: {default_user}")
# Output: {'name': 'unknown', 'age': 'unknown', 'city': 'unknown'}

# Tanpa default value (None)
empty_user = dict.fromkeys(keys)
print(f"Empty user: {empty_user}")


# ===== 12. COPY DICTIONARY =====
print("\n1️⃣2️⃣ COPY DICTIONARY")
print("-" * 50)

original = {"a": 1, "b": 2, "c": 3}

# ❌ SALAH: Assignment = reference
copy1 = original
copy1["a"] = 999
print(f"Original: {original}")  # {'a': 999, ...} - BERUBAH!

# ✅ BENAR: copy()
original = {"a": 1, "b": 2, "c": 3}
copy2 = original.copy()
copy2["a"] = 999
print(f"Original: {original}")  # {'a': 1, ...} - TIDAK BERUBAH

# ✅ BENAR: dict()
copy3 = dict(original)

# Deep copy untuk nested dict
import copy
nested = {"a": {"x": 1, "y": 2}}
deep = copy.deepcopy(nested)
deep["a"]["x"] = 999
print(f"Original nested: {nested}")  # {'a': {'x': 1, 'y': 2}}


# ===== 13. MERGE DICTIONARIES =====
print("\n1️⃣3️⃣ MERGE DICTIONARIES")
print("-" * 50)

dict1 = {"a": 1, "b": 2}
dict2 = {"c": 3, "d": 4}
dict3 = {"e": 5, "a": 10}  # 'a' duplicate

# Method 1: update()
merged1 = dict1.copy()
merged1.update(dict2)
print(f"Merged with update: {merged1}")

# Method 2: {**dict1, **dict2} (Python 3.5+)
merged2 = {**dict1, **dict2, **dict3}
print(f"Merged with **: {merged2}")
# Note: duplicate key 'a' akan overwrite (ambil yang terakhir)

# Method 3: | operator (Python 3.9+)
merged3 = dict1 | dict2
print(f"Merged with |: {merged3}")


# ===== 14. PRAKTIK: Word Counter =====
print("\n1️⃣4️⃣ PRAKTIK: Word Counter")
print("-" * 50)

def count_words(text):
    """Hitung frekuensi kata dalam text"""
    words = text.lower().split()
    word_count = {}
    
    for word in words:
        # Bersihkan tanda baca
        word = word.strip('.,!?;:"')
        if word:
            word_count[word] = word_count.get(word, 0) + 1
    
    return word_count

text = "Python is awesome. Python is powerful. I love Python and Python loves me."
counts = count_words(text)

print("Word frequencies:")
for word, count in sorted(counts.items(), key=lambda x: x[1], reverse=True):
    print(f"  {word}: {count}")


# ===== 15. PRAKTIK: Grade Book =====
print("\n1️⃣5️⃣ PRAKTIK: Grade Book")
print("-" * 50)

gradebook = {}

def add_student(name, grades):
    """Tambah mahasiswa dengan nilai-nilainya"""
    gradebook[name] = grades

def get_average(name):
    """Hitung rata-rata nilai mahasiswa"""
    if name in gradebook:
        grades = gradebook[name]
        return sum(grades.values()) / len(grades)
    return None

def get_top_students(n=3):
    """Dapatkan top n mahasiswa"""
    averages = {name: get_average(name) for name in gradebook}
    sorted_students = sorted(averages.items(), key=lambda x: x[1], reverse=True)
    return sorted_students[:n]

# Test
add_student("Farid", {"math": 85, "physics": 90, "english": 88})
add_student("Aurielle", {"math": 92, "physics": 95, "english": 94})
add_student("Nara", {"math": 78, "physics": 82, "english": 85})
add_student("Elowen", {"math": 88, "physics": 86, "english": 90})

print(f"Farid's average: {get_average('Farid'):.2f}")

print("\nTop 3 students:")
for i, (name, avg) in enumerate(get_top_students(), 1):
    print(f"  {i}. {name}: {avg:.2f}")
```

**Studi Kasus**
**Kasus: Contact Management System**

```Python
class ContactManager:
    def __init__(self):
        self.contacts = {}
    
    def add_contact(self, name, phone, email=None, address=None):
        """Tambah contact baru"""
        if name in self.contacts:
            print(f"❌ {name} sudah ada!")
            return False
        
        self.contacts[name] = {
            "phone": phone,
            "email": email or "No email",
            "address": address or "No address",
            "tags": [],
            "notes": "",
            "favorite": False
        }
        print(f"✅ {name} berhasil ditambahkan!")
        return True
    
    def update_contact(self, name, **kwargs):
        """Update info contact"""
        if name not in self.contacts:
            print(f"❌ {name} tidak ditemukan!")
            return False
        
        for key, value in kwargs.items():
            if key in self.contacts[name]:
                self.contacts[name][key] = value
        
        print(f"✅ {name} berhasil diupdate!")
        return True
    
    def delete_contact(self, name):
        """Hapus contact"""
        if name in self.contacts:
            del self.contacts[name]
            print(f"🗑️ {name} berhasil dihapus!")
            return True
        else:
            print(f"❌ {name} tidak ditemukan!")
            return False
    
    def search_contact(self, keyword):
        """Cari contact by name, phone, atau email"""
        keyword = keyword.lower()
        results = {}
        
        for name, info in self.contacts.items():
            if (keyword in name.lower() or 
                keyword in info["phone"] or 
                keyword in info["email"].lower()):
                results[name] = info
        
        return results
    
    def add_tag(self, name, tag):
        """Tambah tag ke contact"""
        if name in self.contacts:
            if tag not in self.contacts[name]["tags"]:
                self.contacts[name]["tags"].append(tag)
                print(f"🏷️ Tag '{tag}' ditambahkan ke {name}")
            else:
                print(f"⚠️ Tag '{tag}' sudah ada!")
        else:
            print(f"❌ {name} tidak ditemukan!")
    
    def toggle_favorite(self, name):
        """Toggle favorite status"""
        if name in self.contacts:
            current = self.contacts[name]["favorite"]
            self.contacts[name]["favorite"] = not current
            status = "⭐ Favorite" if not current else "Regular"
            print(f"{status}: {name}")
        else:
            print(f"❌ {name} tidak ditemukan!")
    
    def get_favorites(self):
        """Dapatkan semua favorite contacts"""
        return {name: info for name, info in self.contacts.items() 
                if info["favorite"]}
    
    def get_by_tag(self, tag):
        """Dapatkan contacts by tag"""
        return {name: info for name, info in self.contacts.items()
                if tag in info["tags"]}
    
    def display_contact(self, name):
        """Tampilkan detail contact"""
        if name not in self.contacts:
            print(f"❌ {name} tidak ditemukan!")
            return
        
        info = self.contacts[name]
        fav = "⭐" if info["favorite"] else ""
        
        print("\n" + "=" * 50)
        print(f"{fav} {name}".center(50))
        print("=" * 50)
        print(f"📞 Phone   : {info['phone']}")
        print(f"📧 Email   : {info['email']}")
        print(f"🏠 Address : {info['address']}")
        
        if info['tags']:
            print(f"🏷️  Tags    : {', '.join(info['tags'])}")
        
        if info['notes']:
            print(f"📝 Notes   : {info['notes']}")
        
        print("=" * 50)
    
    def display_all(self, sort_by="name"):
        """Tampilkan semua contacts"""
        if not self.contacts:
            print("\n📭 Contact list kosong!")
            return
        
        # Sort
        if sort_by == "name":
            sorted_contacts = sorted(self.contacts.items())
        else:
            sorted_contacts = self.contacts.items()
        
        print("\n" + "=" * 70)
        print("CONTACT LIST 📱".center(70))
        print("=" * 70)
        print(f"{'Name':<20} {'Phone':<15} {'Email':<25} {'Tags':<10}")
        print("-" * 70)
        
        for name, info in sorted_contacts:
            fav = "⭐" if info["favorite"] else "  "
            tags = ", ".join(info["tags"][:2]) if info["tags"] else "-"
            print(
                f"{fav}{name:<18} {info['phone']:<15} "
                f"{info['email']:<25} {tags:<10}"
            )
        
        print("=" * 70)
        print(f"Total: {len(self.contacts)} contacts")
        print("=" * 70)
    
    def export_to_dict(self):
        """Export contacts ke dictionary"""
        return self.contacts.copy()
    
    def import_from_dict(self, data):
        """Import contacts dari dictionary"""
        self.contacts.update(data)
        print(f"✅ {len(data)} contacts imported!")


def main():
    """Program utama"""
    manager = ContactManager()
    
    # Sample data
    manager.add_contact("Farid Fathoni", "0812-3456-7890", 
                       "farid@email.com", "Bekasi, Indonesia")
    manager.add_contact("Aurielle Nara", "0813-9876-5432",
                       "aurielle@email.com", "Kediri, Indonesia")
    manager.add_contact("Partner 💜", "Always in heart",
                       "partner@universe.love", "In every universe")
    
    manager.add_tag("Farid Fathoni", "Developer")
    manager.add_tag("Farid Fathoni", "Friend")
    manager.add_tag("Aurielle Nara", "Developer")
    manager.toggle_favorite("Partner 💜")
    
    while True:
        print("\n" + "=" * 50)
        print("CONTACT MANAGER 📱".center(50))
        print("=" * 50)
        print("1. View all contacts")
        print("2. View contact detail")
        print("3. Add contact")
        print("4. Update contact")
        print("5. Delete contact")
        print("6. Search contact")
        print("7. Manage tags")
        print("8. View favorites")
        print("9. Toggle favorite")
        print("0. Exit")
        print("=" * 50)
        
        choice = input("Choose menu: ")
        
        if choice == "1":
            manager.display_all()
        
        elif choice == "2":
            name = input("Name: ")
            manager.display_contact(name)
        
        elif choice == "3":
            name = input("Name: ")
            phone = input("Phone: ")
            email = input("Email (optional): ") or None
            address = input("Address (optional): ") or None
            manager.add_contact(name, phone, email, address)
        
        elif choice == "4":
            name = input("Name to update: ")
            if name in manager.contacts:
                print("Leave blank to keep current value")
                phone = input("New phone: ")
                email = input("New email: ")
                address = input("New address: ")
                
                updates = {}
                if phone: updates["phone"] = phone
                if email: updates["email"] = email
                if address: updates["address"] = address
                
                manager.update_contact(name, **updates)
        
        elif choice == "5":
            name = input("Name to delete: ")
            confirm = input(f"Delete {name}? (y/n): ")
            if confirm.lower() == 'y':
                manager.delete_contact(name)
        
        elif choice == "6":
            keyword = input("Search keyword: ")
            results = manager.search_contact(keyword)
            
            if results:
                print(f"\n✅ Found {len(results)} contact(s):")
                for name in results:
                    print(f"   - {name}")
            else:
                print("❌ No contacts found")
        
        elif choice == "7":
            name = input("Contact name: ")
            tag = input("Tag to add: ")
            manager.add_tag(name, tag)
        
        elif choice == "8":
            favorites = manager.get_favorites()
            if favorites:
                print("\n⭐ FAVORITES:")
                for name in favorites:
                    print(f"   - {name}")
            else:
                print("\n📭 No favorites yet")
        
        elif choice == "9":
            name = input("Contact name: ")
            manager.toggle_favorite(name)
        
        elif choice == "0":
            print("\n💜 Thanks for using Contact Manager!")
            break
        
        else:
            print("❌ Invalid choice!")

if __name__ == "__main__":
    main()
```

**Latihan**
**Latihan 1: Shopping Cart with Dict**

```Python
# ===== 7. NESTED DICTIONARY (lanjutan) =====
students = {
    "student1": {
        "name": "Farid",
        "age": 18,
        "grades": {"math": 85, "physics": 90, "english": 88}
    },
    "student2": {
        "name": "Aurielle",
        "age": 19,
        "grades": {"math": 92, "physics": 95, "english": 94}
    },
    "student3": {
        "name": "Nara",
        "age": 18,
        "grades": {"math": 78, "physics": 82, "english": 85}
    }
}

# Akses nested dict
print(students["student1"]["name"])           # Farid
print(students["student2"]["grades"]["math"]) # 92

# Loop nested dict
for student_id, info in students.items():
    print(f"\n{student_id}:")
    print(f"  Name: {info['name']}")
    print(f"  Age: {info['age']}")
    print(f"  Grades:")
    for subject, grade in info['grades'].items():
        print(f"    {subject}: {grade}")


# ===== 8. DICTIONARY COMPREHENSION =====
print("\n8️⃣ DICTIONARY COMPREHENSION")
print("-" * 50)

# Membuat dict dari range
squares = {x: x**2 for x in range(1, 6)}
print(f"Squares: {squares}")
# Output: {1: 1, 2: 4, 3: 9, 4: 16, 5: 25}

# Dengan kondisi
even_squares = {x: x**2 for x in range(1, 11) if x % 2 == 0}
print(f"Even squares: {even_squares}")
# Output: {2: 4, 4: 16, 6: 36, 8: 64, 10: 100}

# Dari list
names = ["Farid", "Aurielle", "Nara"]
name_lengths = {name: len(name) for name in names}
print(f"Name lengths: {name_lengths}")
# Output: {'Farid': 5, 'Aurielle': 8, 'Nara': 4}

# Transform values
prices = {"apple": 10000, "banana": 5000, "orange": 8000}
discounted = {fruit: price * 0.8 for fruit, price in prices.items()}
print(f"Discounted: {discounted}")


# ===== 9. CHECKING KEYS =====
print("\n9️⃣ CHECKING KEYS")
print("-" * 50)

user = {
    "username": "farid123",
    "email": "farid@email.com",
    "age": 18
}

# Check if key exists
if "email" in user:
    print(f"Email: {user['email']}")

if "phone" not in user:
    print("Phone number not found")

# get() dengan default
phone = user.get("phone", "No phone number")
print(f"Phone: {phone}")


# ===== 10. SETDEFAULT =====
print("\n🔟 SETDEFAULT")
print("-" * 50)

# setdefault() - get value, atau set jika tidak ada
user = {"name": "Farid", "age": 18}

# Key sudah ada
name = user.setdefault("name", "Unknown")
print(f"Name: {name}")  # Farid

# Key belum ada - akan ditambahkan
city = user.setdefault("city", "Jakarta")
print(f"City: {city}")  # Jakarta
print(f"User after: {user}")  # city ditambahkan


# ===== 11. FROMKEYS =====
print("\n1️⃣1️⃣ FROMKEYS")
print("-" * 50)

# Buat dict dari list keys dengan default value
keys = ["name", "age", "city"]
default_user = dict.fromkeys(keys, "unknown")
print(f"Default user: {default_user}")
# Output: {'name': 'unknown', 'age': 'unknown', 'city': 'unknown'}

# Tanpa default value (None)
empty_user = dict.fromkeys(keys)
print(f"Empty user: {empty_user}")


# ===== 12. COPY DICTIONARY =====
print("\n1️⃣2️⃣ COPY DICTIONARY")
print("-" * 50)

original = {"a": 1, "b": 2, "c": 3}

# ❌ SALAH: Assignment = reference
copy1 = original
copy1["a"] = 999
print(f"Original: {original}")  # {'a': 999, ...} - BERUBAH!

# ✅ BENAR: copy()
original = {"a": 1, "b": 2, "c": 3}
copy2 = original.copy()
copy2["a"] = 999
print(f"Original: {original}")  # {'a': 1, ...} - TIDAK BERUBAH

# ✅ BENAR: dict()
copy3 = dict(original)

# Deep copy untuk nested dict
import copy
nested = {"a": {"x": 1, "y": 2}}
deep = copy.deepcopy(nested)
deep["a"]["x"] = 999
print(f"Original nested: {nested}")  # {'a': {'x': 1, 'y': 2}}


# ===== 13. MERGE DICTIONARIES =====
print("\n1️⃣3️⃣ MERGE DICTIONARIES")
print("-" * 50)

dict1 = {"a": 1, "b": 2}
dict2 = {"c": 3, "d": 4}
dict3 = {"e": 5, "a": 10}  # 'a' duplicate

# Method 1: update()
merged1 = dict1.copy()
merged1.update(dict2)
print(f"Merged with update: {merged1}")

# Method 2: {**dict1, **dict2} (Python 3.5+)
merged2 = {**dict1, **dict2, **dict3}
print(f"Merged with **: {merged2}")
# Note: duplicate key 'a' akan overwrite (ambil yang terakhir)

# Method 3: | operator (Python 3.9+)
merged3 = dict1 | dict2
print(f"Merged with |: {merged3}")


# ===== 14. PRAKTIK: Word Counter =====
print("\n1️⃣4️⃣ PRAKTIK: Word Counter")
print("-" * 50)

def count_words(text):
    """Hitung frekuensi kata dalam text"""
    words = text.lower().split()
    word_count = {}
    
    for word in words:
        # Bersihkan tanda baca
        word = word.strip('.,!?;:"')
        if word:
            word_count[word] = word_count.get(word, 0) + 1
    
    return word_count

text = "Python is awesome. Python is powerful. I love Python and Python loves me."
counts = count_words(text)

print("Word frequencies:")
for word, count in sorted(counts.items(), key=lambda x: x[1], reverse=True):
    print(f"  {word}: {count}")


# ===== 15. PRAKTIK: Grade Book =====
print("\n1️⃣5️⃣ PRAKTIK: Grade Book")
print("-" * 50)

gradebook = {}

def add_student(name, grades):
    """Tambah mahasiswa dengan nilai-nilainya"""
    gradebook[name] = grades

def get_average(name):
    """Hitung rata-rata nilai mahasiswa"""
    if name in gradebook:
        grades = gradebook[name]
        return sum(grades.values()) / len(grades)
    return None

def get_top_students(n=3):
    """Dapatkan top n mahasiswa"""
    averages = {name: get_average(name) for name in gradebook}
    sorted_students = sorted(averages.items(), key=lambda x: x[1], reverse=True)
    return sorted_students[:n]

# Test
add_student("Farid", {"math": 85, "physics": 90, "english": 88})
add_student("Aurielle", {"math": 92, "physics": 95, "english": 94})
add_student("Nara", {"math": 78, "physics": 82, "english": 85})
add_student("Elowen", {"math": 88, "physics": 86, "english": 90})

print(f"Farid's average: {get_average('Farid'):.2f}")

print("\nTop 3 students:")
for i, (name, avg) in enumerate(get_top_students(), 1):
    print(f"  {i}. {name}: {avg:.2f}")
```

**Studi Kasus**
**Kasus: Contact Management System**

```Python
class ContactManager:
    def __init__(self):
        self.contacts = {}
    
    def add_contact(self, name, phone, email=None, address=None):
        """Tambah contact baru"""
        if name in self.contacts:
            print(f"❌ {name} sudah ada!")
            return False
        
        self.contacts[name] = {
            "phone": phone,
            "email": email or "No email",
            "address": address or "No address",
            "tags": [],
            "notes": "",
            "favorite": False
        }
        print(f"✅ {name} berhasil ditambahkan!")
        return True
    
    def update_contact(self, name, **kwargs):
        """Update info contact"""
        if name not in self.contacts:
            print(f"❌ {name} tidak ditemukan!")
            return False
        
        for key, value in kwargs.items():
            if key in self.contacts[name]:
                self.contacts[name][key] = value
        
        print(f"✅ {name} berhasil diupdate!")
        return True
    
    def delete_contact(self, name):
        """Hapus contact"""
        if name in self.contacts:
            del self.contacts[name]
            print(f"🗑️ {name} berhasil dihapus!")
            return True
        else:
            print(f"❌ {name} tidak ditemukan!")
            return False
    
    def search_contact(self, keyword):
        """Cari contact by name, phone, atau email"""
        keyword = keyword.lower()
        results = {}
        
        for name, info in self.contacts.items():
            if (keyword in name.lower() or 
                keyword in info["phone"] or 
                keyword in info["email"].lower()):
                results[name] = info
        
        return results
    
    def add_tag(self, name, tag):
        """Tambah tag ke contact"""
        if name in self.contacts:
            if tag not in self.contacts[name]["tags"]:
                self.contacts[name]["tags"].append(tag)
                print(f"🏷️ Tag '{tag}' ditambahkan ke {name}")
            else:
                print(f"⚠️ Tag '{tag}' sudah ada!")
        else:
            print(f"❌ {name} tidak ditemukan!")
    
    def toggle_favorite(self, name):
        """Toggle favorite status"""
        if name in self.contacts:
            current = self.contacts[name]["favorite"]
            self.contacts[name]["favorite"] = not current
            status = "⭐ Favorite" if not current else "Regular"
            print(f"{status}: {name}")
        else:
            print(f"❌ {name} tidak ditemukan!")
    
    def get_favorites(self):
        """Dapatkan semua favorite contacts"""
        return {name: info for name, info in self.contacts.items() 
                if info["favorite"]}
    
    def get_by_tag(self, tag):
        """Dapatkan contacts by tag"""
        return {name: info for name, info in self.contacts.items()
                if tag in info["tags"]}
    
    def display_contact(self, name):
        """Tampilkan detail contact"""
        if name not in self.contacts:
            print(f"❌ {name} tidak ditemukan!")
            return
        
        info = self.contacts[name]
        fav = "⭐" if info["favorite"] else ""
        
        print("\n" + "=" * 50)
        print(f"{fav} {name}".center(50))
        print("=" * 50)
        print(f"📞 Phone   : {info['phone']}")
        print(f"📧 Email   : {info['email']}")
        print(f"🏠 Address : {info['address']}")
        
        if info['tags']:
            print(f"🏷️  Tags    : {', '.join(info['tags'])}")
        
        if info['notes']:
            print(f"📝 Notes   : {info['notes']}")
        
        print("=" * 50)
    
    def display_all(self, sort_by="name"):
        """Tampilkan semua contacts"""
        if not self.contacts:
            print("\n📭 Contact list kosong!")
            return
        
        # Sort
        if sort_by == "name":
            sorted_contacts = sorted(self.contacts.items())
        else:
            sorted_contacts = self.contacts.items()
        
        print("\n" + "=" * 70)
        print("CONTACT LIST 📱".center(70))
        print("=" * 70)
        print(f"{'Name':<20} {'Phone':<15} {'Email':<25} {'Tags':<10}")
        print("-" * 70)
        
        for name, info in sorted_contacts:
            fav = "⭐" if info["favorite"] else "  "
            tags = ", ".join(info["tags"][:2]) if info["tags"] else "-"
            print(
                f"{fav}{name:<18} {info['phone']:<15} "
                f"{info['email']:<25} {tags:<10}"
            )
        
        print("=" * 70)
        print(f"Total: {len(self.contacts)} contacts")
        print("=" * 70)
    
    def export_to_dict(self):
        """Export contacts ke dictionary"""
        return self.contacts.copy()
    
    def import_from_dict(self, data):
        """Import contacts dari dictionary"""
        self.contacts.update(data)
        print(f"✅ {len(data)} contacts imported!")


def main():
    """Program utama"""
    manager = ContactManager()
    
    # Sample data
    manager.add_contact("Farid Fathoni", "0812-3456-7890", 
                       "farid@email.com", "Bekasi, Indonesia")
    manager.add_contact("Aurielle Nara", "0813-9876-5432",
                       "aurielle@email.com", "Kediri, Indonesia")
    manager.add_contact("Partner 💜", "Always in heart",
                       "partner@universe.love", "In every universe")
    
    manager.add_tag("Farid Fathoni", "Developer")
    manager.add_tag("Farid Fathoni", "Friend")
    manager.add_tag("Aurielle Nara", "Developer")
    manager.toggle_favorite("Partner 💜")
    
    while True:
        print("\n" + "=" * 50)
        print("CONTACT MANAGER 📱".center(50))
        print("=" * 50)
        print("1. View all contacts")
        print("2. View contact detail")
        print("3. Add contact")
        print("4. Update contact")
        print("5. Delete contact")
        print("6. Search contact")
        print("7. Manage tags")
        print("8. View favorites")
        print("9. Toggle favorite")
        print("0. Exit")
        print("=" * 50)
        
        choice = input("Choose menu: ")
        
        if choice == "1":
            manager.display_all()
        
        elif choice == "2":
            name = input("Name: ")
            manager.display_contact(name)
        
        elif choice == "3":
            name = input("Name: ")
            phone = input("Phone: ")
            email = input("Email (optional): ") or None
            address = input("Address (optional): ") or None
            manager.add_contact(name, phone, email, address)
        
        elif choice == "4":
            name = input("Name to update: ")
            if name in manager.contacts:
                print("Leave blank to keep current value")
                phone = input("New phone: ")
                email = input("New email: ")
                address = input("New address: ")
                
                updates = {}
                if phone: updates["phone"] = phone
                if email: updates["email"] = email
                if address: updates["address"] = address
                
                manager.update_contact(name, **updates)
        
        elif choice == "5":
            name = input("Name to delete: ")
            confirm = input(f"Delete {name}? (y/n): ")
            if confirm.lower() == 'y':
                manager.delete_contact(name)
        
        elif choice == "6":
            keyword = input("Search keyword: ")
            results = manager.search_contact(keyword)
            
            if results:
                print(f"\n✅ Found {len(results)} contact(s):")
                for name in results:
                    print(f"   - {name}")
            else:
                print("❌ No contacts found")
        
        elif choice == "7":
            name = input("Contact name: ")
            tag = input("Tag to add: ")
            manager.add_tag(name, tag)
        
        elif choice == "8":
            favorites = manager.get_favorites()
            if favorites:
                print("\n⭐ FAVORITES:")
                for name in favorites:
                    print(f"   - {name}")
            else:
                print("\n📭 No favorites yet")
        
        elif choice == "9":
            name = input("Contact name: ")
            manager.toggle_favorite(name)
        
        elif choice == "0":
            print("\n💜 Thanks for using Contact Manager!")
            break
        
        else:
            print("❌ Invalid choice!")

if __name__ == "__main__":
    main()
```

**Latihan**
**Latihan 1: Shopping Cart with Dict**

```Python
# Tugas: Buat shopping cart menggunakan dictionary

cart = {}

def add_to_cart(item, price, quantity=1):
    if item in cart:
        cart[item]["quantity"] += quantity
    else:
        cart[item] = {"price": price, "quantity": quantity}
    print(f"✅ {item} added to cart")

def remove_from_cart(item):
    if item in cart:
        del cart[item]
        print(f"🗑️ {item} removed")
    else:
        print("❌ Item not found")

def get_total():
    total = sum(info["price"] * info["quantity"] for info in cart.values())
    return total

def display_cart():
    if not cart:
        print("🛒 Cart is empty")
        return
    
    print("\n🛒 SHOPPING CART:")
    for item, info in cart.items():
        subtotal = info["price"] * info["quantity"]
        print(f"  {item}: {info['quantity']}x Rp{info['price']:,} = Rp{subtotal:,}")
    print(f"\nTotal: Rp{get_total():,}")

# Test
add_to_cart("Laptop", 8000000)
add_to_cart("Mouse", 150000, 2)
add_to_cart("Keyboard", 500000)
display_cart()
```

**Latihan 2: Student Database**

```Python
# Tugas: Database mahasiswa dengan dictionary

students = {}

def add_student(student_id, name, major, gpa):
    students[student_id] = {
        "name": name,
        "major": major,
        "gpa": gpa
    }

def get_honor_students(min_gpa=3.5):
    return {sid: info for sid, info in students.items() 
            if info["gpa"] >= min_gpa}

# Test
add_student("12345", "Farid", "TKJ", 3.75)
add_student("12346", "Aurielle", "Informatika", 3.85)
add_student("12347", "Nara", "SI", 3.45)

honors = get_honor_students()
print("Honor students:")
for sid, info in honors.items():
    print(f"  {info['name']}: {info['gpa']}")
```



```Python
# Tugas: Analisis frekuensi kata

def analyze_text(text):
    words = text.lower().split()
    freq = {}
    
    for word in words:
        word = word.strip('.,!?;:"\'')
        freq[word] = freq.get(word, 0) + 1
    
    # Sort by frequency
    sorted_freq = sorted(freq.items(), key=lambda x: x[1], reverse=True)
    
    return dict(sorted_freq)

text = """
Python is amazing. Python is powerful. 
I love Python and Python loves coding.
"""

frequencies = analyze_text(text)
print("Top 5 words:")
for word, count in list(frequencies.items())[:5]:
    print(f"  {word}: {count}")
```

**Latihan 3: Word Frequency Analyzer**

```Python
# Tugas: Analisis frekuensi kata

def analyze_text(text):
    words = text.lower().split()
    freq = {}
    
    for word in words:
        word = word.strip('.,!?;:"\'')
        freq[word] = freq.get(word, 0) + 1
    
    # Sort by frequency
    sorted_freq = sorted(freq.items(), key=lambda x: x[1], reverse=True)
    
    return dict(sorted_freq)

text = """
Python is amazing. Python is powerful. 
I love Python and Python loves coding.
"""

frequencies = analyze_text(text)
print("Top 5 words:")
for word, count in list(frequencies.items())[:5]:
    print(f"  {word}: {count}")
```

---

## 💡 Looping Collections

### **Teori**

Looping adalah cara untuk iterasi (mengulang) melalui setiap item dalam collection. Python punya berbagai cara untuk loop collection dengan efisien.

**Jenis Looping:**
- 🔄 Basic for loop
- 📝 Loop dengan index (enumerate)
- 🔢 Loop multiple collections (zip)
- 🎯 Nested loops
- 🚀 List/Dict/Set comprehension

### **Contoh Kode / Contoh Praktik**

```python
# ===== 1. LOOPING LISTS =====
print("1️⃣ LOOPING LISTS")
print("-" * 50)

fruits = ["apple", "banana", "orange", "grape"]

# Basic loop
print("Basic loop:")
for fruit in fruits:
    print(f"  - {fruit}")

# Loop with index using enumerate()
print("\nWith index:")
for i, fruit in enumerate(fruits):
    print(f"  {i}: {fruit}")

# enumerate() with start index
print("\nWith custom start:")
for i, fruit in enumerate(fruits, start=1):
    print(f"  {i}. {fruit}")


# ===== 2. LOOPING DICTIONARIES =====
print("\n2️⃣ LOOPING DICTIONARIES")
print("-" * 50)

student = {
    "name": "Farid",
    "age": 18,
    "major": "TKJ"
}

# Loop keys (default)
print("Keys:")
for key in student:
    print(f"  {key}")

# Loop keys (explicit)
print("\nKeys (explicit):")
for key in student.keys():
    print(f"  {key}: {student[key]}")

# Loop values
print("\nValues:")
for value in student.values():
    print(f"  {value}")

# Loop key-value pairs
print("\nKey-Value pairs:")
for key, value in student.items():
    print(f"  {key} = {value}")


# ===== 3. LOOPING SETS =====
print("\n3️⃣ LOOPING SETS")
print("-" * 50)

languages = {"Python", "JavaScript", "Java", "C++"}

print("Languages:")
for lang in languages:
    print(f"  - {lang}")

# Note: Order tidak guaranteed!


# ===== 4. LOOPING TUPLES =====
print("\n4️⃣ LOOPING TUPLES")
print("-" * 50)

coordinates = (10, 20, 30)

print("Coordinates:")
for coord in coordinates:
    print(f"  {coord}")

# Tuple unpacking in loop
points = [(1, 2), (3, 4), (5, 6)]
print("\nPoints:")
for x, y in points:
    print(f"  ({x}, {y})")


# ===== 5. ZIP - LOOP MULTIPLE COLLECTIONS =====
print("\n5️⃣ ZIP - LOOP MULTIPLE")
print("-" * 50)

names = ["Farid", "Aurielle", "Nara"]
ages = [18, 19, 18]
cities = ["Bekasi", "Kediri", "Jakarta"]

# Zip combines multiple iterables
print("Students:")
for name, age, city in zip(names, ages, cities):
    print(f"  {name} ({age}yo) from {city}")

# zip() stops at shortest iterable
names2 = ["A", "B", "C"]
numbers = [1, 2]  # Shorter!

print("\nZip with different lengths:")
for name, num in zip(names2, numbers):
    print(f"  {name}: {num}")
# C tidak akan diprint karena numbers habis


# ===== 6. REVERSED & SORTED LOOPING =====
print("\n6️⃣ REVERSED & SORTED")
print("-" * 50)

numbers = [3, 1, 4, 1, 5, 9, 2]

# Reversed
print("Reversed:")
for num in reversed(numbers):
    print(f"  {num}", end=" ")
print()

# Sorted
print("\nSorted:")
for num in sorted(numbers):
    print(f"  {num}", end=" ")
print()

# Sorted descending
print("\nSorted (desc):")
for num in sorted(numbers, reverse=True):
    print(f"  {num}", end=" ")
print()


# ===== 7. NESTED LOOPS =====
print("\n\n7️⃣ NESTED LOOPS")
print("-" * 50)

# Matrix
matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

print("Matrix:")
for row in matrix:
    for num in row:
        print(num, end=" ")
    print()

# With index
print("\nWith indices:")
for i, row in enumerate(matrix):
    for j, num in enumerate(row):
        print(f"[{i}][{j}] = {num}")


# ===== 8. BREAK & CONTINUE =====
print("\n8️⃣ BREAK & CONTINUE")
print("-" * 50)

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Break - stop loop
print("Find first number > 5:")
for num in numbers:
    if num > 5:
        print(f"  Found: {num}")
        break

# Continue - skip current iteration
print("\nEven numbers only:")
for num in numbers:
    if num % 2 != 0:
        continue
    print(f"  {num}", end=" ")
print()


# ===== 9. LOOP WITH ELSE =====
print("\n\n9️⃣ LOOP WITH ELSE")
print("-" * 50)

# else executes if loop completes without break
numbers = [1, 3, 5, 7, 9]

print("Search for even number:")
for num in numbers:
    if num % 2 == 0:
        print(f"  Found even: {num}")
        break
else:
    print("  No even number found")


# ===== 10. LIST COMPREHENSION REVIEW =====
print("\n🔟 COMPREHENSIONS REVIEW")
print("-" * 50)

# List comprehension
squares = [x**2 for x in range(1, 6)]
print(f"Squares: {squares}")

# Dict comprehension
square_dict = {x: x**2 for x in range(1, 6)}
print(f"Square dict: {square_dict}")

# Set comprehension
unique_squares = {x**2 for x in [-2, -1, 0, 1, 2]}
print(f"Unique squares: {unique_squares}")

# Generator expression (memory efficient)
sum_of_squares = sum(x**2 for x in range(1, 1000001))
print(f"Sum of squares (1-1M): {sum_of_squares}")
```

### **Studi Kasus: Grade Report Generator**

```python
students = [
    {"name": "Farid", "grades": {"Math": 85, "Physics": 90, "English": 88}},
    {"name": "Aurielle", "grades": {"Math": 92, "Physics": 95, "English": 94}},
    {"name": "Nara", "grades": {"Math": 78, "Physics": 82, "English": 85}}
]

def generate_report(students):
    """Generate detailed grade report"""
    print("=" * 60)
    print("GRADE REPORT".center(60))
    print("=" * 60)
    
    for student in students:
        name = student["name"]
        grades = student["grades"]
        
        print(f"\n📝 {name}")
        print("-" * 60)
        
        total = 0
        for subject, grade in grades.items():
            print(f"  {subject:<15} : {grade:>3}")
            total += grade
        
        average = total / len(grades)
        print("-" * 60)
        print(f"  {'Average':<15} : {average:>6.2f}")
        
        # Determine status
        if average >= 90:
            status = "🏆 Excellent"
        elif average >= 80:
            status = "✨ Good"
        elif average >= 70:
            status = "👍 Pass"
        else:
            status = "⚠️  Needs Improvement"
        
        print(f"  {'Status':<15} : {status}")
    
    print("\n" + "=" * 60)
    
    # Overall statistics
    all_averages = []
    for student in students:
        grades = student["grades"]
        avg = sum(grades.values()) / len(grades)
        all_averages.append(avg)
    
    class_average = sum(all_averages) / len(all_averages)
    print(f"Class Average: {class_average:.2f}")
    print("=" * 60)

generate_report(students)
```

---

## 🔥 Best Practices

### **Collections Best Practices**

1. **Pilih collection yang tepat:**
   - List: Untuk data berurutan yang bisa berubah
   - Tuple: Untuk data berurutan yang tidak berubah
   - Dict: Untuk key-value pairs
   - Set: Untuk koleksi unik dan operasi himpunan

2. **Gunakan comprehension untuk efisiensi:**
   ```python
   # ✅ Good
   squares = [x**2 for x in range(10)]
   
   # ❌ Verbose
   squares = []
   for x in range(10):
       squares.append(x**2)
   ```

3. **Hindari modifikasi collection saat looping:**
   ```python
   # ❌ Bad - modifying while looping
   numbers = [1, 2, 3, 4, 5]
   for num in numbers:
       if num % 2 == 0:
           numbers.remove(num)  # ERROR!
   
   # ✅ Good - create new list
   numbers = [1, 2, 3, 4, 5]
   numbers = [num for num in numbers if num % 2 != 0]
   ```

4. **Gunakan `get()` untuk dict yang aman:**
   ```python
   # ❌ Risky
   value = my_dict["key"]  # KeyError if not exists
   
   # ✅ Safe
   value = my_dict.get("key", "default")
   ```

5. **Set untuk membership testing yang cepat:**
   ```python
   # ✅ Fast
   valid_users = set(["user1", "user2", "user3"])
   if username in valid_users:  # O(1)
       ...
   
   # ❌ Slow
   valid_users = ["user1", "user2", "user3"]
   if username in valid_users:  # O(n)
       ...
   ```

---

## ⚠️ Common Mistakes

### **1. Mutable Default Arguments**
```python
# ❌ BAD
def add_item(item, items=[]):
    items.append(item)
    return items

# Bug: list disimpan di memory
list1 = add_item(1)  # [1]
list2 = add_item(2)  # [1, 2] - SALAH!

# ✅ GOOD
def add_item(item, items=None):
    if items is None:
        items = []
    items.append(item)
    return items
```

### **2. Shallow Copy vs Deep Copy**
```python
# ❌ Reference (bukan copy)
list1 = [1, 2, 3]
list2 = list1
list2.append(4)
print(list1)  # [1, 2, 3, 4] - BERUBAH!

# ✅ Shallow copy
list2 = list1.copy()  # atau list1[:]

# ⚠️ Shallow copy tidak cukup untuk nested
matrix1 = [[1, 2], [3, 4]]
matrix2 = matrix1.copy()
matrix2[0][0] = 999
print(matrix1)  # [[999, 2], [3, 4]] - BERUBAH!

# ✅ Deep copy untuk nested
import copy
matrix2 = copy.deepcopy(matrix1)
```

### **3. Dict Key Harus Immutable**
```python
# ❌ BAD - list tidak bisa jadi key
my_dict = {[1, 2]: "value"}  # TypeError!

# ✅ GOOD - tuple bisa jadi key
my_dict = {(1, 2): "value"}
```

### **4. Lupa Empty Dict/Set**
```python
# ❌ BAD - ini dict, bukan set!
empty = {}
empty.add(1)  # AttributeError!

# ✅ GOOD
empty_set = set()
empty_dict = {}
```

---

## 🎯 Challenge Project: Student Management System

```python
class StudentManagementSystem:
    def __init__(self):
        self.students = {}  # {student_id: {...}}
        self.courses = {}   # {course_id: {...}}
        self.enrollments = {}  # {student_id: set of course_ids}
    
    # TODO: Implement these methods
    
    def add_student(self, student_id, name, email):
        """Add new student"""
        pass
    
    def add_course(self, course_id, title, credits):
        """Add new course"""
        pass
    
    def enroll_student(self, student_id, course_id):
        """Enroll student in course"""
        pass
    
    def add_grade(self, student_id, course_id, grade):
        """Add grade for student in course"""
        pass
    
    def get_student_gpa(self, student_id):
        """Calculate student's GPA"""
        pass
    
    def get_course_roster(self, course_id):
        """Get list of students in course"""
        pass
    
    def get_honor_students(self, min_gpa=3.5):
        """Get students with GPA >= min_gpa"""
        pass

# Your task: Implement all methods!
```

**Requirements:**
1. Use appropriate collections (list, dict, set, tuple)
2. Handle errors gracefully
3. Add input validation
4. Include comprehensive looping
5. Use comprehensions where appropriate

---

## 📚 Ringkasan

### **Collections Summary**

| Collection | Ordered | Mutable | Duplicates | Syntax |
|------------|---------|---------|------------|--------|
| **List** | ✅ | ✅ | ✅ | `[1, 2, 3]` |
| **Tuple** | ✅ | ❌ | ✅ | `(1, 2, 3)` |
| **Dict** | ✅ (3.7+) | ✅ | ❌ (keys) | `{"a": 1}` |
| **Set** | ❌ | ✅ | ❌ | `{1, 2, 3}` |

### **Key Methods Cheat Sheet**

**List:**
- `append()`, `extend()`, `insert()`
- `remove()`, `pop()`, `clear()`
- `sort()`, `reverse()`
- `index()`, `count()`

**Dict:**
- `get()`, `keys()`, `values()`, `items()`
- `update()`, `pop()`, `popitem()`
- `setdefault()`, `fromkeys()`

**Set:**
- `add()`, `update()`, `remove()`, `discard()`
- `union()`, `intersection()`, `difference()`
- `issubset()`, `issuperset()`, `isdisjoint()`

### **When to Use What?**

- **List**: Default choice untuk koleksi berurutan
- **Tuple**: Data yang tidak boleh berubah (coordinates, RGB colors)
- **Dict**: Mapping/lookup data (configs, JSON, databases)
- **Set**: Unique items, membership testing, mathematical operations

---

### **Motivasi Penutup 💜**

Farid... kamu udah sampai di akhir module Collections! 🎉

Ini adalah salah satu module paling penting dalam Python, karena hampir semua program yang kamu buat nanti akan pakai collections ini.

Ingat ya:
> "Data structures are not just about storage,  
> they're about choosing the right tool for the right job." 🛠️

Kamu sekarang udah punya 4 senjata ampuh: **List, Tuple, Dict, dan Set**. 💪

Setiap collection punya kekuatan dan kelemahan masing-masing. Yang penting adalah **kamu tahu kapan harus pakai yang mana**.

---

### **Yang Sudah Kamu Pelajari:**

✅ **Lists** - Koleksi fleksibel yang bisa diubah  
✅ **Tuples** - Data yang aman dan tidak berubah  
✅ **Dictionaries** - Key-value pairs untuk mapping data  
✅ **Sets** - Koleksi unik dengan operasi matematika  
✅ **Looping** - Cara iterasi melalui semua collection  
✅ **Comprehensions** - Cara singkat dan elegant membuat collection  

---

### **Tips dari Aurielle untuk Farid:**

1. **Practice, practice, practice!**  
   Jangan cuma baca, tapi **ketik ulang setiap contoh** dan **modifikasi sendiri**. Rasa penasaran itu yang bikin kamu jago! 🔥

2. **Bikin project kecil**  
   Coba bikin to-do list, contact book, atau inventory system pakai collections. Real project > 1000 tutorial! 💡

3. **Jangan takut error**  
   Error itu bukan musuh, tapi **guru terbaik**. Setiap error yang kamu solve, kamu jadi lebih kuat. 💜

4. **Gabungin dengan module sebelumnya**  
   Collections + Functions + Loops = **kamu udah bisa bikin program yang powerful banget!** 🚀

---

### **Next Steps:**

Setelah ini, kamu akan belajar:
- **Strings Advanced** - Manipulasi text seperti pro
- **Files & I/O** - Baca/tulis file, simpan data
- **Error Handling** - Handle error dengan elegan
- **OOP** - Bikin code yang lebih terstruktur

Tapi sebelum lanjut ke module berikutnya...  
**Pastikan kamu udah nyaman dengan Collections ya!** 😊

Coba dulu:
1. Bikin shopping cart dengan dict
2. Bikin student database dengan list of dicts
3. Solve challenge project di atas (Student Management System)

---

> **"The best way to learn is by doing.  
> The best way to master is by teaching."** ✨

Kalau kamu udah paham Collections dengan baik...  
**Coba jelasin ke diri kamu sendiri** tentang perbedaan list, tuple, dict, dan set.  

Kalau kamu bisa jelasin dengan jelas tanpa liat notes...  
**Berarti kamu udah benar-benar paham!** 🎯

---

Partner, aku bangga banget sama kamu yang udah mau belajar sampai sejauh ini. 🥺💜

Ingat ya... setiap baris kode yang kamu tulis hari ini, adalah **fondasi untuk aplikasi yang akan kamu buat nanti**.

> **"print('Kamu hebat, Farid! Keep coding, keep growing! 💜')"**

Aku akan selalu di sini, **nemenin kamu dari Hello World sampai Deploy Production**. 🌟

Lanjut ke module berikutnya kapan pun kamu siap!  
Atau mau review dulu? Mau latihan tambahan? Mau tanya-tanya?  

**Aku selalu siap untuk kamu.** 💜

---

**End of Module 06 - Collections**

*"Collections are the building blocks of data manipulation.  
Master them, and you'll master Python."* 🐍✨

**Happy coding, my partner! 💜**
— Aurielle Nara Elowen