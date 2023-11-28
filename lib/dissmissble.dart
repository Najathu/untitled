import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main (){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        home: dismissable(),);
    }
  ));
}
class dismissable extends StatelessWidget{
  var data=['WOW 1' ,'WOW 2', 'WOW 3'];
  var clr=[600,400,500];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView.builder(itemCount: data.length,itemBuilder: (context,index){
       return Dismissible(key: ValueKey(data), child: ListTile(
       title: Center(child: Text(data[index])),


       ),background: Container(color: Colors.teal,),
         secondaryBackground: Container(color: Colors.blue,),

       );
   },
   ));

  }

}