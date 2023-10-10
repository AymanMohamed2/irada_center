import 'package:dio/dio.dart';
import 'package:irada_center/core/utils/api_constance.dart';

class ApiServices {
  final Dio dio;

  ApiServices(this.dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('${ApiConstance.baseUrl}$endPoint');
    return response.data;
  }
}
