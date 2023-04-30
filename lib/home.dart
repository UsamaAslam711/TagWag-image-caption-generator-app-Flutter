import 'dart:ui';

import 'package:camera/camera.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tflite/tflite.dart';
import 'HelpScreen.dart';
import 'main.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isWorking = false;
  String result = "";
  late CameraController cameraController;
  late CameraImage imgCamera;
  initCamera() {
    cameraController = CameraController(cameras[0], ResolutionPreset.medium);
    cameraController.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {
        cameraController.startImageStream((imageFromScreen) => {
              if (!isWorking)
                {
                  isWorking = true,
                  imgCamera = imageFromScreen,
                }
            });
      });
    });
    {}
  }

  int index = 0;
  final screens = [
    Home(),
    HelpScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          width: MediaQuery.of(context).size.width * 1.7,
          left: 05,
          bottom: 100,
          child: Image.asset(
            "assets/Backgrounds/Spline.png",
            color:
                Color.fromRGBO(255, 255, 255, 0.4), // 0.7 is the opacity value
            colorBlendMode: BlendMode.modulate,
          ),
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 80,
              sigmaY: 80,
            ),
          ),
        ),
        Column(
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
            Column(
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
                        SizedBox(height: 90),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width - 180,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 17),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      width: 2,
                                    ),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 70, 252, 243),
                                        Color.fromARGB(255, 121, 73, 255),
                                        Color.fromARGB(255, 255, 155, 73)
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                  child: Text(
                                    'Live Camera',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
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
                                      MediaQuery.of(context).size.width - 180,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 17),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      width: 2,
                                    ),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 70, 252, 243),
                                        Color.fromARGB(255, 121, 73, 255),
                                        Color.fromARGB(255, 203, 73, 255)
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                  child: Text(
                                    'Camera Roll',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
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
                                      MediaQuery.of(context).size.width - 180,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 34, vertical: 17),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      width: 2,
                                    ),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 70, 252, 243),
                                        Color.fromARGB(255, 121, 73, 255),
                                        Color.fromARGB(255, 203, 73, 255)
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                  child: Text(
                                    'Take a Photo',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    ));
  }
}

Future loadmodel() async {
  Tflite.close();
  try {
    String? response;
    response = await Tflite.loadModel(
        model: "assets/4.2 ssd_mobilenet.tflite",
        labels: "assets/4.1 ssd_mobilenet.txt");
    print(response);
  } on PlatformException {
    print("Unable to load model");
  }
}
