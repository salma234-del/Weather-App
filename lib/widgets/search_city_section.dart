import 'package:flutter/material.dart';
import 'package:weather_app/cubits/weather_cubit/weather_cubit.dart';
import 'package:weather_app/utils/extensions.dart';
import 'package:weather_app/utils/styles.dart';
import 'package:weather_app/widgets/custom_text_field.dart';

class SearchCitySection extends StatelessWidget {
  const SearchCitySection({super.key});

  @override
  Widget build(BuildContext context) {
    onSubmittedAction(value) async {
      var cubit = WeatherCubit.get(context);
      cubit.weatherModel = null;
      await cubit.getWeather(cityName: value);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          32.height,
          Text(
            'Find the city that you want to know the detailed weather info at this time',
            textAlign: TextAlign.center,
            style: Styles.textStyle16,
          ),
          40.height,
          CustomTextField(
            hint: 'Search',
            preIcon: Icons.search,
            onSubmitted: onSubmittedAction,
          ),
        ],
      ),
    );
  }
}
