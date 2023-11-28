import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Tabbar2(),
      );
    }
  ));
}

class Tabbar2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Tabbar2_state();
}

class Tabbar2_state extends State<Tabbar2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
            title: Text("GeeksForGeeks"),
            bottom: TabBar(
              tabs: [
                Column(
                  children: [
                    Tab(
                      child: Icon(Icons.home),

                    ),Text("Home")
                  ],
                ),
                Column(
                  children: [
                    Tab(
                      child: Icon(Icons.account_box_outlined),
                    ),Text("Account")
                  ],
                ),
                Column(
                  children: [
                    Tab(
                      child: Icon(Icons.alarm),
                    ),Text("Alarm")
                  ],
                ),
                Column(
                  children: [
                    Tab(
                      child: Icon(Icons.home_filled),
                    ),Text("Home")
                  ],
                ),
                Column(
                  children: [
                    Tab(
                      child: Icon(Icons.camera_alt_rounded),
                    ),Text("Camera")
                  ],
                )

              ],
            )),
      ),
    );
  }
}
