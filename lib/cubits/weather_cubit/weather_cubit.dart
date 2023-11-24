
import 'package:dio/dio.dart';
import 'package:weather_app/cubits/weather_cubit/weather_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/api_service.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(GetWeatherInitialState());

   WeatherModel? weatherModel;
  static WeatherCubit get(context) => BlocProvider.of(context);

  Future<void> getWeather({required String cityName}) async {
    emit(GetWeatherLoadingState());
    try {
      weatherModel = await WeatherService(apiService: ApiService(Dio()))
          .getWeather(cityName: cityName);
      emit(GetWeatherSuccessState());
    } catch (e) {
      String err = '';
      if (e is DioException) {
        err = e.response?.data['error']['message'] ?? 'Ooops, there is a problem try again';
      } else {
        err = e.toString();
      }
      emit(GetWeatherErrorState(err));
    }
  }
}
