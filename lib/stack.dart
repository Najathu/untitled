import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Stackk(),
    );
  }));
}

class Stackk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("hbfjdshbfbh"),),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              color: Colors.grey,
              height: 1000,
              width: 400,
            ),
          ),

          Positioned(
            child: Container(
              color: Colors.white70,
              height: 1000,
              width: 400,
            ),
            top: 250,
          ),
          Positioned(
            child: Container(
              child: Image.asset("assets/icons/najath pic.jpg",fit: BoxFit.fill,),
              color: Colors.black,
              height:150,
              width: 150,
            ),
          left: 130,top: 190,
          )

          // Positioned(
          //   child: Container(
          //     color: Colors.yellow,
          //     height:80,
          //     width: 80,
          //   ),
          //     left: 380,top: 150,
          // ),

          // Positioned(
          //   child: Container(
          //     color: Colors.green,
          //     height: 100,
          //     width: 100,
          //   ),
          //     left: 100,right: 40
          // ),
    ],
      ),
    );
  }
}
