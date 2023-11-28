import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: StaggeredGridView(),
    );
  }));
}

class StaggeredGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered Grid View"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card(
                  color: Colors.cyan,
                  child: Image(
                    image: AssetImage("assets/icons/najath pic.jpg"),
                    fit: BoxFit.fill,
                  )),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card(
                  color: Colors.red,
                  child: Image(
                    image: AssetImage("assets/icons/najath pic.jpg"),
                    fit: BoxFit.fill,
                  )),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card(
                  color: Colors.yellow,
                  child: Image(
                    image: AssetImage("assets/icons/najath pic.jpg"),
                    fit: BoxFit.fill,
                  )),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card(
                  color: Colors.brown,
                  child: Image(
                    image: AssetImage("assets/icons/najath pic.jpg"),
                    fit: BoxFit.fill,
                  )),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card(
                  color: CupertinoColors.activeOrange,
                  child: Image(
                    image: AssetImage("assets/icons/najath pic.jpg"),
                    fit: BoxFit.fill,
                  )),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Card(
                  color: Colors.deepPurple,
                  child: Image(
                    image: AssetImage("assets/icons/najath pic.jpg"),
                    fit: BoxFit.fill,
                  )),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Card(
                color: Colors.deepPurple,
                child: Center(
                  child: Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.blue,
                        size: 50,
                      ),
                      Text(
                        "Whatsapp",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.yellowAccent),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
