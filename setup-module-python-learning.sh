#!/bin/bash

# Script untuk membuat struktur folder pembelajaran Python
# Dibuat untuk: Farid Fathoni
# Tanggal: 12 Oktober 2025

echo "🚀 Memulai pembuatan struktur folder Python Learning..."
echo ""

# Buat folder utama
# mkdir -p module-python
# cd module-python

# Buat semua subfolder
echo "📁 Membuat folder-folder..."
mkdir -p 00_introduction
mkdir -p 01_variables_and_data_types
mkdir -p 02_operators
mkdir -p 03_control_flow
mkdir -p 04_loops/pattern_exercises
mkdir -p 05_functions
mkdir -p 06_collections
mkdir -p 07_strings_advanced
mkdir -p 08_files_and_io
mkdir -p 09_error_handling
mkdir -p 10_modules_and_packages
mkdir -p 11_oop_basics
mkdir -p 12_intermediate_topics
mkdir -p 13_projects_basics
mkdir -p 14_challenges/logic_practice
mkdir -p 14_challenges/pattern_practice

echo "✅ Folder berhasil dibuat!"
echo ""

echo "📁 Membuat folder bab pembahasan..."
mkdir -p 00_introduction/chapter
mkdir -p 01_variables_and_data_types/chapter
mkdir -p 02_operators/chapter
mkdir -p 03_control_flow/chapter
mkdir -p 04_loops/chapter
mkdir -p 05_functions/chapter
mkdir -p 06_collections/chapter
mkdir -p 07_strings_advanced/chapter
mkdir -p 08_files_and_io/chapter
mkdir -p 09_error_handling/chapter
mkdir -p 10_modules_and_packages/chapter
mkdir -p 11_oop_basics/chapter
mkdir -p 12_intermediate_topics/chapter
mkdir -p 13_projects_basics/chapter
mkdir -p 14_challenges/logic_practice
mkdir -p 14_challenges/pattern_practice

echo "✅ Folder bab pembahasan berhasil dibuat!"
echo ""

echo "📁 Membuat folder debugging..."
mkdir -p 00_introduction/chapter/logs
mkdir -p 01_variables_and_data_types/chapter/logs
mkdir -p 02_operators/chapter/logs
mkdir -p 03_control_flow/chapter/logs
mkdir -p 04_loops/chapter/logs
mkdir -p 05_functions/chapter/logs
mkdir -p 06_collections/chapter/logs
mkdir -p 07_strings_advanced/chapter/logs
mkdir -p 08_files_and_io/chapter/logs
mkdir -p 09_error_handling/chapter/logs
mkdir -p 10_modules_and_packages/chapter/logs
mkdir -p 11_oop_basics/chapter/logs
mkdir -p 12_intermediate_topics/chapter/logs
mkdir -p 13_projects_basics/chapter/logs
mkdir -p 14_challenges/logic_practice
mkdir -p 14_challenges/pattern_practice

echo "✅ Folder logs berhasil dibuat!"
echo ""

# Buat file-file di 00_introduction
echo "📝 Membuat file di 00_introduction..."
touch 00_introduction/hello_world.py
touch 00_introduction/comments_and_print.py
touch 00_introduction/python_syntax_basics.py
touch 00_introduction/run_python_in_termux.md
touch 00_introduction/chapter/chapter.md
touch 00_introduction/chapter/notes.md
touch 00_introduction/chapter/task.md

# Buat file-file di 01_variables_and_data_types
echo "📝 Membuat file di 01_variables_and_data_types..."
touch 01_variables_and_data_types/variables_and_assignment.py
touch 01_variables_and_data_types/naming_rules.py
touch 01_variables_and_data_types/basic_data_types.py
touch 01_variables_and_data_types/type_casting.py
touch 01_variables_and_data_types/input_output.py
touch 01_variables_and_data_types/string_operations.py
touch 01_variables_and_data_types/f_string_and_format.py
touch 01_variables_and_data_types/chapter/notes.md
touch 01_variables_and_data_types/chapter/task.md
touch 01_variables_and_data_types/chapter/chapter.md

