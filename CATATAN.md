## PENGENALAN SOFTWARE TESTING

- software testing adalah salah satu disiplin ilmu dalam software engineering
- Tujuan utama dari software testing adalah mematikan kualitas kode dan aplikasi kita baik
- ilmu untuk software testing sendiri sangatlah luas, pada materi ini kita hanya akan fokus ke unit testing

UNIT TEST
- Unit test akan fokus menguji bagian kode program terkecil, biasanaya menguji sebuah method
- Unit test biasanya dibuat keccil dan cepat, oleh karena itu biasanya kadang kode unit test lebih banyak dari kode program aslinya, karena semua skenario pengujian akan dicoba di unit test
- Unit test bisa digunakan sebagai cara untuk meningkatkan kualitas kode program kita.

## TESTING PACKAGE

- Dart memiliki package khusus untuk membuat unit test, yaitu package test
- sebelum kita membuat unit test, kita perlu menambahkan package test terlebih dahulu ke project dart kita
- https://pub.dev/packages/test

contoh di file : 
pubspec.yaml

## TEST FUNCTION 

MEMBUAT TEST
- dart memiliki standarisasi untuk struktur folder pembuatan unit test, biasanya dibuat menggunakan nama folder test
- selanjutnya nama file dart biasanya akan memiliki akhiran_test, misal contoh_test.dart
- sama seperti ketika membuat aplikasi, saat membuat file unit test, kita juga perlu menambahkan main function di file test tersebut 

TEST FUNCTION
- untuk membuat unit test, kita bisa menggunakan function test yang terdapat di package test
- test function tersebut memiliki parameter nama function dan juga anonymous function yang berisikan kode unit test nya

contoh di file :
test\sample_test.dart

## MENJALANKAN TEST 

- untuk menjalankan file test, kita bisa menggunakan perintah :
  dart test tes/namafile_test.dart
- atau jika kita ingin menjalankan semua unit test, kita bisa gunakan perintah :
  dart test

secara otomatisa dart akan menjalankan semua unit test di folder test

## EXPECT FUNCTION

- saat kita membut unit test, salah satu yang paling penting adalah memastikan apakah data yang kita test benar atau salah
- hal ini disebut assertion
- di dart, untuk melakukan assertion kita bisa menggunakan function expect, dimana terdapat dua parameter, pertama adalah data yang akan di test, dan kedua adalah harapan datanya
- jika ternyata data tidak sesuai yang di harapkan, maka secara otomatis akan terjadi error yang menyebabkan unit test dianggap gagal

contoh di file :
test\expect_test.dart

## MATCHER

MATCHER PACKAGE
- saat kita membuat assertion pada unit test, pengecekannya tidak hanya menggunakan kondisi equalas, kadang ada kondisi lain
- kita bisa menggunakan Matcher Package, dimana terdapat banyak sekali function dan constant yang bisa kita gunakan untuk mempermudah kita melakukan assertion
- saat menginstall test package, matcher package otomatis terinstall, sehingga kita tidak perlu menginstalnya secara manual

