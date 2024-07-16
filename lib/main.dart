import 'package:flutter/material.dart';
import 'pages/homepage.dart';
import 'pages/weather_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      routes: {
        '/weather': (context) =>  WeatherPage(),
        '/homepage': (context) => Homepage(),
      },
    );
  }
}
