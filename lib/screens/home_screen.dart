import 'package:flutter/material.dart';
import 'package:weather_app/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text('Weather App')),
      body: const HomeScreenBody(),
    );
  }
}
