
1. Penjelasan tentang Stateless Widget dan Stateful Widget
Stateless Widget adalah widget yang bersifat tidak dapat berubah setelah widget tersebut dibuat. Artinya, setelah widget ini di-render di layar, ia tidak akan mengalami perubahan pada tampilan atau datanya kecuali widget tersebut dibuat ulang. Stateless widget cocok digunakan untuk komponen UI yang statis atau tidak membutuhkan perubahan data selama siklus hidupnya. Contoh widget stateless adalah Text, Icon, atau RaisedButton jika tidak ada perubahan pada tampilannya.

Stateful Widget adalah widget yang dapat berubah-ubah seiring waktu atau berdasarkan aksi pengguna. Stateful widget menyimpan state (atau kondisi) yang memungkinkan widget ini untuk diperbarui secara dinamis selama siklus hidupnya. Misalnya, jika suatu widget membutuhkan interaksi pengguna, seperti tombol yang menambah angka ketika ditekan, maka widget ini membutuhkan StatefulWidget. Contoh dari stateful widget adalah Checkbox, Slider, dan TextField yang berinteraksi dengan input pengguna.

Perbedaan utama antara keduanya adalah pada penggunaan state. Stateless widget tidak memiliki state yang dapat berubah, sedangkan stateful widget menyimpan state yang memungkinkan UI untuk berubah sesuai dengan interaksi atau perubahan data.

2. Widget-Widget yang Digunakan dalam Proyek ini
Beberapa widget yang digunakan dalam proyek ini antara lain:

Text: Untuk menampilkan teks statis.
Container: Untuk membungkus widget lain dan memberikan pengaturan seperti padding, margin, atau styling.
Column: Untuk menyusun widget secara vertikal.
Row: Untuk menyusun widget secara horizontal.
ListView: Untuk menampilkan daftar widget secara scrollable.
Checkbox: Untuk membuat elemen checklist yang dapat diubah sesuai interaksi pengguna.
ElevatedButton: Untuk membuat tombol dengan gaya material yang bereaksi terhadap sentuhan.
TextField: Untuk menerima input teks dari pengguna.
Setiap widget memiliki perannya masing-masing, seperti Text untuk teks, Container untuk styling layout, dan Checkbox untuk elemen interaktif.

3. Fungsi setState()
setState() adalah fungsi dalam StatefulWidget yang digunakan untuk memberitahu Flutter bahwa ada perubahan pada state yang membutuhkan pembaruan tampilan. Ketika setState() dipanggil, Flutter akan melakukan rebuild pada widget yang berkaitan sehingga perubahan state tersebut dapat direfleksikan pada UI.

Variabel yang terpengaruh oleh setState() adalah variabel-variabel yang dideklarasikan dalam State dari StatefulWidget tersebut. Contohnya, jika kita memiliki variabel int counter, maka ketika counter diubah di dalam setState(), tampilan yang bergantung pada nilai counter akan di-update di layar.

4. Perbedaan antara const dan final
const: Digunakan untuk mendeklarasikan nilai konstanta yang bersifat tetap sejak saat kompilasi. Artinya, nilai tersebut harus sudah diketahui dan tidak akan pernah berubah selama program berjalan. Contoh: const pi = 3.14;

final: Digunakan untuk mendeklarasikan variabel yang hanya dapat diinisialisasi satu kali, tetapi nilainya baru bisa ditentukan saat runtime. Dengan kata lain, final cocok digunakan untuk nilai tetap yang ditentukan ketika aplikasi berjalan. Contoh: final DateTime sekarang = DateTime.now();

5. Implementasi Checklist di Atas
Implementasi checklist dilakukan dengan menggunakan beberapa widget seperti Checkbox untuk memberikan tanda centang, dan ListView untuk menampilkan daftar elemen checklist secara vertikal. Setiap kali pengguna menekan Checkbox, setState() dipanggil untuk meng-update UI berdasarkan perubahan status checklist tersebut.



*TUGAS 8*


1. Fungsi const di Flutter
Di Flutter, const digunakan untuk menyatakan bahwa suatu widget atau variabel bersifat tetap dan tidak berubah (istilahnya immutable). ketika kita menandai suatu widget sebagai const, Flutter tahu bahwa widget itu tidak perlu dibuat ulang setiap kali aplikasi berubah atau di-refresh.

Keuntungan Menggunakan const:

