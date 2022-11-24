# TUGAS 7
## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless widget adalah widget berupa text, data dan lain-lain yang tidak akan pernah berubah. Tidak akan pernah berubah ini berarti perubahan yang dilakukan oleh user seperti menekan tombol dan yang lainnya atau perubahan lain terhadap data pada aplikasi tidak akan mengubah stateless widget. Data pada stateless widget hanya mengacu pada data yang dimasukkan saat membuat stateless widget tersebut. Sedangkan stateful widget kebalikan dari stateless widget di mana widget-widget yang stateful dapat berubah-ubah tampilannya seperti mengupdate tampilan, merubah warna, menambah jumlah baris dan lain-lain. Stateful widget dapat berubah secara dinamis pada aplikasi tergantung dengan kebutuhan.

Perbedaan
| Stateless Widget | Stateful Widget |
| -----------------| -----------------|
| Bersifat statis | Bersifat dinamis |
| Tidak bergantung pada perubahan data pada aplikasi | Bergantung pada perubahan data pada aplikasi |
| Tidak menggunakan setState() | Menggunakan setState() |
| Implementasinya cocok untuk kebutuhan tampilan aplikasi yang tidak memerlukan perubahan tampilan | Implementasinya cocok untuk kebutuhan tampilan aplikasi yang memerlukan perubahan tampilan |

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. FloatingActionButton: membuat tombol yang dibutuhkan yaitu tombol increment dan decrement sesuai dengan fungsinya masing-masing
2. Scaffold: untuk membuat user interface dan tampilan visual pada aplikasi
3. Text: menampilkan tulisan sesuai dengan kebutuhan aplikasi
4. Center: untuk menaruh tipe bilangan dan perhitungan angkanya di tengah-tengah tampilan aplikasi
5. TextStyle: memberikan styling pada tulisan seperti memberi warna pada tulisan
6. Padding: untuk memberikan size pada elemen

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState adalah cara Flutter untuk rebuild widget saat ini dan turunannya. Selama rebuild, nilai variabel terbaru akan digunakan untuk membuat user interface yang baru. Variable yang terdampak pada fungsi adalah variabel _counter di mana counter pada variabel tersebut akan ditambah atau dikurang yang nantinya akan berpengaruh pada tulisan ganjil atau genap yang muncul di user interface.

##  Jelaskan perbedaan antara const dengan final.
Const harus menginisialisasi variabel sebelum kompliasi atau runtime. Const tidak dapat memiliki nilai yang berbeda pada variabel yang sama. Sedangkan final tidak harus menginisialisasi variabel sebelum runtime karena final di-set setelah runtime. Fina dapat memiliki nilai yang berbeda untuk variabel yang sama.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat sebuah program Flutter baru dengan nama counter_7 dengan menjalankan flutter create counter_7 pada terminal
2. Membuat method _decrementCounter yang berfungsi untuk mengurangi nilai pada counter. Namun, jika nilai pada counter sudah 0 pada saat method tersebut dijalankan, maka counter tetap 0 bukan -1. Proses decrement variabel dilakukan dalam fungsi setState().
3. Pada body, di bagian childrennya ditambahkan widget dan conditional untuk handle tampilan tulisan ganjil dan genap
4. Membuat FloatingActionButton yang akan menampilkan 2 button yaitu decrement dan increment dan menambahkan onPressed agar ketika button dipencet akan terhubung ke method yang seharusnya

# TUGAS 8
## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement
 Navigator.push digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini. Halaman baru ditampilkan di atas halaman sebelumnya. Sedangkan Navigator.pushReplacement digunakan untuk menambahkan rute lain, berpindah dari halaman sebelumnya ke halaman yang baru. Command akan menghapus stack atau layer halaman yang ada di bawahnya lalu akan digantikan dengan halaman yang baru.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. Drawer: menampilkan menu navigasi di sisi kiri aplikasi
