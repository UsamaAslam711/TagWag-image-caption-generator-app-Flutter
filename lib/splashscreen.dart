import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Add code to load data or perform any other initialization tasks here
    // You can also use a Timer to delay the screen for a certain amount of time
    Timer(Duration(seconds: 3), () {
      // Navigate to the home screen after the splash screen is shown
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Add your splash screen image or animation here
        child: Image(
          image: AssetImage('assets/logo.png'),
          width: 1500,
          height: 1500,
        ),
      ),
    );
  }
}
