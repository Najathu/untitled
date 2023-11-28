import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: GridCount(),
      );
    }
  ));
}

class GridCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridCount"),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount:
        4,
        children: List.generate(10, (index) {
          return Card(
            child: Column(
              children: [
                Image(
                  image: AssetImage(
                      "assets/icons/Iconarchive-Dog-Breed-Boxer-Dog.512.png"),
                  height: 75,
                  width: 75,
                ),
                Text("Dog"),
              ],
            ),
          );
        }),
      ),
    );
  }
}
