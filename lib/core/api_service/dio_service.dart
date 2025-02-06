import 'package:dio/dio.dart';


class DioFinalHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        // baseUrl: EndPoints.baseUrl,
        receiveDataWhenStatusError: true,

      ),
    );
  }


  static Future<Response> getData({
    required String method,
    Map<String, dynamic>? param,
  }) async {
    return await dio.get(
      method,
      queryParameters: param,
    );
  }
}
