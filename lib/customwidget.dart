import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';



}
class customwidget2 extends StatelessWidget {
  final Color ? clr;
  final Image ? img;
  final Text ? txt;
  VoidCallback onpress;
  customwidget2({this.clr,this.img,this.txt, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(color: clr,
        child: ListTile(
          leading: img,
          title: txt,
          onTap: onpress,
          trailing: Icon(Icons.account_box),
        ),
      ),

    );
  }

}