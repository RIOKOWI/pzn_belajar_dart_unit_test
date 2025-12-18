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

  void update(String id, String name, int price){
    if(id == "" || name == "" || price <= 0){
      throw Exception('invalid data');
    }

    var book = bookRepository.findById(id);
    if(book == null){
      throw Exception('Book not found');
    } else {
      book.name = name;
      book.price = price;
      bookRepository.save(book);
    }
  }

  void delete(String id){
    var book = bookRepository.findById(id);
    if(book == null){
      throw Exception('Book Not found');
    } else {
      bookRepository.delete(book);
    }
  }

  Book find(String id){
    var book = bookRepository.findById(id);
    if(book == null){
      throw Exception('Book Not Found');
    } else {
      return book;
    }
  }
}