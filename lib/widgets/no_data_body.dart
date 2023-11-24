import 'package:flutter/material.dart';
import 'package:weather_app/utils/extensions.dart';
import 'package:weather_app/utils/styles.dart';

class NoDataBody extends StatelessWidget {
  final String image;
  final String text;

  const NoDataBody({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            40.height,
            Image.asset(
              image,
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.7,
            ),
            20.height,
            Text(
              text,
              style: Styles.textStyle20,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
