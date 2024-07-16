import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'homepage.dart';

class WeatherPage extends StatefulWidget {
  WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final WeatherFactory wf = WeatherFactory('84d89b7845eb012c8221dccabbada1f5');

  Weather? _weather;
  

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
