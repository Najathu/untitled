import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Gridview(),
    );
  }));
}

class Gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("GridView")),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250, crossAxisSpacing: 80, mainAxisExtent: 180),
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
                "assets/icons/Icons8-Windows-8-Animals-Butterfly.512.png"),
          ),
          CircleAvatar(
            backgroundImage: AssetImage(
                "assets/icons/Icons8-Windows-8-Animals-Butterfly.512.png"),
          ),
          CircleAvatar(
            backgroundImage: AssetImage(
                "assets/icons/Icons8-Windows-8-Animals-Butterfly.512.png"),
          ),
          CircleAvatar(
            backgroundImage: AssetImage(
                "assets/icons/Icons8-Windows-8-Animals-Butterfly.512.png"),
          ),
          CircleAvatar(
            backgroundImage: AssetImage(
                "assets/icons/Icons8-Windows-8-Animals-Butterfly.512.png"),
          ),
        ],
      ),
    );
  }
}
