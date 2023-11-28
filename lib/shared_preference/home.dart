import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_page.dart';

class home_sharedP extends StatefulWidget {
  @override
  State<home_sharedP> createState() => _home_sharedPState();
}

class _home_sharedPState extends State<home_sharedP> {
  late SharedPreferences data;
  late String username;

  @override
  void initState() {
    fetchname();
    super.initState();
  }

  void fetchname() async {
    data = await SharedPreferences.getInstance();
    setState(() {
      username = data.getString('username')!;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Hai,Welcome $username",
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  data.setBool('newuser', true);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Loginn_()));
                },
                child: Text("Log Out"))
          ],
        ),
      ),
    );
  }
}
