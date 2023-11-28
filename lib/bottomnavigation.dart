import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/login.dart';

void main() {
  runApp(MaterialApp(
    home: bottomnav(),
  ));
}

class bottomnav extends StatefulWidget {
  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  var screen = [
    Text("Home"),
    Text("Search"),
    Text("People"),
    Text("Login"),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.yellow,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedItemColor: Colors.teal,
        currentIndex: index,
        type: BottomNavigationBarType.shifting,
        onTap: (tap) {
          setState(() {
            index=tap;
          });
        },
        items:[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home", backgroundColor: Colors.cyan
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: "Search",
              backgroundColor: Colors.grey
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "People",
              backgroundColor: Colors.lime
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.login),
              label: "Login",
              backgroundColor: Colors.amberAccent
          ),
        ],
      ),
      body: Center(child: screen[index]),
    );
  }
}
