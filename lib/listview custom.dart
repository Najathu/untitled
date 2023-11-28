import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Listviewcustom(),
    );
  }));
}

class Listviewcustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listview custom"),
      ),
      body: ListView.custom(
          childrenDelegate: SliverChildListDelegate([
            Card(color: Colors.red,shadowColor: Colors.blue,child:
        ListTile(
          title: Text("aji"),
          subtitle: Text("55441"),
          trailing: Icon(Icons.call),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/icons/man.png"),
          ),
        ),),
        ListTile(
          title: Text("aji"),
          subtitle: Text("55441"),
          trailing: Icon(Icons.call),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/icons/man.png"),
          ),
        ),
        ListTile(
          title: Text("aji"),
          subtitle: Text("55441"),
          trailing: Icon(Icons.call),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/icons/man.png"),
          ),
        ),
        ListTile(
          title: Text("aji"),
          subtitle: Text("55441"),
          trailing: Icon(Icons.call),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/icons/man.png"),
          ),
        ),
        ListTile(
          title: Text("aji"),
          subtitle: Text("55441"),
          trailing: Icon(Icons.call),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/icons/man.png"),
          ),
        ),
        ListTile(
          title: Text("aji"),
          subtitle: Text("55441"),
          trailing: Icon(Icons.call),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/icons/man.png"),
          ),
        ),
        ListTile(
          title: Text("aji"),
          subtitle: Text("55441"),
          trailing: Icon(Icons.call),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/icons/man.png"),
          ),
        ),
        ListTile(
          title: Text("aji"),
          subtitle: Text("55441"),
          trailing: Icon(Icons.call),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/icons/man.png"),
          ),
        ),
        ListTile(
          title: Text("aji"),
          subtitle: Text("55441"),
          trailing: Icon(Icons.call),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/icons/man.png"),
          ),
        ),
        ListTile(
          title: Text("aji"),
          subtitle: Text("55441"),
          trailing: Icon(Icons.call),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/icons/man.png"),
          ),
        ),
        ListTile(
          title: Text("aji"),
          subtitle: Text("55441"),
          trailing: Icon(Icons.call),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/icons/man.png"),
          ),
        ),
        ListTile(
          title: Text("aji"),
          subtitle: Text("55441"),
          trailing: Icon(Icons.call),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/icons/man.png"),
          ),
        ),
        ListTile(
          title: Text("aji"),
          subtitle: Text("55441"),
          trailing: Icon(Icons.call),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/icons/man.png"),
          ),
        ),
        ListTile(
          title: Text("aji"),
          subtitle: Text("55441"),
          trailing: Icon(Icons.call),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/icons/man.png"),
          ),
        ),
        ListTile(
          title: Text("aji"),
          subtitle: Text("55441"),
          trailing: Icon(Icons.call),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/icons/man.png"),
          ),
        ),
      ])),
    );
  }
}
