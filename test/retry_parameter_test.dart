import 'package:test/test.dart';

void main(){
  test('test retry', () { 
    expect(1, 2); // di retry 5 kali
  }, retry: 5);
}