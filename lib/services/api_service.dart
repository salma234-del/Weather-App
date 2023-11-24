import 'package:dio/dio.dart';
import 'package:weather_app/utils/constants.dart';

class ApiService {
  final Dio dio;
  ApiService(
    this.dio,
  );

  Future<Map<String, dynamic>> get({required String cityName}) async {
    var response = await dio.get(
        '${Constants.kBaseUrl}current.json?key=${Constants.kApiKey}&q=$cityName&aqi=no');
    if (response.statusCode == 200) {
      return response.data;
    } else {
      final String errorMessage = response.data['error']['message'];
      throw Exception(errorMessage);
    }
  }
}
