import 'package:mockito/mockito.dart';
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
      verify(bookRepository.save(Book('1', 'Anak Bader', 50000))).called(1); // untuk verify & dipanggil satu kali
    });

    // STUBING
    test('find book by id not found', (){ // tanpa stubing defaultnya akan null atau throw exception
        expect(() {
          bookService.find('1');
        }, throwsException); // return error

        verify(bookRepository.findById('1')).called(1);
    });

    test('find by id success', (){ // success
      when(bookRepository.findById('1'))
        .thenReturn(Book('1', 'Anak Bader', 50000));

      var book = bookService.find('1');
      expect(book, equals(Book('1', 'Anak Bader', 50000)));

      verify(bookRepository.findById('1')).called(1);
    });

    // ARGUMENT MATCHER
    test('find by id argumnet matcher', (){ 
      when(bookRepository.findById(argThat(startsWith('rio')))) // find by prefix rio menggunakan matcher
        .thenReturn(Book('rioMpruy', 'Anak Bader', 50000)); // return rioMpruy

      var book = bookService.find('rioMpruy'); // cari
      expect(book, equals(Book('rioMpruy', 'Anak Bader', 50000))); // expect

      verify(bookRepository.findById(any)).called(1); // verify any/apa saja asal called 1
    });
  });
}