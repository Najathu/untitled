import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/customwidget.dart';

void main() {
  runApp(DevicePreview(
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: custom_widget_eg2(),);
      }
  ));
}

class custom_widget_eg2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Center(child: Text("custom_widget_eg2")),backgroundColor: CupertinoColors.activeOrange,),
    body:
        customwidget2(onpress: (){},
      img: Image.asset("assets/icons/najath pic.jpg"),
        txt: Text("aji"),
          clr: Colors.teal,

        )


  );
  }

}