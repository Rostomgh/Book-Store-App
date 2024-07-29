import 'package:book_store/core/Service/ApiError.dart';
import 'package:book_store/core/Service/EndPoint.dart';
import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  
    static init() {
    dio = Dio(BaseOptions(
      baseUrl: Endpoint.BaseUrl,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      receiveDataWhenStatusError: true,
      validateStatus: (_) => true,
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
    ));
    return dio;
  }
   //Get Data
  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      'Authorization': token,
      'Content-Type': 'application/json',
    };
    return await dio.get(url, queryParameters: query);
  }

}
