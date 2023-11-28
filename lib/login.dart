import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Loginpage(),
  ));
}

class Loginpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<Loginpage> {
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("loginpage"),
      ),
      body: Container(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Login Page",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 300, right: 300),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Username",
                    prefixIcon: Icon(Icons.perm_identity),
                    labelText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 300, right: 300),
              child: TextField(
                obscureText: showpass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(showpass == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 260),
              child: TextButton(onPressed: () {}, child: Text("Forget Password?")),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 30,
                width: 100,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      shadowColor: Colors.deepPurple,
                    ),
                    onPressed: () {},
                    child: Text("LOGIN"))),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {},
                child: Text("Not a User? Create a New Account")),
          ],
        ),
      )),
    );
  }
}
