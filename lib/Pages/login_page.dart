// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:hackathonui/Utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathonui/widgets/gredient.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute,arguments: username);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    //print(screen_width);
    return Material(
        child: SingleChildScrollView(
      child: Container(
            decoration: Gredientes.getBoxDecoration(context),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 22,
                  ),
                  Image.asset(
                    "assets/images/login1.png",
                    height: screen_height * 0.35,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome $username",
                    style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "UserName",
                            hintText: "Enter username",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Username cannot be null";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            username = value;
                            setState(() {});
                          },
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Enter password", labelText: "Password"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password cannot be null";
                            } else if (value!.length < 6) {
                              return "Password must be graeter than 8";
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Material(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(
                              changeButton ? screen_width * 0.12 : 8),
                          child: InkWell(
                            onTap: () => moveToHome(context),
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width: changeButton
                                  ? screen_width * 0.12
                                  : screen_width * 0.25,
                              height: screen_height * 0.07,
                              alignment: Alignment.center,
                              child: changeButton
                                  ? Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : Text(
                                      "Login",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                        SizedBox(height: screen_height*0.25,)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )));
        }
  }