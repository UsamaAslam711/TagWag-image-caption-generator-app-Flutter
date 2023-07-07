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
