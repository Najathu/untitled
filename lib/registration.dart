import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: RegisterPage(),
  ));
}

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegisterState();
}

class RegisterState extends State<RegisterPage> {
  bool showpass=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("registrationpage"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Sign up",
                style: TextStyle(
                    fontSize: 45,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text("Its quick and easy",
                style: TextStyle(fontSize: 15,color: Colors.lightBlueAccent),),

              SizedBox(height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 300, right: 300),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Name",
                      prefixIcon: Icon(Icons.perm_identity),
                      labelText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 300, right: 300),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email),
                      labelText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(height: 30,
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
              SizedBox(height: 30,
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
                height: 40,
              ),
              SizedBox(
                  height: 30,
                  width: 100,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shadowColor: Colors.deepPurple,
                      ),
                      onPressed: () {},
                      child: Text("Signup"))),
               SizedBox(height: 20,
               ),
              TextButton ( onPressed: (){}, child: Text("Already Have a Account..!"))

            ],
          ),
        ),
      ),
    );
  }
}
