import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Slivers(),
    );
  }));
}

class Slivers extends StatelessWidget {
  var color = [
    Colors.blue,
    Colors.black,
    Colors.red,
    Colors.teal,
    Colors.tealAccent,
    Colors.blue
  ];
  var img=[
    "assets/icons/man.png",
    "assets/icons/najath pic.jpg",
    "assets/icons/man.png",
   "assets/icons/najath pic.jpg",
    "assets/icons/man.png",
    "assets/icons/najath pic.jpg",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("Custom ScrollView"),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.shopping_cart_rounded)),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
            ],
            bottom: AppBar(
              title: Container(
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search", prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                height: 60,
                color: color[index],
              );
            },
            childCount: color.length,
          )),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 50,
                  child: Image.asset(img[index],),
                );
              },
              childCount: color.length,
            ),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          ),
        ],
      ),
    );
  }
}
