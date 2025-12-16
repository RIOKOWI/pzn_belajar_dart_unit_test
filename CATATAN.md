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