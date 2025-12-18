import 'package:pzn_belajar_dart_unit_test/book.dart';
import 'package:mockito/annotations.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([MockSpec<BookRepository>()]) // membuat mocking object
import "mock_object_test.mocks.dart";

void main(){
  group('test mock', (){
    var bookRepository = MockBookRepository(); // panggil Mock
    // var bookRepository = BookRepository(); // kalau tanpa mock akan unsupported/error karna tidak pakai object tiruan
    var bookService = BookService(bookRepository);

    test('save book must success', () { // testing save book success
      bookService.save('1', 'Anak Bader', 50000);
    });

  });
}