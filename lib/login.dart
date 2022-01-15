import 'package:flutter/material.dart';
import 'package:week10_login/sharedPreferences.dart';
import 'homepage.dart';

var userNameInputController = TextEditingController();
var passwordInputController = TextEditingController();

class LoginPage extends StatefulWidget {
  @override

  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>{


  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: userNameInputController,
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
              controller: passwordInputController,
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
          SizedBox(
            height: 30,
          ),

          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              child: Text('Log in'),
              onPressed: () {
                getUsername().then((String username) {
                  print(userNameInputController.text);
                  (username);
                  if (userNameInputController.text == username) {
                    getPassword().then((String password) {
                      if (passwordInputController.text == password){
                        setLoginValue('true');
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (BuildContext context) => HomePage(),
                          ),
                        );
                      }else print("password");
                    });
                  }else print("username");
                });
              })
        ],
      ),
    ));
  }
}