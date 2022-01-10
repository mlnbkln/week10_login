import 'package:flutter/material.dart';
import 'package:week10_login/login.dart';
import 'package:week10_login/sharedPreferences.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome username',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 20.0),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: const Text('Log out'),
              onPressed: () {
                //getLoginValue().then(( String value) => print(value));
                //getUsername().then(( String value) => print(value));
                // getPassword().then(( String value) => print(value));
                clearCache();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const LoginPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}