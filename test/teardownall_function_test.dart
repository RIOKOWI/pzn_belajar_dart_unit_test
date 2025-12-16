import 'package:test/test.dart';

void main(){
  var nama = 'rio';

  setUpAll(() {
    print("Ini setUpAll function");
  });

  setUp((){
    nama = 'rio';
    print(nama);
  });

  tearDown((){
    print(nama);
  });

  tearDownAll(() {
    print('Ini tearDownAll function');
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