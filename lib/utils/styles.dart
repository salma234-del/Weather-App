import 'package:flutter/material.dart';
import 'package:weather_app/utils/colors.dart';

abstract class Styles {
  static TextStyle textStyle16 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.greyScale1,
  );

  static TextStyle textStyle20 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.lightBlack,
  );

  static TextStyle textStyle28 = const TextStyle(
    fontSize: 28,
    //fontWeight: FontWeight.bold,
    color: AppColors.white,
  );
  static TextStyle textStyle30 = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );
  static TextStyle textStyle90 = const TextStyle(
    fontSize: 90,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );
}
