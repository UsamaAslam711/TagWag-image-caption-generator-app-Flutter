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
