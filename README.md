
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