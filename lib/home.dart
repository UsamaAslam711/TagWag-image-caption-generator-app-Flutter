        labels: "assets/4.1 ssd_mobilenet.txt");
    print(response);
  } on PlatformException {
    print("Unable to load model");
  }
}
