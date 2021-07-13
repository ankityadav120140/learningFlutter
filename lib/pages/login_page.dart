import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

String name = "";
bool chageButton = false;

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Material(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        "assets/login.png",
                        scale: 4,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "Welocome $name",
                      textScaleFactor: 3,
                      style: TextStyle(
                        color: Colors.black87,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        hintText: "Enter User Name",
                        labelText: "User Name",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AnimatedContainer(
                      width: double.infinity,
                      duration: Duration(seconds: 1),
                      child: ElevatedButton(
                        onPressed: () async {
                          setState(() {
                            chageButton = true;
                          });
                          await Future.delayed(Duration(microseconds: 70));
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => homePage()),
                          );
                        },
                        child: chageButton
                            ? Icon(Icons.done)
                            : Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 28,
                                ),
                              ),
                        style: TextButton.styleFrom(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
