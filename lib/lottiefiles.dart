import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Lottify(),
      );
    }
  ));
}

class Lottify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Lottie.asset("assets/animations/cat.json"),
          Lottie.network(
              "https://lottie.host/97ccaf7a-bcec-487e-b4c4-fa9d7b740758/w8JbmCGG89.json"),
          Lottie.network(
              "https://lottie.host/bdd3c8fb-7027-4cd4-be1a-1e55f1114824/js3zkbt3fr.json")
        ],
      ),
    );
  }
}
