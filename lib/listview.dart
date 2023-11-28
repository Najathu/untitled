import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Listview(),);
    }
  ));
}

class Listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("listview"),),
      body: ListView(
        children: [
          Card(color: Colors.red,
            child: ListTile(title: Text("appuni"),
              subtitle: Text("45631"),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Iconarchive-Dog-Breed-Boxer-Dog.512.png"),),
            ),
          ),
          Card(color: Colors.blue,
            child: ListTile(title: Text("naju"),
              subtitle: Text("45631"),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/man.png"),),
            ),
          ),
          Card(color: Colors.yellow,
            child: ListTile(title: Text("aji"),
              subtitle: Text("55441"),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/man.png"),),
            ),
          ),
          Card(color: Colors.pink,
            child: ListTile(title: Text("naju"),
              subtitle: Text("45631"),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/man.png"),),
            ),
          )

        ],
      ),
      );

  }
}
