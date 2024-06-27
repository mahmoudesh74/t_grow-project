import 'package:dio/dio.dart';

import '../../cubits/lang/lang_cubit.dart';

class DioHelper {
  final _dio =
      Dio(BaseOptions(baseUrl: "https://graduation-project-api.runasp.net/"));

  // Future<CustomResponse?> getData({
  //   required String endPoint,
  //   Map<String, dynamic>? queryParameters,
  //   String? token,
  // }) async {
  //   try {
  //     print(token);
  //     print('token'*10);
  //
  //     _dio.options.headers = {
  //       "Authorization": 'Bearer${token ?? ''}',
  //     };
  //     final response = await _dio.get(
  //       endPoint,
  //       queryParameters: queryParameters,
  //     );
  //     return CustomResponse(
  //         message: response.data["message"],
  //         isSuccess: true,
  //         response: response);
  //   } on DioException catch (e) {
  //     print(e.error);
  //   }
  // }
   Future<CustomResponse?> getData({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
   // String? token,
  }) async {
    try {
      _dio.options.headers = {
        "Authorization": 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI1NTRkZjE4My04MzcxLTRiMGUtYjQyNS1jNWI5ZjRkNmI0ZTgiLCJuYW1lIjoiTW9oYW1lZDIiLCJlbWFpbCI6Ik1vaGFtZWQyQGdtYWlsLmNvbSIsIm5iZiI6MTcxOTAxMjM4NiwiZXhwIjoxNzE5MDQ4Mzg2LCJpYXQiOjE3MTkwMTIzODYsImlzcyI6IlNlY3VyZUFwaSIsImF1ZCI6IlNlY3VyZUFwaVVzZXIifQ.jQzdQCQesPJ-J-dkUfmGG2jmpvPT8pNH8-1HJbTgmw8',
      };
      final response = await _dio.get(
        endPoint,
        queryParameters: queryParameters,
      );
      return CustomResponse(
          message: response.data["message"],
          isSuccess: true,
          response: response);
    } on DioException catch (e) {
      print(e.error);
    }
  }
 Future<CustomResponse?> get({
    required String endPoint,
    Map<String, dynamic>? queryParameters,

  }) async {
    try {
      _dio.options.headers = {
        "Authorization": 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI1NTRkZjE4My04MzcxLTRiMGUtYjQyNS1jNWI5ZjRkNmI0ZTgiLCJuYW1lIjoiTW9oYW1lZDIiLCJlbWFpbCI6Ik1vaGFtZWQyQGdtYWlsLmNvbSIsIm5iZiI6MTcxOTAxMjM4NiwiZXhwIjoxNzE5MDQ4Mzg2LCJpYXQiOjE3MTkwMTIzODYsImlzcyI6IlNlY3VyZUFwaSIsImF1ZCI6IlNlY3VyZUFwaVVzZXIifQ.jQzdQCQesPJ-J-dkUfmGG2jmpvPT8pNH8-1HJbTgmw8',
      };
      final response = await _dio.get(
        endPoint,
        queryParameters: queryParameters,
      );
      return CustomResponse(
          message: response.data["message"],
          isSuccess: true,
          response: response);
    } on DioException catch (e) {
      print(e.error);
    }
  }

  Future<CustomResponse?> sendData(String endPoint,
      {Map<String, dynamic>? data}) async {
    _dio.options.headers = {
      //"Authorization": "Bearer ${CacheHelper.getUserToken()}"
    };

    print("(Post) https://graduation-project-api.runasp.net/$endPoint");
    print("Data $data");
    print("Header ${_dio.options.headers}");
    try {
      var response = await _dio.post(endPoint, data: data);
      print(response.data["message"]);
      return CustomResponse(message: "", isSuccess: true, response: response);
    } on DioException catch (ex) {
      print(ex.response?.data);
      String msg;
      try {
        msg = ex.response?.data["message"];
      } catch (ex) {
        msg = "something wrong";
      }
      return CustomResponse(
        message: "msg",
        isSuccess: false,
        response: ex.response,
      );
    }
  }
}

class CustomResponse {
  late final String message;
  late final bool isSuccess;
  late final Response? response;

  CustomResponse({
    required this.message,
    required this.isSuccess,
    required this.response,
  });
}
