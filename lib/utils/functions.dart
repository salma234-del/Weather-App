import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/utils/bloc_observer.dart';

MaterialColor getThemeColor(String? wetherCondition) {
  if (wetherCondition == null) return Colors.teal;
  if (wetherCondition == 'Sunny') {
    return Colors.orange;
  } else if (wetherCondition == 'Blizzard' ||
      wetherCondition == 'Patchy snow possible' ||
      wetherCondition == 'Patchy sleet possible' ||
      wetherCondition == 'Patchy freezing drizzle possible' ||
      wetherCondition == 'Blowing snow' ||
      wetherCondition == 'Clear') {
    return Colors.blue;
  } else if (wetherCondition == 'Freezing fog' ||
      wetherCondition == 'Fog' ||
      wetherCondition == 'Heavy Cloud' ||
      wetherCondition == 'Mist' ||
      wetherCondition == 'Partly cloudy') {
    return Colors.blueGrey;
  } else if (wetherCondition == 'Patchy rain possible' ||
      wetherCondition == 'Heavy Rain' ||
      wetherCondition == 'Showers') {
    return Colors.cyan;
  } else if (wetherCondition == 'Thundery outbreaks possible' ||
      wetherCondition == 'Moderate or heavy snow with thunder' ||
      wetherCondition == 'Patchy light snow with thunder' ||
      wetherCondition == 'Moderate or heavy rain with thunder' ||
      wetherCondition == 'Patchy light rain with thunder') {
    return Colors.deepPurple;
  } else {
    return Colors.lightGreen;
  }
}

// init main

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  Bloc.observer = MyBlocObserver();
}
