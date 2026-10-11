Panduan Kontribusi
Repository ini memakai GitHub Flow: satu branch utama main yang dilindungi dan branch fitur berumur pendek.

Penamaan Branch
| Awalan | Contoh | Untuk |
|---|---|---|
| feat/ | feat/tambah-healthcheck | Fitur baru |
| fix/ | fix/port-bentrok | Perbaikan kesalahan |
| docs/ | docs/panduan-instalasi | Dokumentasi |
| chore/ | chore/rapikan-gitignore | Pemeliharaan |
| hotfix/ | hotfix/gagal-start | Perbaikan mendesak |

Format Pesan Commit
Mengikuti Conventional Commits: tipe: deskripsi singkat. Tipe yang dipakai: feat, fix, docs, chore, test, merge, revert.
Contoh: feat: tambahkan skrip pemeriksaan kesehatan layanan

Alur Pull Request
Perbarui main: git switch main && git pull --prune
Buat branch sesuai konvensi: git switch -c feat/nama-fitur
Buat commit kecil dan atomik, jalankan shellcheck pada skrip yang diubah
Push, lalu buka pull request dan isi template sampai lengkap
Tanggapi komentar peninjau dengan push ke branch yang sama
Setelah disetujui dan semua komentar selesai, anggota lain (bukan penulis) menggabungkan
Hapus branch lalu jalankan git pull --prune

Aturan: tidak ada push langsung ke main, tidak ada yang menyetujui atau menggabungkan PR sendiri, dan tidak ada force push ke branch bersama.

Daftar Periksa Peninjauan
Kebenaran: perubahan menyelesaikan masalah yang disebut di deskripsi
Cakupan: hanya satu perubahan logis
Keterbacaan: penamaan dan struktur mudah dipahami
Keamanan: tidak ada kredensial atau izin yang terlalu longgar
Pengujian: skrip lolos shellcheck dan sudah dijalankan
Dampak: README atau konfigurasi terkait sudah disesuaikan

Pemasangan Hook
Jalankan bash hooks/install-hooks.sh sekali setelah clone.
