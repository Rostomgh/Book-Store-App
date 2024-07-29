import 'package:book_store/core/Service/ApiService.dart';
import 'package:book_store/core/Service/EndPoint.dart';
import 'package:book_store/features/Home/data/Domain/Service/GetBookService.dart';
import 'package:book_store/features/Home/data/Model/BookModel.dart';
import 'package:logger/logger.dart';

class GetDataImpl implements GetDataService {
  final ApiService apiService;
  final Logger logger = Logger();
  GetDataImpl({required this.apiService});
  @override
  Future<List<Book>> getBooks() async {
    List<Book> books = [];
    try {
      final response = await apiService.get(endpoint: Endpoint.getbook);
      logger.f(response.data);
      if (response.statusCode == 200) {
        for (var item in response.data) {
          books.add(Book.fromJson(item));
        }
        logger.e('you have an error');
      }
    } catch (e) {
        logger.e(e.toString());
    }
    return books;
  }
}