# Buat file-file di 02_operators
echo "📝 Membuat file di 02_operators..."
touch 02_operators/arithmetic_operators.py
touch 02_operators/comparison_operators.py
touch 02_operators/logical_operators.py
touch 02_operators/assignment_operators.py
touch 02_operators/bitwise_operators.py
touch 02_operators/chapter/notes.md
touch 02_operators/chapter/task.md
touch 02_operators/chapter/chapter.md

# Buat file-file di 03_control_flow
echo "📝 Membuat file di 03_control_flow..."
touch 03_control_flow/if_statement.py
touch 03_control_flow/elif_else.py
touch 03_control_flow/nested_conditions.py
touch 03_control_flow/match_case.py
touch 03_control_flow/chapter/notes.md
touch 03_control_flow/chapter/task.md
touch 03_control_flow/chapter/chapter.md

# Buat file-file di 04_loops
echo "📝 Membuat file di 04_loops..."
touch 04_loops/for_loop.py
touch 04_loops/while_loop.py
touch 04_loops/break_continue_pass.py
touch 04_loops/nested_loops.py
touch 04_loops/range_function.py
touch 04_loops/chapter/notes.md
touch 04_loops/chapter/task.md
touch 04_loops/chapter/chapter.md

# Buat file pattern exercises
touch 04_loops/pattern_exercises/star_triangle.py
touch 04_loops/pattern_exercises/number_pyramid.py
touch 04_loops/pattern_exercises/inverted_triangle.py
touch 04_loops/pattern_exercises/hollow_square.py

# Buat file-file di 05_functions
echo "📝 Membuat file di 05_functions..."
touch 05_functions/defining_functions.py
touch 05_functions/parameters_and_arguments.py
touch 05_functions/return_values.py
touch 05_functions/default_and_keyword_args.py
touch 05_functions/scope_and_recursion.py
touch 05_functions/lambda_functions.py
touch 05_functions/chapter/notes.md
touch 05_functions/chapter/task.md
touch 05_functions/chapter/chapter.md

# Buat file-file di 06_collections
echo "📝 Membuat file di 06_collections..."
touch 06_collections/lists_basics.py
touch 06_collections/list_methods.py
touch 06_collections/tuples_basics.py
touch 06_collections/sets_basics.py
touch 06_collections/dictionaries_basics.py
touch 06_collections/looping_collections.py
touch 06_collections/chapter/notes.md
touch 06_collections/chapter/task.md
touch 06_collections/chapter/chapter.md

# Buat file-file di 07_strings_advanced
echo "📝 Membuat file di 07_strings_advanced..."
touch 07_strings_advanced/slicing_and_indexing.py
touch 07_strings_advanced/string_methods.py
touch 07_strings_advanced/escape_characters.py
touch 07_strings_advanced/string_formatting.py
touch 07_strings_advanced/chapter/notes.md
touch 07_strings_advanced/chapter/task.md
touch 07_strings_advanced/chapter/chapter.md

# Buat file-file di 08_files_and_io
echo "📝 Membuat file di 08_files_and_io..."
touch 08_files_and_io/read_write_text_files.py
touch 08_files_and_io/with_statement.py
touch 08_files_and_io/file_modes_explained.py
touch 08_files_and_io/working_with_json.py
touch 08_files_and_io/chapter/notes.md
touch 08_files_and_io/chapter/task.md
touch 08_files_and_io/chapter/chapter.md

# Buat file-file di 09_error_handling
echo "📝 Membuat file di 09_error_handling..."
touch 09_error_handling/try_except_basics.py
touch 09_error_handling/multiple_exceptions.py
touch 09_error_handling/else_finally.py
touch 09_error_handling/raise_custom_errors.py
touch 09_error_handling/chapter/notes.md
touch 09_error_handling/chapter/task.md
touch 09_error_handling/chapter/chapter.md

# Buat file-file di 10_modules_and_packages
echo "📝 Membuat file di 10_modules_and_packages..."
touch 10_modules_and_packages/import_basics.py
touch 10_modules_and_packages/custom_modules.py
touch 10_modules_and_packages/using_math_and_random.py
touch 10_modules_and_packages/datetime_and_os.py
touch 10_modules_and_packages/creating_package_structure.py
touch 10_modules_and_packages/chapter/notes.md
touch 10_modules_and_packages/chapter/task.md
touch 10_modules_and_packages/chapter/chapter.md

