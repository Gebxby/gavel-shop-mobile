
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
