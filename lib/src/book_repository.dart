import 'book.dart';

class BookRepository {

  // function save
  void save(Book book){
    print('Save $book');
    throw UnsupportedError('Save not supported');
  }

  // function update
  void update(Book book){
    print('update $book');
    throw UnsupportedError('Update not supported');
  }

  // function delete
  void delete(Book book){
    print('delete $book');
    throw UnsupportedError('Delete not supported');
  }

  // function find
  Book? findById(String id){
    print('find book ny id $id');
    throw UnsupportedError('Find not supported');
  }
}