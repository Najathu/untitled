import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: bottomnaveg(),
    );
  }));
}

class bottomnaveg extends StatefulWidget {
  @override
  State<bottomnaveg> createState() => _bottomnavegState();
}

class _bottomnavegState extends State<bottomnaveg> {
  var scc = [
    Text("Home"),
    TabBarView(children: [lunches()]),
    Text("Cart"),
    Text("Account"),
  ];

  int Index = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Bottom Nav"),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Lunches",
                ),
                Tab(
                  text: "Cart",
                ),
              ],
            ),
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




                ],
              ),
            ),
          ),


          bottomNavigationBar: BottomNavigationBar(
            currentIndex: Index,

            onTap: (tap) {
              setState(() {
                Index = tap;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home", backgroundColor: Colors.cyan
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.fastfood_rounded),
                  label: "Lunches", backgroundColor: Colors.cyan
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_rounded),
                  label: "cart", backgroundColor: Colors.cyan
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.face),
                  label: "Account", backgroundColor: Colors.cyan
              ),
            ],
          ),body: Center(child: scc[Index]),),
    );
  }
}
class lunches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children:[
          ListTile(
           leading: Container(color: Colors.teal,child: Column(
             children: [
               Text("1"),
               Text("Tuesday")
             ],
           ),),
          ),
        ListTile(
          leading: Container(color: Colors.purpleAccent,child: Column(
            children: [
              Text("1"),
              Text("Tuesday")
            ],
          ),),
        ),
      ],),


      );

  }
}

