import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: chatpage(),
    );
  }));
}

class chatpage extends StatefulWidget {
  @override
  State<chatpage> createState() => _chatpageState();
}

class _chatpageState extends State<chatpage> {
  var scc = [
    TabBarView(children: [chatty()]),
    Text("channel"),
    Text("profile"),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,
          title: Text(
            "Conversations",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.pink),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(Icons.add),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text("Add New"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(

          selectedItemColor: Colors.blue,
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_outlined,
                color: Colors.blue,
              ),
              label: "Chats",

            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.group_work,
                color: Colors.blue,
              ),
              label: "Channels",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
                color: Colors.blue,
              ),
              label: "Profile",
            )
          ],
        ),
        body: scc[index],
      ),
    );
  }
}

class chatty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/icons/najath pic.jpg"),
            ),
            title: Text("Naju"),
            subtitle: Text("Good to Know"),
            trailing: Text("Today"),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/icons/najath pic.jpg"),
            ),
            title: Text("Rezi Makarov"),
            subtitle: Text("its been a while"),
            trailing: Text("Today"),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/icons/najath pic.jpg"),
            ),
            title: Text("Rezi Makarov"),
            subtitle: Text("its been a while"),
            trailing: Text("Yesterday"),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/icons/najath pic.jpg"),
            ),
            title: Text("Rezi Makarov"),
            subtitle: Text("its been a while"),
            trailing: Text("28 Jan"),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/icons/najath pic.jpg"),
            ),
            title: Text("Rezi Makarov"),
            subtitle: Text("its been a while"),
            trailing: Text("24 Jan"),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/icons/najath pic.jpg"),
            ),
            title: Text("Rezi Makarov"),
            subtitle: Text("its been a while"),
            trailing: Text("18 Jan"),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/icons/najath pic.jpg"),
            ),
            title: Text("Rezi Makarov"),
            subtitle: Text("its been a while"),
            trailing: Text("15 Jan"),
          ),
          Divider(),

          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/icons/najath pic.jpg"),
            ),
            title: Text("Rezi Makarov"),
            subtitle: Text("its been a while"),
            trailing: Text("19 Jan"),
          ),

        ],
      ),
    );
  }
}
