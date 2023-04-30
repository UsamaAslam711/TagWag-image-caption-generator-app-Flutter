import 'dart:async';
import 'package:camera/camera.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'BottomNavigationBar.dart';
import 'HelpScreen.dart';
import 'SlideScreen.dart';
import 'home.dart';
import 'splashscreen.dart'; // assuming that the widget file is named 'splash_page.dart'
import 'package:camera/camera.dart';

List<CameraDescription> cameras = [];
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
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
        '/home': (context) => OnbodingScreen(),
      },
      // use SplashPage as the home widget
    );
  }
}
