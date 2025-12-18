import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main(){
  group("Aritmatika", () { // bikin group di dalam group lagi juga di perbolehkan
    test("penjumlahan", () {
      expect(sum(5, 5), equals(10));
    });
    test("penguragan", () {
      expect(sum(20, -10), equals(10));
    });
  });
}