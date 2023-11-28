import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/stack.dart';

import 'gridviewcustom.dart';
import 'list-seperate.dart';
import 'listbuilder.dart';
import 'login_with_validate.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: tabbaar(),
  ));
}

class tabbaar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => tabbaar_state();
}

class tabbaar_state extends State<tabbaar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),

          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(Icons.camera_alt_rounded),
            ),
            //  SizedBox(
            //  width: 10,
            //),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(Icons.search_outlined),
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("Settings")),
                PopupMenuItem(child: Text("Help")),
                PopupMenuItem(child: Text("New Group")),
                PopupMenuItem(child: Text("Logout")),
              ];
            })
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.star),
              ),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Update"),
              ),
              Tab(
                child: Text("Contact"),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Listbuilder(),
            Listseparate(),
            Login_with_validate(),
            Gridviewcustom(),
          ],
        ),
      ),
    );
  }
}
