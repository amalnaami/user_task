import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:user_task/services/response_api.dart';

class ApiManger {
  final Dio dio;

  ApiManger(this.dio);

  Future<ResponseApi<T>> get<T>(
    url, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    T Function(Response)? parse,
  }) async {
    try {
      final response = await dio.get(
        url,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
        ),
      );
      if (response.statusCode! <= 204) {
        return ResponseApi<T>.success(data: parse?.call(response));
      } else {
        return ResponseApi.error(error: 'somethings_went_wrong');
      }
    } on SocketException {
      return ResponseApi.noInternet(error: 'no_internet');
    } catch (error) {
      if (error is DioError && error.error is SocketException) {
        return ResponseApi.noInternet(error: 'no_internet');
      }
      return ResponseApi.error(error: error.toString());
    }
  }
}