MENGGUNAKAN MATCHER
- [dokumentasi matcher](https://pub.dev/documentation/matcher/latest/matcher/)
- cara penggunaan matcher, kita bisa menggunakannya pada parameter kedua pada expect
function:

 expect(value, matcher)

- defaultnya menggunakan equals

contoh di file :
test\matcher_test.dart

## GROUP FUNCTION

- group() function merupakan sebuah function yang bisa digunakan untuk melakukan grouping test function
- melakukan grouping lebih bagus dilakukan ketika sebuah file unit test berisikan banyak sekali test function

contoh di file :
test\group_test.dart

## SETUP FUNCTION

- setUp function merupakan sebuah function yang bisa kita gunakan untuk meregistrasi kode yang selalu dieksekusi setiap kalo test function di eksekusi
- setUp function cocok sekali ketika kita butuh membuat sebuah kode yang berulang di awal test function
- jika setUp function di tempatkan di dalam group function, maka setUp function ini hanya berlaku untuk test function di dalam group function tersebut

contoh di file :
test\setUp_function_test.dart

## TEARDOWN FUNCTION

- jika setUp function adalah function yang selalu dieksekusi di awal unit test, maka tearDown adalah function yang selalu dieksekusi di akhir unit test
- cocok untuk melakukan hal yang harus dilakukan setelah semua unit test berjalan
- jika tearDown function di tempatkan di dalam group function, maka tearDown function ini hanya berlaku untuk test function di dalam group function tersebut.

contoh di file :
test\teardown_function_test.dart

## SETUP ALL FUNCTION

- jika setUp function akan dieksekusi di awal sebelum tiap test function di eksekusi
- setUpAll function hanya di eksekusi sekali saja, di awal sebelum test function di eksekusi 
- jika setUpAll function di tempatkan di dalam grup function maka setUpAll function ini hanya berlaku untuk test function di dalam group function tersebut`

contoh di file :
test\setupall_function_test.dart

## TEARDOWN ALL FUNCTION

- jika teardown fuction akan dieksekusi di akhir setelah tiap test function di eksekusi
- teardDownAll fucntion hanya dieksekusi sekali saja di akhr setelah semua test function di eksekusi
- jika teardownall function di tempatkan di dalam group function, maka teardownall function ini hanya berlaku untuk test function di dalam group function tersebut.

contoh di file :
test\teardownall_function_test.dart

## PLATFORM SELECTOR

- pada beberapa kasus, mungkin kita membuat kode Dart yang dikhususkan untuk platform tertentu, misal untuk sistem operasi tertentu misalnya
- kita bisa menandai sebuah unit test dengan annotation @TestOn, untuk memberi tahu bahwa unit test ini untuk platform yang kita sebutkan, sehingga jika kita menjalankan unit test tersebut di platform yang berbeda, secara otomatis unit test tersebut akan di skip
- platform selector mendukung operator boolean seperti &&, || dan !

PLATFORM SELECTOR PARAMETER
- saat menggunakan annotation @TestOn, maka seluruh unit test di file tersebut akan menggunakan platform selector yang sudah ditentukan
- kadang, kita hanya ingin beberapa test function atau group function saja misalnya, pada kasus ini kita bisa menambahkan parameter testOn

contoh di file :
test\platform_selector_test.dart

## SKIP TEST

- Saat kita membuat unit test, kadang ada kalanya sebuah unit test bermasalah dan belum bisa di perbaiki
- pada kasus ini, jangan hapus unit test tersebut, tapi tandai unit test tersebut agara tidak dijalankan, atau skip
- kita bisa menggunakan annotation @Skip untuk menandai sebuah file unit test agar di skip

SKIP PARAMETER
- Menggunakan Annotation @Skip secara otomatis akan melakukan skip seluruh test di file tersebut
- kadang, ada kalanya kita hanya ingin melakukan skip satu buat test function atau group function
- kita bisa menambahkan object parameter, skip pada test function dan group function.

contoh di file :
test\skip_test.dart
test\skip_parameter_test.dart

## TAG

- saat membuat unit test yang banyak, kadang kita ingin menambahkan tag terhadap unit test nya
- biasanya ini digunakan sebagai penanda untuk tag
- kita bisa menggunakan annotation @Tags, atau menggunakn named parameter tags di test atau group function
- Salah satu keuntungan menambahkan tag, kita bisa meminta Dart untuk menjalankan unit test dart test --tags"tag dengan boolean selector"

contoh di file :
test\tag_test.dart

## RETRY TEST

- saat membuat unit test, kadang ada kalanya unit test tersebut tidak stabil, misal butuh konek ke database atau ke sistem lain
- hal ini menyebabkan kadang unit test sering gagal, bukan karena kode salah, tapi karena faktor seperti koneksi network, dan lain-lain
- dart memiliki fitur untuk melakukan retry ketika unit test gagal dilakukan
- kita bisa menggunakan annotation @Retry dan secara otomatis unit test akan di retry sejumlah yan kita tentukan

RETRY PARAMATER
- jika kita hanya ingin melakukan retry pada test atau group function tertentu, kita juga bisa menambahkan named parameter retry

contoh di file :
test\retry_test.dart
test\retry_parameter_test.dart

## PLATFORM SPECIFIC CONFIGURATION

- saat menggunakan @Skip, secara otomatis tidak akan melihat platform apapun, dia akan di skip secara otomatis
- bagaimana jika kasusnya misalnya, kita ingin melakukan Skip, namun hanya untuk platform "mac-os" saja?
- pada kasus seperti ini, kita bisa menggunakan annotation @OnPlatform

PLATFORM SPECIFIC PARAMETER
- sama dengan annotation lainnya, jika misal kita hanya ingin menambahkan konfigurasi platform pada test atau group tertentu, kita bisa tambahan named parameter onPlatform

contoh di file :
test\onplatform_test.dart

## PACKAGE CONFIGURATION

- sebelumnya, kita hanya melakukan pengaturan di file unit test dart saja
- Apa yang terjadi jika misal kita butuh pengaturan yang sama, untuk semua file unit test? misal kita ingin semua hanya jalan di windows, atau semua memiliki tag, dan lain-lain. Maka, kita harus lakukan satu persatu di file dart nya
- untungnya, dart memiliki package configuration file untuk unit test, dimana kita bisa gunakan file yaml untuk menambah informasi unit test di seluruh package hanya dengan satu file, yaitu dart_test.yaml

CONFIGURATION FORMAT
- banyak sekali yang bisa kita atur di package configuration file
- kita bisa melihat detail nya di dokumentasu resminya
- https://github.com/dart-lang/test/blob/master/pkgs/test/doc/configuration.md

contoh di file :
dart_test.yaml

## MOCK OBJECT

- Saat kita membuat unit test, kadang tidak semua object bisa kita test
- Contoh, misal kita memiliki object yang harus mengirim API Request ke Payment Gateway, atau sistem lain yang diluar kontrol kita
- Pada kasus seperti ini, kita tidak bisa memakasakan untuk membuat unit test yang mengirim request ke sistem lain, karena jika kita paksakan, bisa jadi nanti hasil unit testnya tidak konsisten
- pada kasus seperti ini, kita bisa menggunakan konsep bernama Mock Object, yaitu membuat object tiruan yang bisa kita atur tingkah lakunya agar sesuai dengan yang kita inginkan

CONTOH KASUS
- sebelum belajar Mock Object, sekarang kita akan coba buat contoh kasus, misal kita memiliki class dengan nama BookService dan BookRepository
- BookRepository merupakan class yang berisikan kode untuk memanipulasi data Book ke dalam sistem lain, misal database atau API lain.
- BookService merupakan class yang berisikan kode untuk business logic aplikasi kita
- BookService memiliki methd yang bisa digunakan untuk membuat Book, mengubah Book, mengambil Book dan menghapus Book

contoh di file :
lib\src\book_repository.dart
lib\src\book_service.dart
lib\src\book.dart
lib\book.dart

## MOCKITO

- Dart sudah menyediakan package khusus untuk membuat mock object yaitu Mockito
- https://pub.dev/packages/mockito
- Mockito merupakan package yang terinspirasi dari library mock object java dengan nama sama, yaitu mockito 

MENGINSTALL MOCKITO
- sebelum kita menggunakan Mockito, silahkan tambahkan package mockito terlebih dahulu
- selain itu, mckito juga membutuhkan package build_runner, jadi pastikan kita menambahkan package build_runner juga
- https://pub.dev/packages/build_runner

contoh di file :
pubspec.yaml

## MEMBUAT MOCK OBJECT

- Cara kerja Mockito adalah dengan membuat generated file berisi mock class yang bisa kita gunakan sebagai pengganti class aslinya
- Pertama, kita perlu memberitahu Mockito untuk membuat mock object dengan menggunakan annotation, GenerateNiceMocks, dan lakukan import ke file dengan format namafile_test.mocks.dart
- selanjutnya, kita perlu menjalankan build_runner, agar file mock otomatis dilakukan oleh mockito

PERINTAH MENJALANKAN BUILD RUNNER 
- dart run build_runner build

contoh di file :
test\mock_object_test.dart
test\mock_object_test.mocks.dart

## VERIFIKASI MOCK OBJECT

- saat kita membuat unit test menggunakan mock object, yang perlu diperhatikan adalah, kita harus bisa memastikan bahwa Mock Object tersebut benar benar dipanggil, karena jika tidak, resikonya unit test kita menjadi tidak valid
- contoh, misal kita hapus kode yang memanggil Book Repository di BookService, dan lihat apa yang terjadi

KENAPA UNIT TEST SUKSES?
- walaupun kode BookRepository sudah dihapus, namun unit test tetap sukses, hal ini dikarenakan kita tidak melakukan verifikasi apapun pada unit test nya
- oleh karena itu, ketika menggunakan Mock Object, biasanya kita selalu melakukan verifikasi interaksi yang terjadi
- Kita bisa menggunakan function verify untuk memastikan bahwa Mock Object dipanggil

CALLED FUNCTION
- selain melakukan verifikasi terhadap mock object, kita juga wajib memastikan jumlah eksekusi kode mock object
- Misal, saat save data book, kita harus pastikan bahwa, BookRepository.save() hanya dipanggil satu kali
- Kita bisa menggunakan called() function setelah melakukan verify

contoh di file :
lib\src\book_service.dart
test\mock_object_test.dart

## STUBING

- Stubing adalah mengubah tingkah laku mock object sebelum digunakan
- saat kita membuat mock object, kadang beberapa function butuh mengembalikan value misalnya
- kita bisa menambahkan tingkah laku ke mock object ketika mock object terssebut dipanggil, dengan menggunakan when function
- selanjutnya, kita bisa menentukan reaksi apa yang perlu dilakukan oleh mock stub tersebut dengan menggunakan thenreturn, thenAnswer, atau thenThrow function

contoh di file :
test\mock_object_test.dart