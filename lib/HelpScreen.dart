import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 212, 255),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.deepPurple,
        ),
        padding: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 8.0),
        child: Text(
          'HOW DOES IT WORK?',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
            fontFamily: "Poppins-Bold",
            fontSize: 40,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
