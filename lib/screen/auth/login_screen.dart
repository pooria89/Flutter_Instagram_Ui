import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pooria50/screen/auth/register_screen.dart';
import 'package:pooria50/screen/main_screen.dart';

import '../../helper/sql_helper.dart';
import '../../widget/custom_textview.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

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
              SizedBox(height: 10),
              Icon(
                Icons.android,
                size: 100,
              ),
              SizedBox(height: 60),
              Text("Hello Dear  ",
                  style: GoogleFonts.bebasNeue(fontSize: 48.0)),
              SizedBox(height: 10),
              CustomTextView(
                text: "Welcome Back",
                size: 25,
                color: Colors.black,
                fontFamily: 'BNazanin',
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 20),
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
                      controller: _usernameController,
                      decoration: InputDecoration(
                          hintText: "Username", border: InputBorder.none),
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
              GestureDetector(
                onTap: () {
                  // signIn();
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => MainScreen(),
                      transitionsBuilder: (c, anim, a2, child) =>
                          FadeTransition(opacity: anim, child: child),
                      transitionDuration: Duration(milliseconds: 1500),
                    ),
                  );
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
                        text: "Sign in",
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
                      text: "register now ",
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

  void getUsers() async {
    final rows = await SQLHelper.getItems();
    print('query all rows');
    rows.forEach(print);
  }
}
