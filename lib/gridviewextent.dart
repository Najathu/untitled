import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: GridviewExtent(),
      );
    }
  ));
}

class GridviewExtent extends StatelessWidget {
  var  clr=[Colors.red,
  Colors.blue,
    Colors.amber,
    Colors.black12,
    Colors.yellow,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridViewExtent"),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 200,
        children: List.generate(5, (index) {
          return Card( color: clr[index],
            child: Column(
              children: [
                Image(
                  image: AssetImage(
                      "assets/icons/Iconarchive-Dog-Breed-Boxer-Dog.512.png"),
                  height: 95,
                  width: 95,
                ),
                Text("Dog",style: TextStyle(fontSize: 25,color: Colors.black),),
              ],
            ),
          );
        }),
      ),
    );
  }
}
