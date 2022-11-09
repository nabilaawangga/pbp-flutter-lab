# counter_7

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