Hemat Memori: Dengan const, Flutter tidak perlu membuat widget yang sama berulang kali.
Performa Lebih Cepat: Karena widget const tidak berubah, Flutter bisa bekerja lebih cepat dengan fokus pada bagian aplikasi yang memang berubah.
Kapan Harus Menggunakan const: Gunakan const ketika suatu objek itu tidak berubah saat apl berjalan
Kapan Tidak Perlu const: Jika nilai atau widget mungkin berubah saat aplikasi berjalan, tidak perlu menggunakan const. Contohnya, widget yang bergantung pada data yang bisa berubah seiring waktu.

2. Perbedaan Column dan Row
Column dan Row adalah widget di Flutter yang digunakan untuk menyusun tampilan. Keduanya berbeda dari cara menyusun widget di dalamnya.

Column: Menyusun widget dari atas ke bawah. tampilanya akan nampak diatur berderet ke bawah.

Contoh:
        dart
                Column(
        children: [
            Text('Teks 1'),
            Text('Teks 2'),
        ],
        )
Row: Menyusun widget dari kiri ke kanan. tampilanya akan nampak ditampilkan berderet ke samping.

Contoh:

        Row(
        children: [
            Icon(Icons.home),
            Icon(Icons.star),
        ],
        )

Perbedaan Utama:

Column menyusun widget dari atas ke bawah, sedangkan Row menyusun secara dari kiri ke kanan.
Column cocok untuk menampilkan banyak item yang mungkin melebihi batas layar dan bisa ditambahkan scroll, sedangkan Row cocok untuk deretan ikon atau teks.


3. Elemen Input pada Halaman Form
Pada halaman form yang dibuat, kita menggunakan elemen berikut:

TextFormField: Untuk mengisi teks, seperti nama produk atau deskripsi.
TextFormField dengan Tipe Angka: Untuk input yang berupa angka, seperti harga produk.
Contoh Elemen Input Flutter Lain yang Tidak Digunakan:

DropdownButtonFormField: Untuk memilih satu opsi dari beberapa pilihan (seperti memilih kategori produk).
Checkbox, Radio, Switch: Digunakan untuk input pilihan "ya atau tidak" atau pilihan dari beberapa opsi.
Slider: Untuk memilih nilai dari rentang tertentu (biasanya nilai numerik).


4. Mengatur Tema di Flutter
Tema adalah cara untuk menentukan warna, gaya teks, dan tampilan elemen lainnya secara seragam di seluruh aplikasi. Dengan tema, kita bisa menjaga tampilan aplikasi agar konsisten dan serasi.

Contoh Implementasi Tema:
            MaterialApp(
            theme: ThemeData(
                primaryColor: Colors.blue,
                colorScheme: ColorScheme.fromSwatch().copyWith(
                secondary: Colors.orange,
                ),
            ),
            );

Dengan mengatur ThemeData, kita bisa menentukan warna utama, warna teks, warna tombol, dan banyak lagi di seluruh aplikasi tanpa harus menatanya di setiap widget.

5. Navigasi dalam Aplikasi dengan Banyak Halaman
Untuk berpindah antar halaman di Flutter, kita bisa menggunakan Navigator. Navigator seperti tumpukan (stack) tempat kita bisa menambah halaman (disebut push) atau kembali ke halaman sebelumnya (disebut pop).

Contoh Cara Menavigasi ke Halaman Lain:

            Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HalamanBaru(),
            ),
            );



1. Mengapa Kita Perlu Membuat Model untuk JSON?
Model diperlukan untuk mempermudah pengelolaan data yang diterima atau dikirim dalam format JSON. Tanpa model:

Kesulitan manipulasi data: JSON berbentuk map (key-value pair), sehingga setiap akses atau manipulasi data memerlukan parsing manual. Model memungkinkan data JSON diakses sebagai objek dengan properti, membuatnya lebih mudah dipahami dan di-maintain.
Keamanan data: Model memastikan struktur data valid dan sesuai spesifikasi, mengurangi risiko error.
Jika tidak membuat model:

Tidak akan terjadi error secara langsung, tetapi kode menjadi lebih rentan terhadap kesalahan akses dan lebih sulit dibaca atau diperbaiki.
2. Fungsi Library http
Library http digunakan untuk melakukan permintaan HTTP ke server. Fungsi utamanya adalah:

