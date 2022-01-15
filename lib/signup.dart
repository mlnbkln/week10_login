import 'package:flutter/material.dart';
import 'package:week10_login/login.dart';
import 'package:week10_login/sharedPreferences.dart';


var passwordController = TextEditingController();
var userNameController = TextEditingController();


class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView (
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: userNameController,
                obscureText: false,
                decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        )),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: passwordController,
                obscureText: false,
                decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        )),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: passwordController,
                obscureText: false,
                decoration: InputDecoration(
                    labelText: 'Password Confirmation',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        )),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage(),
                  ),
                );
              },
              child: Container(
                child: Text(
                  'Already registered?',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                setUsername(userNameController.text).then((bool committed) {

                });
                setPassword(passwordController.text).then((bool done) {

                });
               (passwordController.text);
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage(),
                  ),
                );
              },
              child: Text('Signup'),
            )
          ],
        ),
      ),
    );
  }
}

