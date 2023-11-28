import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Gridbuildereg(),
    );
  }));
}

class Gridbuildereg extends StatelessWidget {
  var icon = [
    Icons.home_filled,
    Icons.email_rounded,
    Icons.alarm_add,
    Icons.wallet_giftcard,
    Icons.backup_outlined,
    Icons.book,
    Icons.camera_alt_outlined,
    Icons.person,
    Icons.print_outlined,
    Icons.phone,
    Icons.note,
    Icons.music_note_outlined
  ];
  var name = [
    "home",
    "email",
    "alarm",
    "wallet",
    "backup",
    "book",
    "camera",
    "person",
    "print",
    "phone",
    "note",
    "music"
  ];
  var colour = [
    Colors.yellow[400],
    Colors.grey,
    Colors.orange[200],
    Colors.red,
    Colors.grey[600],
    Colors.green,
    Colors.purple,
    Colors.pink[100],
    Colors.blueAccent,
    Colors.redAccent,
    Colors.pinkAccent,
    Colors.green
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("fcdfsadfa"),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Card(
            color: colour[index] ,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Icon(
                    icon[index],
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    name[index],
                    style: TextStyle(fontSize: 20),
                  ),
                ),

              ],
            ),
          );
        },
        itemCount: icon.length,
      ),
    );
  }
}