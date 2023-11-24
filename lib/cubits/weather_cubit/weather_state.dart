abstract class WeatherState {}

class GetWeatherInitialState extends WeatherState {}

class GetWeatherLoadingState extends WeatherState {}

class GetWeatherSuccessState extends WeatherState {}

class GetWeatherErrorState extends WeatherState {
  final String error;

  GetWeatherErrorState(this.error);
}
