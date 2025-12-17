@Retry(10) // retry 10 kali

import 'package:test/test.dart';

void main(){
  test('test retry', () { 
    expect(1, 2); // di retry 10 kali
  });
}