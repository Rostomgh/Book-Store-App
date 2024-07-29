import 'package:book_store/core/helper/Diohelper.dart';
import 'package:dio/dio.dart';

class ApiService {
  ApiService();
  Future<Response>get(
    {required String endpoint,
    Map<String, dynamic>? query,
      String? token,
    })async{
      final response=await DioHelper.getData(url:endpoint);
    return response;
    }
    Future<Response>post(
    {required String endpoint,
    Map<String, dynamic>? query,
      String? token,
    })async{
      final response=await DioHelper.getData(url:endpoint);
    return response;
    }

  }

