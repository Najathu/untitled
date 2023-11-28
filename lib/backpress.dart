import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:backpress() ,));
}
class backpress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup() async {
      return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Exit App"),
                content: Text("Do you want to Exit the App ? "),
                actions: [
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text("No"),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: Text("Yes"),
                  ),
                ],
              )
      ) ?? false;
    }
    return WillPopScope(child: Scaffold(
      appBar: AppBar(title: Text("OverRide Back Button"),
      backgroundColor: Colors.redAccent,
      ),
      body: Text("OVERRIDE BACK BUTTON"),
    ), onWillPop: showExitPopup,);

  }
}
