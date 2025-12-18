import 'package:pzn_belajar_dart_unit_test/src/book.dart';

import 'book_repository.dart';

class BookService {
  BookRepository bookRepository;

  BookService(this.bookRepository);

  // function save
  void save(String id, String name, int price){
    if (id == "" || name == "" || price <= 0){
      throw Exception('invalid data');
    }
    // bookRepository.save(Book(id, name, price)); // tetap sukses karna mocknya tidak di verifikasi
  }

  // function update
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

  // function delete
  void delete(String id){
    var book = bookRepository.findById(id);
    if(book == null){
      throw Exception('Book Not found');
    } else {
      bookRepository.delete(book);
    }
  }

  // function find
  Book find(String id){
    var book = bookRepository.findById(id);
    if(book == null){
      throw Exception('Book Not Found');
    } else {
      return book;
    }
  }
}