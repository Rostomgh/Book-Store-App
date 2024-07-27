import 'package:book_store/features/Home/data/Domain/Service/GetBookService.dart';
import 'package:book_store/features/Home/data/Model/BookModel.dart';

class GetDataImpl implements GetDataService {
  final ApiService apiService;

  GetDataImpl({required this.apiService});
  @override
  Future<List<Book>> getBooks() async {

   }}