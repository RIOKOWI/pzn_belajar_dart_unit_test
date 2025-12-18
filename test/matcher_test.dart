
import 'package:test/test.dart';

String sayHello(String name){
  return "hello $name";
}

int sum(int a, int b){
  return a + b;
}

void main(){
  test("test sayHello() with matcher", (){
    expect(sayHello('Rio'), startsWith('hello')); // cek awalan
    expect(sayHello('Rio'), endsWith('Rio')); // cek akhiran
    expect(sayHello('Rio'), equalsIgnoringCase('hello rio')); // cek mengabaikan kapital
    expect(sayHello('Rio'), isA<String>()); // cek tipe data
  });

  test("test sum() with matcher", () {
    expect(sum(2, 2), equals(4)); // cek jumlah
    expect(sum(2, 2), greaterThan(3)); // cek jumlah lebih dari value
    expect(sum(2, 2), lessThan(5)); // cek jumlah kurang dari value
    expect(sum(2, 2), isA<int>()); // cek tipe data
  });
}