import 'package:pzn_belajar_dart_unit_test/src/book.dart';

import 'book_repository.dart';

class BookService {
  BookRepository bookRepository;

  BookService(this.bookRepository);

  void save(String id, String name, int price){
    if (id == "" || name == "" || price <= 0){
      throw Exception('invalid data');
    }
    bookRepository.save(Book(id, name, price));
  }
}