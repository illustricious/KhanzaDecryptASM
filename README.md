# KhanzaDecryptASM

Jalankan `khanza-decrypt-asm.exe` dengan klik ganda. Pilih 1 untuk enkripsi atau 2 untuk dekripsi, tempel satu baris teks, lalu tekan Enter. Salin hasil dari terminal. Pilih 0 untuk keluar. Aplikasi berjalan tanpa Java atau JAR dan tidak membuat log.

Algoritma: AES-128-CBC, key UTF-8 Bar12345Bar12345, IV UTF-8 sayangsamakhanza, PKCS5Padding (setara PKCS#7 untuk AES), Base64 standar. Key dan IV tetap mengikuti Khanza; ini untuk kompatibilitas, bukan rancangan penyimpanan rahasia baru. Enkripsi tidak menyediakan autentikasi.

Khanza memakai charset default Java untuk plaintext. Mode default aplikasi mengikuti Windows ANSI code page (ACP), sesuai Java Windows lama yang umum. Karakter yang tidak tersedia pada code page dapat berubah menjadi tanda tanya. Jika Java Khanza menggunakan UTF-8, jalankan `khanza-decrypt-asm.exe --utf8` melalui shortcut atau terminal. ASCII sama pada kedua mode. Base64 input harus standar dan tanpa spasi atau baris baru.

Build: jalankan build.bat dengan Visual Studio C++ Build Tools. Executable memakai Windows BCrypt dan Crypt32 serta runtime C++ statis.

## Build Assembly x64

`src/main-x64.s` adalah Assembly x64 sintaks Intel yang dihasilkan dari implementasi C++ agar perilakunya tetap mengikuti versi asli. Dengan Zig 0.15.2 di `PATH`, jalankan `src\build-asm.bat` untuk merakit dan menautkan Assembly menjadi `khanza-decrypt-asm.exe`. Build ini tidak mengompilasi `main.cpp` dan tidak memerlukan Java atau JAR. Jika Zig berada di luar `PATH`, atur `ZIG_EXE` ke lokasi `zig.exe`.

Setelah mengubah `src/main.cpp`, jalankan `src\regenerate-asm.bat` untuk membuat ulang `src/main-x64.s`, lalu jalankan build Assembly lagi.

## Build lintas platform

Unduh executable untuk OS dan arsitektur Anda dari [GitHub Releases](https://github.com/illustricious/KhanzaDecryptASM/releases). Pada Linux, macOS, atau BSD, beri izin eksekusi dengan `chmod +x ./nama-file` lalu jalankan `./nama-file`. Gunakan `SHA256SUMS.txt` untuk memeriksa file hasil unduhan.

Untuk membangun sendiri, pasang Zig 0.15.2 dan jalankan `pwsh -File ./build-platforms.ps1`. Parameter `-Zig` menerima jalur executable Zig, dan `-Targets` dapat dipakai untuk memilih target dari PowerShell. Hasil build ada di `dist/` dan listing Assembly tiap target ada di `dist/assembly/`.

Pada Windows, skrip mengubah implementasi C++ menjadi Assembly lalu merakitnya untuk ARM64, x64, dan x86. Mode default tetap mengikuti code page Windows dan opsi `--utf8` tetap tersedia. Pada sistem lain, implementasi portabel di `src/portable.zig` memakai UTF-8 untuk masukan dan keluaran teks. Saat bertukar data dengan Khanza yang memakai code page lama, karakter non-ASCII perlu memakai pengodean yang sama di kedua sisi. RISC-V ditargetkan untuk Linux.

Uji dummy: node test_compat.js memerlukan Node.js, JDK, dan JAR Khanza pada jalur dalam skrip. Oracle.java memanggil class dari JAR asli. Kompilasi Oracle.java dengan javac dan classpath KhanzaSecurity16bit.jar serta commons-codec-1.12.jar jika Oracle.class belum tersedia.