GET: Mengambil data dari server (misalnya, daftar produk atau user).
POST: Mengirim data dari aplikasi ke server (misalnya, data form).
Autentikasi dan header: Menambahkan header untuk autentikasi atau pengelolaan cookie.
Pada tugas ini, library http memungkinkan Flutter untuk berkomunikasi dengan server Django REST API untuk pengambilan dan pengiriman data.

3. Fungsi CookieRequest
CookieRequest adalah bagian dari library pbp_django_auth yang digunakan untuk mengelola autentikasi berbasis cookie. Fungsi utamanya:

Menyimpan cookie: Cookie digunakan untuk menjaga sesi pengguna setelah login.
Mengelola permintaan: Menyisipkan cookie secara otomatis pada setiap permintaan HTTP ke server, memungkinkan backend mengenali sesi pengguna.
Logout: Menghapus cookie dari memori, menandai sesi pengguna sebagai selesai.
Mengapa instance CookieRequest perlu dibagikan ke semua komponen?

Agar semua komponen aplikasi memiliki akses ke sesi pengguna yang sama.
Memastikan autentikasi dilakukan dengan benar di seluruh aplikasi tanpa perlu mengelola cookie secara manual di setiap komponen.
4. Mekanisme Pengiriman Data
Proses pengiriman data dari input hingga ditampilkan di Flutter melibatkan langkah-langkah berikut:

Input Data: Pengguna mengisi form (misalnya, nama produk, deskripsi, harga).
Validasi Form: Flutter memvalidasi input menggunakan validator di widget TextFormField.
Kirim ke Server: Setelah validasi, data dikirim ke backend menggunakan metode POST dengan CookieRequest.postJson atau http.post.
Backend Memproses Data: Django menerima data, memvalidasinya, menyimpannya ke database, lalu mengembalikan respons JSON (status sukses/gagal).
Tampilkan di Flutter: Flutter menggunakan respons dari backend untuk memberi umpan balik (notifikasi sukses/gagal) atau memperbarui UI.
5. Mekanisme Autentikasi
Proses autentikasi terdiri dari login, register, dan logout:

Login:

Pengguna memasukkan email dan password di Flutter.
Flutter mengirim data ke endpoint login di backend (Django).
Django memverifikasi data, membuat cookie sesi, dan mengembalikan respons.
CookieRequest menyimpan cookie untuk sesi pengguna.
UI Flutter diperbarui untuk menampilkan menu pengguna yang login.
Register:

Pengguna mengisi form registrasi di Flutter.
Flutter mengirim data ke endpoint registrasi Django.
Django memvalidasi data, membuat akun baru di database, lalu mengembalikan respons.
Flutter menampilkan notifikasi hasil registrasi (berhasil atau gagal).
Logout:

Flutter mengirim permintaan logout ke Django.
Django menghapus sesi pengguna di server.
CookieRequest menghapus cookie di Flutter.
UI Flutter diperbarui ke mode tidak terautentikasi.
6. Langkah Implementasi Checklist
Berikut adalah langkah implementasi yang dilakukan:

Menyiapkan Backend:

Menambahkan endpoint login, logout, register, dan pengelolaan produk pada Django REST Framework.
Mengatur autentikasi berbasis session atau token di Django.
Membuat Model di Flutter:

Membuat class model (Product, User, dll.) untuk mempermudah pengelolaan data JSON.
Menggunakan fungsi fromJson dan toJson untuk serialisasi/deserialisasi data.
Menambahkan pbp_django_auth:

Mengintegrasikan library untuk autentikasi berbasis cookie.
Membuat instance CookieRequest di main.dart dan membagikannya ke semua widget dengan Provider.
Membuat Form Input:

Menambahkan form menggunakan TextFormField untuk input pengguna (registrasi, login, tambah produk).
Validasi data dengan validator bawaan Flutter.
Mengirim Data ke Backend:

Menggunakan CookieRequest.postJson untuk pengiriman data.
Menangani respons backend dan memberikan notifikasi kepada pengguna.
Mengambil Data dari Backend:

Menggunakan FutureBuilder dan CookieRequest.get untuk mengambil data dari endpoint backend.
Menampilkan data dalam bentuk daftar di UI Flutter.
Testing:

Memastikan form validasi bekerja dengan baik.
Menguji pengiriman data dengan berbagai skenario (input valid/invalid).
Memverifikasi autentikasi (login/logout) dan pengelolaan sesi pengguna.
