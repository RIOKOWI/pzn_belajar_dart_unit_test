import 'package:test/test.dart';

void main(){
  var nama = 'rio';

  setUpAll(() {
    print("Ini setUpAll function");
  });

  setUp((){
    nama = 'rio';
  });

  tearDown((){
    print(nama);
  });

  group('test setUp()', () {

    // setUpAll(() {                      // hanya berlaku di dalam grup ini saja
    //   print("Ini setUpAll function");
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