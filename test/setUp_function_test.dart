import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

void main(){
  var nama = 'rio';

  setUp((){
    nama = 'rio'; // memanggil nama saat tiap kali function di jalankan
  });


  group('test setUp()', () {
    test('String first', (){
      nama = "$nama achyar";
      expect(nama, equals('rio achyar'));
    });
    test('String second', (){
      nama = "$nama mpruy";
      expect(nama, equals('rio mpruy'));
    });


  });
}