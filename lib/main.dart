import 'package:flutter/material.dart';
import 'package:week10_login/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login Page',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Signup'),
            ),
            body: SignupPage())
    );
  }
}






