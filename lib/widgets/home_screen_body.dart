import 'package:flutter/material.dart';
import 'package:weather_app/utils/extensions.dart';
import 'package:weather_app/widgets/search_city_section.dart';
import 'package:weather_app/widgets/search_result_body.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchCitySection(),
        100.height,
        const SearchResultBody(),
      ],
    );
  }
}
