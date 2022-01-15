import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:week10_login/login.dart';
import 'package:week10_login/sharedPreferences.dart';


class HomePage extends StatefulWidget {
  @override

  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>{

  String username = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome $username",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
                fontSize: 20.0),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: ElevatedButton(
              child: Text('Log out'),
              onPressed: () {
                getLoginValue().then((String value) => print(value));
                getUsername().then((String value) => print(value));
                getPassword().then((String value) => print(value));
                clearCache();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}





