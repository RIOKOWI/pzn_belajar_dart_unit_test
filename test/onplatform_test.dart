@OnPlatform({  // paltform specific configuration
  'mac-os' : Skip('test ini tidak akan berjalan di windows')
})

import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main(){
  group("Aritmatika", () {
    test("penjumlahan", () {
      expect(sum(5, 5), equals(10));
    }, onPlatform: {
      'windows' : Skip('skip di windows') // paltform specifi parameter
      }
    );
    test("penguragan", () {
      expect(sum(20, -10), equals(10));
    });
  });
}