import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(home: expandedwidget(),));
}
class expandedwidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(title: Text("Exapanded Widget"),),
   body: Column(children: [
     Container(color: Colors.red,height: 200,width: 300),
     Expanded(child: Container(color: Colors.teal,width: 300,)),
     Expanded(child: Container(color: Colors.yellow,width: 300)),
   ],),
 );
  }
  
}