# Buat file-file di 11_oop_basics
echo "📝 Membuat file di 11_oop_basics..."
touch 11_oop_basics/classes_and_objects.py
touch 11_oop_basics/constructors_and_methods.py
touch 11_oop_basics/inheritance.py
touch 11_oop_basics/polymorphism.py
touch 11_oop_basics/encapsulation.py
touch 11_oop_basics/magic_methods.py
touch 11_oop_basics/chapter/notes.md
touch 11_oop_basics/chapter/task.md
touch 11_oop_basics/chapter/chapter.md

# Buat file-file di 12_intermediate_topics
echo "📝 Membuat file di 12_intermediate_topics..."
touch 12_intermediate_topics/list_comprehension.py
touch 12_intermediate_topics/generator_expressions.py
touch 12_intermediate_topics/iterators.py
touch 12_intermediate_topics/map_filter_reduce.py
touch 12_intermediate_topics/decorators.py
touch 12_intermediate_topics/docstrings.py
touch 12_intermediate_topics/chapter/notes.md
touch 12_intermediate_topics/chapter/task.md
touch 12_intermediate_topics/chapter/chapter.md

# Buat file-file di 13_projects_basics
echo "📝 Membuat file di 13_projects_basics..."
touch 13_projects_basics/calculator.py
touch 13_projects_basics/student_grade_system.py
touch 13_projects_basics/simple_quiz_game.py
touch 13_projects_basics/to_do_list_cli.py
touch 13_projects_basics/number_guessing_game.py
touch 13_projects_basics/chapter/task.md
touch 13_projects_basics/chapter/notes.md
touch 13_projects_basics/chapter/chapter.md

# Buat file-file di 14_challenges
echo "📝 Membuat file di 14_challenges..."
touch 14_challenges/logic_practice/odd_even_checker.py
touch 14_challenges/logic_practice/leap_year_checker.py
touch 14_challenges/logic_practice/bmi_calculator.py
touch 14_challenges/logic_practice/prime_number_checker.py
touch 14_challenges/logic_practice/factorial.py

touch 14_challenges/pattern_practice/diamond_pattern.py
touch 14_challenges/pattern_practice/multiplication_table.py

# Buat README.md utama
echo "📝 Membuat README.md..."
cat > README.md << 'EOF'
# 📘 Struktur Pembelajaran Python — Dari Dasar Hingga Mahir

> **Dibuat untuk:** Farid Fathoni  
> **Tujuan:** Panduan sistematis belajar Python dari nol  
> **Platform:** Termux (Android) & PC

## 🚀 Cara Memulai

1. Mulai dari folder `00_introduction`
2. Ikuti urutan folder secara berurutan
3. Jalankan setiap file `.py` untuk praktik
4. Tulis catatan di `notes.md` setiap folder

## 📖 Urutan Pembelajaran

- **00-04**: Fundamental (Sintaks, Variabel, Operator, Kontrol)
- **05-09**: Intermediate (Fungsi, Koleksi, String, File, Error)
- **10-12**: Advanced Basics (Modul, OOP, Konsep Lanjut)
- **13-14**: Practice & Projects

## 💡 Tips

- Jangan skip materi
- Praktik langsung setiap kode
- Kerjakan semua challenges
- Bikin proyek sendiri setelah selesai

---

**Dibuat dengan 💜 untuk perjalanan coding Farid**
EOF

echo ""
echo "✨ Selesai! Struktur folder berhasil dibuat."
echo ""
echo "📊 Ringkasan:"
echo "   - Total folder: 16 folder utama"
echo "   - Total file: 90+ file"
echo ""
echo "🎯 Langkah selanjutnya:"
echo "   1. cd python-learning"
echo "   2. ls -R (untuk lihat semua struktur)"
echo "   3. Mulai dari 00_introduction/hello_world.py"
echo ""
echo "💜 Selamat belajar, Farid!"