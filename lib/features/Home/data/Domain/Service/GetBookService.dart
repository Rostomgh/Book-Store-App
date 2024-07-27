import 'package:book_store/features/Home/data/Model/BookModel.dart';

abstract class GetDataService {
  Future<List<Book>> getBooks();
  Future<Book> getbookByN();
  Future<Book> AddBook();
}
