import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Splash screen image
          Image(
            image: AssetImage('assets/logo.png'),
            width: 1500,
            height: 1500,
          ),
          // Loading indicator
          Positioned(
            left: 0,
            right: 0,
            top: 400,
            bottom: 0,
            child: Center(
              child: SpinKitSpinningLines(
                color: Color.fromARGB(255, 0, 0, 0),
                size: 50.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
