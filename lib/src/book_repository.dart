import 'book.dart';

class BookRepository {
  void save(Book book){
    print('Save $book');
    throw UnsupportedError('Save not supported');
  }

  void update(Book book){
    print('update $book');
    throw UnsupportedError('Update not supported');
  }

  void delete(Book book){
    print('delete $book');
    throw UnsupportedError('Delete not supported');
  }

  Book findById(String id){
    print('find book ny id $id');
    throw UnsupportedError('Find not supported');
  }
}