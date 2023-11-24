import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/api_service.dart';

class WeatherService {
  final ApiService apiService;

  WeatherService({required this.apiService});

  Future<WeatherModel> getWeather({required String cityName}) async {
    var data = await apiService.get(cityName: cityName);
    
    WeatherModel weatherModel = WeatherModel.fromJson(data);
    return weatherModel;
  }
}
