import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      home: fooditem(),
    );
  }));
}

class fooditem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          Container(
            child: Padding(
            padding: const EdgeInsets.only(left: 80, bottom: 90, right: 70),
              child: Image(
                image: AssetImage("assets/icons/dumplings.jpeg"),
                fit: BoxFit.none,
              ),
            ),
          ),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.exposure_neg_1_outlined),
              ), Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("+"),
              )],
            ),
          )
        ],
      ),
    );
  }
}
