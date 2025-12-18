
import 'package:test/test.dart';

String sayHello(String name){
  return "hello $name";
}


void main(){
  test("test sayHello()", (){
    var res = sayHello("Rio");
    expect(res, "hello Rio"); // expect function, jika benar test passed dan jika salah mengembalikan error
  });
}