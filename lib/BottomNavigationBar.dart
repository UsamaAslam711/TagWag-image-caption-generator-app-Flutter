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
      body: Navigator(
        onGenerateRoute: (routeSettings) {
          return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                screens[index],
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          );
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: GlobalKey(),
        index: index,
        backgroundColor: Color.fromARGB(255, 231, 212, 255),
        color: Colors.deepPurple,
        buttonBackgroundColor: Colors.deepPurple,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 2000),
        height: 70.0,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.help,
            size: 30,
            color: Colors.white,
          ),
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
