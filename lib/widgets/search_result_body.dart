import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit/weather_cubit.dart';
import 'package:weather_app/cubits/weather_cubit/weather_state.dart';
import 'package:weather_app/utils/assets.dart';
import 'package:weather_app/widgets/no_data_body.dart';
import 'package:weather_app/widgets/weather_data_body.dart';

class SearchResultBody extends StatelessWidget {
  const SearchResultBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        var cubit = WeatherCubit.get(context);
        if (state is GetWeatherInitialState) {
          return const NoDataBody(
            text: 'There is no weather, start searching now..',
            image: Assets.startSearch,
          );
        } else if (state is GetWeatherLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is GetWeatherErrorState) {
          return NoDataBody(text: state.error, image: Assets.error);
        } else {
          return WeatherDataBody(model: cubit.weatherModel!);
        }
      },
    );
  }
}
