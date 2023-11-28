import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Gridviewcustom(),
    );
  }));
}

class Gridviewcustom extends StatelessWidget {
  var clr = [
    Colors.red,
    Colors.blue,
    Colors.amber,
    Colors.black12,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GridViewCustom"),
        ),
        body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Card( color: clr[index],
    child: Column(
    children: [
    Image(
    image: AssetImage(
    "assets/icons/Iconarchive-Dog-Breed-Boxer-Dog.512.png"),
    height: 55,
    width: 55,
    ),
    Text("Dog",style: TextStyle(fontSize: 15,color: Colors.black),),
    ],
    ),
    );
    },
childCount: clr.length
          ),
        ));

  }
}
