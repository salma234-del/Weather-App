import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/utils/colors.dart';
import 'package:weather_app/utils/extensions.dart';
import 'package:weather_app/utils/functions.dart';
import 'package:weather_app/utils/styles.dart';

class WeatherDataBody extends StatelessWidget {
  const WeatherDataBody({
    super.key,
    required this.model,
  });
  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              getThemeColor(model.condition),
              getThemeColor(model.condition)[300]!,
              getThemeColor(model.condition)[100]!,
            ],
          ),
          borderRadius: const BorderRadiusDirectional.only(
            topStart: Radius.circular(60),
            topEnd: Radius.circular(60),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.cityName,
                style: Styles.textStyle28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      text: '${model.temp.round()}',
                      style: Styles.textStyle90,
                      children: const [
                        TextSpan(
                          text: '°',
                          style: TextStyle(color: AppColors.white),
                        ),
                      ],
                    ),
                  ),
                  15.width,
                  Image.network(
                    'https:${model.icon}',
                  ),
                ],
              ),
              Text(
                model.condition,
                style: Styles.textStyle30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
