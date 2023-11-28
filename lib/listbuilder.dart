import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Listbuilder(

        ),
      );
    }
  ));
}

class Listbuilder extends StatelessWidget {
  @override
  var name = ["Akshay", "Najath", "Rahal"];
  var phone = ["73489747", "3298729389823", "4657556"];
  var image = [
    "assets/icons/man.png",
    "assets/icons/man.png",
    "assets/icons/man.png"
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listbuilder"),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(name[index]),
                subtitle: Text(phone[index]),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(image[index]),
                ),
              ),
            );
          },
          itemCount: name.length),
    );
  }
}
