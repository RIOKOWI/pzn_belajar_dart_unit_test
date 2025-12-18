import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

void main(){
  var nama = 'rio';

  setUp((){
    nama = 'rio';
  });

  tearDown((){ // ini berlaku di semua grup
    print(nama);
  });

  group('test setUp()', () {

    // tearDown((){ // ini berlaku di grup ini saja
    //   print(nama);
    // });
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