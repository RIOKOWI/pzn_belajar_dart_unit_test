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

