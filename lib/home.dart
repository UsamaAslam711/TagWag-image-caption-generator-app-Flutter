import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'HelpScreen.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  final screens = [
    Home(),
    HelpScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 231, 212, 255),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Container(
                width: 200,
                child: Image.asset(
                  'assets/Star Labs logo.png',
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: MediaQuery.of(context).size.height - 350,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                    ),
                  ], //boxshadow
                ),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: 500,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'T a g W a g',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'BerkshireSwash-Regular',
                                fontWeight: FontWeight.bold,
                                fontSize: 45,
                              ),
                            ),
                            Text(
                              'Let\'s get to know what\'s in front of you!',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'GreatVibes-Regular',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 60),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: MediaQuery.of(context).size.width -
                                          180,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 17),
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color:
                                              Color.fromARGB(255, 162, 0, 255),
                                          width: 2,
                                        ),
                                      ),
                                      child: Text(
                                        'Live Camera',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 162, 0, 255),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 30),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: MediaQuery.of(context).size.width -
                                          180,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 17),
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color:
                                              Color.fromARGB(255, 162, 0, 255),
                                          width: 2,
                                        ),
                                      ),
                                      child: Text(
                                        'Camera Roll',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 162, 0, 255),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 30),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: <Widget>[
                                  GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                180,
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 24, vertical: 17),
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: Color.fromARGB(
                                                255, 162, 0, 255),
                                            width: 2,
                                          ),
                                        ),
                                        child: Text(
                                          'Take a Photo',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 162, 0, 255),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
