import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';
import 'splashscreen.dart'; // assuming that the widget file is named 'splash_page.dart'

void main() {
  // Add this line
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TagWag',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => Home(),
      }, // use SplashPage as the home widget
    );
  }
}
