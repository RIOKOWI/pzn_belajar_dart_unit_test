@Skip('This unit test still broken') // contoh skip seluruh unit test di file ini

import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main(){
  group("Aritmatika", () {
    test("penjumlahan", () {
      expect(sum(5, 5), equals(10));
    });
    test("penguragan", () {
      expect(sum(20, -10), equals(10));
    });
  });
}