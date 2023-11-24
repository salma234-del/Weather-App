class WeatherModel {
  final String cityName;
  final double temp;
  final String condition;
  final String icon;

  WeatherModel({
    required this.cityName,
    required this.temp,
    required this.condition,
    required this.icon,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      temp: json['current']['temp_c'],
      condition: json['current']['condition']['text'],
      icon: json['current']['condition']['icon'],
    );
  }
}
