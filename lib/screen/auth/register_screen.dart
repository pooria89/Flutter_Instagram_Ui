import 'package:flutter/material.dart';
import 'package:pooria50/helper/extension/StringExt.dart';

import '../../helper/sql_helper.dart';
import '../../widget/custom_textview.dart';
import '../main_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _neighbourhoodController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 60),
              CustomTextView(
                text: "Hello Dear ",
                size: 48,
                color: Colors.black87,
                fontFamily: 'BNazanin',
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        hintText: "Name",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password", border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              // Padding(
              //   padding: EdgeInsets.only(left: 12.0, right: 12.0),
              //   child: Container(
              //     decoration: BoxDecoration(
              //         color: Colors.grey[200],
              //         border: Border.all(color: Colors.white),
              //         borderRadius: BorderRadius.circular(10)),
              //     child: Padding(
              //       padding: EdgeInsets.only(left: 20),
              //       child: TextField(
              //         controller: _neighbourhoodController,
              //         obscureText: true,
              //         decoration: InputDecoration(
              //             hintText: "Neighbourhood", border: InputBorder.none),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  signIn();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: CustomTextView(
                        text: "Sign out",
                        size: 30,
                        color: Colors.white,
                        fontFamily: 'BNazanin',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextView(
                    text: "not a member",
                    size: 20,
                    color: Colors.black87,
                    fontFamily: 'BNazanin',
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (c, a1, a2) => RegisterScreen(),
                          transitionsBuilder: (c, anim, a2, child) =>
                              FadeTransition(opacity: anim, child: child),
                          transitionDuration: Duration(milliseconds: 1500),
                        ),
                      );
                    },
                    child: CustomTextView(
                      text: "Login now ",
                      size: 20,
                      color: Colors.red,
                      fontFamily: 'BNazanin',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }

  void insertDb(String username, String password, String neighbourhood) async {
    SQLHelper.insert(username, password, neighbourhood);
    print(
        'user have been saved => "username :$username "," "password : $password'
        ","
        "neighbourhood : $neighbourhood");
  }

  void signIn() {
    if (_nameController.text.isValidUserName()) {
      insertDb(_nameController.text, _passwordController.text,
          _neighbourhoodController.text);
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (c, a1, a2) => MainScreen(),
          transitionsBuilder: (c, anim, a2, child) =>
              FadeTransition(opacity: anim, child: child),
          transitionDuration: Duration(milliseconds: 1500),
        ),
      );
    } else {}
  }
}
