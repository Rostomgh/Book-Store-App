import 'package:book_store/features/Home/data/Model/BookModel.dart';

abstract class GetData {
  Future<List<Book>> getBooks();
}
