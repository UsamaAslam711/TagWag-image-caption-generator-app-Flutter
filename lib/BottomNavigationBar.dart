import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'HelpScreen.dart';
import 'home.dart';

class MyBottomNavScreen extends StatefulWidget {
  @override
  _MyBottomNavScreenState createState() => _MyBottomNavScreenState();
}

class _MyBottomNavScreenState extends State<MyBottomNavScreen> {
  final screens = [Home(), HelpScreen()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        key: GlobalKey(),
        index: index,
        backgroundColor: Color.fromARGB(255, 231, 212, 255),
        color: Colors.deepPurple,
        buttonBackgroundColor: Colors.deepPurple,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 800),
        height: 70.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.help, size: 30),
        ],
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
      ),
    );
  }
}
