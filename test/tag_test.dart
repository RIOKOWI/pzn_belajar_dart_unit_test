@Tags(['rio', 'achyar']) // tags global

import 'package:test/test.dart';

void main(){
  group('tags', (){
    test('first', (){
      print('first');
    }, tags: ['tag_first']); // tags 1 unit tes

  }, tags: ['tag_group']); // tags group
}