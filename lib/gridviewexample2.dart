import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Gridview2(),
    );
  }));
}

class Gridview2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridVieweg"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: GridView.builder(itemBuilder: Con,),
          children: [
            Card(
              color: Colors.red,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Image(
                    image: AssetImage("assets/icons/man.png"),
                    height: 60,
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
                    child: Text("Contact"),
                  ),
                ],
              ),

            ),
            Card(
              color: Colors.blue,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Image(
                    image: AssetImage("assets/icons/man.png"),
                    height: 60,
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text("Contact"),
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.yellow,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Image(
                    image: AssetImage("assets/icons/man.png"),
                    height: 60,
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text("Contact"),
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Image(
                    image: AssetImage("assets/icons/man.png"),
                    height: 60,
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "Contact",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.purple,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Image(
                    image: AssetImage("assets/icons/man.png"),
                    height: 60,
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text("Contact"),
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.orange,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Image(
                    image: AssetImage("assets/icons/man.png"),
                    height: 60,
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text("Contact"),
                  ),
                ],
              ),
            ),

            // CircleAvatar(
            //   backgroundImage: AssetImage(
            //       "assets/icons/man.png"),
            // ),Text("Contact"),
            // CircleAvatar(
            //   backgroundImage: AssetImage(
            //       "assets/icons/Icons8-Windows-8-Animals-Butterfly.512.png"),
            // ),
            // CircleAvatar(
            //   backgroundImage: AssetImage(
            //       "assets/icons/Icons8-Windows-8-Animals-Butterfly.512.png"),
            // ),
            // CircleAvatar(
            //   backgroundImage: AssetImage(
            //       "assets/icons/Icons8-Windows-8-Animals-Butterfly.512.png"),
            // ),
            // CircleAvatar(
            //   backgroundImage: AssetImage(
            //       "assets/icons/Icons8-Windows-8-Animals-Butterfly.512.png"),
            // ),
          ],
        ),
      ),
    );
  }
}
