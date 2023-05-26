import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.white], // Updated colors
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5.0,
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
            child: GNav(
              selectedIndex: index,
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 500),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  textColor: Colors.black,
                  backgroundColor: Colors.transparent,
                  backgroundGradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 255, 102, 179),
                      Color.fromARGB(255, 250, 248, 117), // Start color
                      Color.fromARGB(255, 253, 168, 119), // End color
                    ],
                    begin: Alignment.topCenter, // Gradient start position
                    end: Alignment.bottomCenter, // Gradient end position
                  ),
                ),
                GButton(
                  icon: Icons.help,
                  text: 'Help',
                  textColor: Colors.black,
                  backgroundColor: Colors.transparent,
                  backgroundGradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 255, 102, 179),
                      Color.fromARGB(255, 250, 248, 117), // Start color
                      Color.fromARGB(255, 253, 168, 119), // End color
                    ],
                    begin: Alignment.topCenter, // Gradient start position
                    end: Alignment.bottomCenter, // Gradient end position
                  ),
                ),
              ],
              onTabChange: (int index) {
                setState(() {
                  this.index = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
