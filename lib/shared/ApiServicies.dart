import 'package:dio/dio.dart';

class ApiServecies{
  final Dio _dio;
  final _baseUrl = 'https://www.googleapis.com/books/v1/';

  ApiServecies(this._dio);
  Future<Map<String,dynamic>> get({ required String endPoints})async{
  var response= await  _dio.get('$_baseUrl$endPoints');
    return response.data;
  }
}

