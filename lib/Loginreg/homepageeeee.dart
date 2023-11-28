import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';

class hompagee extends StatefulWidget {
  @override
  State<hompagee> createState() => _hompageeState();
}

class _hompageeState extends State<hompagee> {
  late SharedPreferences logindata;
  late String name;

  @override
  void initState() {
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      name = logindata.getString('name')!;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Text(
              "Hai $name Welcome To Luminar",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                logindata.setBool('newuser', true);

                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Loginreg()));
              },
              child: Text("Logout"))
        ]),
      ),
    );
  }
}
