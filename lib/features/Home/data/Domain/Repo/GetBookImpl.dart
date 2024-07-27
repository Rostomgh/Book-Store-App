import 'dart:math';

import 'package:book_store/core/Service/ApiService.dart';
import 'package:book_store/core/Service/EndPoint.dart';
import 'package:book_store/features/Home/data/Domain/Service/GetBookService.dart';
import 'package:book_store/features/Home/data/Model/BookModel.dart';

class GetDataImpl implements GetDataService {
  final ApiService apiService;

  GetDataImpl({required this.apiService});
  @override
  Future<List<Book>> getBooks() async {
    final response = await apiService.get(endpoint: Endpoint.getbook);
    List<Book> books = [];
    if (response.statusCode == 200) {
      for (var item in response.data['data']) {
        books.add(Book.fromJson(item));
      }
    }
    return books;
  }
}
