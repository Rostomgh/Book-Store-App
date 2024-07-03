import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  
    static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://api.medi-dos.com/api/',
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
