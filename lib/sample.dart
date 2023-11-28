import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/login.dart';
import 'package:untitled/main.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pullingo App"),
      ),
      body: Center(
        child: Container(height: double.infinity,
          width: double.infinity,
          color:Colors.blue,
          child:  Column(
            children: [
              Text(
                "PULLINGO BOYS",
                style: TextStyle(color: Colors.green, fontSize: 50),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 100),
                child: Image(image: AssetImage("assets/icons/Simpleicons-Team-Simple-Aircanada.512.png"),height: 200, width: 200,),
              ),
              Image(image: AssetImage("assets/icons/pp-removebg-preview.png"),height:200,width: 200),


            ],
          ),
        ),
      ),
    );
  }
}
