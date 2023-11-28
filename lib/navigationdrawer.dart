import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      home: navigationdrawer(),
    );
  }));
}

class navigationdrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-Mail"),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Naju"),
                accountEmail: Text("naju@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/najath pic.jpg"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/icons/man.png"),
                  )
                ],
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/bb.jpeg"),
                        fit: BoxFit.fill)),
              ),
              ListTile(
                leading: Icon(Icons.inbox),
                trailing: Icon(Icons.add_box_outlined),
                title: Text("Inbox"),
              ),
              ListTile(
                leading: Icon(Icons.send),
                trailing: Icon(Icons.message),
                title: Text("Outbox"),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Favourite"),
              ),
              ListTile(
                leading: Icon(Icons.archive),
                title: Text("Archive"),
              ),
              ListTile(
                leading: Icon(Icons.restore_from_trash),
                title: Text("Trash"),
              ),
              ListTile(
                leading: Icon(Icons.new_releases_outlined),
                title: Text("Outbox"),
              ),
              Divider(),
              Text("     Lables"),
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text("Family"),
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text("Friends"),
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text("Work"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