2. Form: container untuk tempat menampung input-input dari user
3. Container: dasar/alas untuk menaruh widget-widget lain agar menjadi satu kelompok komponen widget
4. Card: container kartu untuk tempat menaruh data-data input dari user
5. DropDownButton: fields untuk memilih input
6. ListTile: seperti container tetapi untuk menaruh text sesuai dengan kebutuhannya seperti text title, subtitle, subtrailing dan lain-lain

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)
1. OnPressed
2. OnSaved
3. OnChanged
4. OnEditingComplete
5. OnTap

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator konsepnya seperti stack di mana memanfaatkan push dan pop untuk mengganti halaman dari aplikasi flutter. Penggunaan pop akan menghapus halaman paling atas pada layer. Sedangkan push akan menampilkan halaman baru di atas halaman lama. Pushreplacement akan menghapus halaman lama sehingga tidak akan ditimpa oleh halaman baru.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat navigator untuk tambah budget dan data budget menggunakan drawer
2. Membuat 2 file baru bernama formbudget.dart untuk halama mengisi form dan databudget.dart untuk menampilkan data dari input form
3. Membuat isi form untuk menambahkan input pada formbudget.dart menggunakan textformfield dan dropdownbutton lalu disimpan data inputnya dalam list
4. Membuat class data pada databudet.dart yang isinya menyimpan data input dari form lalu ditampilkan menggunakan card.

## TUGAS 9
##  Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Kita dapat melakukan pengambilan data JSON tanpa membuat model dengan menggunakan fungsi jsonDecode(). Penggunaan fungsi tersebut akan menghasilkan sebuah map dengan tipe string Map<String, dynamic>. Pengembalian map tersebut akan rentan terkena error karena  kita tidak tau tipe data apa yang sebenarnya ada di json dan kita hanya bisa mendapatkan datanya dengan tipe String. Selain itu, sangat jarang implementasi pengambilan data JSON ini tanpa membuat model. Sehingga lebih baik membuat model terlebih dahulu untuk menghindari error dan agar lebih efisien.

##  Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. ListView: Widget ini digunakan untuk memberikan fiture scroll pada data-data yang ditampilkan
2. InkWell: Inkwell digunakan pada item yang ingin ditap dan menimbulkan kesan efek
3. FutureBuilder: widget yang disediakan untuk mendukung proses asynchronous.

##  Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
Pertama-tama, membuat model untuk data json yang ingin diambil. Setelah itu, mengambil data json pada url yang berisi data json menggunakan http.get(). Data yang akan diambil akan di-decode menjadi bentuk json dan dikonversi ke dalam bentuk object sesuai dengan class yang telah dibuat.

##  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1.  Menambahkan tombol navigasi pada drawer/hamburger untuk ke halaman mywatchlist.
Saya menambahkan My Watch List pada drawer yang akan di-push menuju halaman my watch list
2.  Membuat satu file dart yang berisi model mywatchlist.
Isi model dari mywatchlist ini adalah fields-fields dari data json yang dibuat menggunakan Quicktype.
3. Menambahkan halaman mywatchlist yang berisi semua watch list yang ada pada endpoint JSON di Django yang telah kamu deploy ke Heroku sebelumnya

Saya membuat file mywatchlist_page.dart untuk menambahkan halaman mywatchlist yang berisi nama-nama film yanga da pada data json. Menampilkan datanya menggunakan futurebuilder() lalu menggunakan onTap agar tiap-tiap film jika dipencet akan mengarah ke halaman detail dari film tersebut.

4.  Menambahkan halaman detail untuk setiap mywatchlist yang ada pada daftar tersebut. Halaman ini menampilkan judul, release date, rating, review, dan status (sudah ditonton/belum).

Untuk menambahkan halaman detail, saya membuat file mywatchlistdetail yang akan menampilkan data detail dari film. Lalu saya menambahkan tombol kembali yang jika dipencet akan kembali ke halaman mywatchlist_page.dart