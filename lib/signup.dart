import 'package:flutter/material.dart';
import 'package:week10_login/login.dart';
import 'package:week10_login/sharedPreferences.dart';


var passwordController = TextEditingController();
var userNameController = TextEditingController();

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override

  _SignupPageState createState() => _SignupPageState();
}


class _SignupPageState extends State<SignupPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: AppBar(
        title: const Text("Sign up Page"),
        ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15.0,top:50.0,bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              const SizedBox(
                height: 48,
              ),
              Form(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: TextFormField(
                          controller: userNameController,
                          obscureText: false,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username'),
    ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: false,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password'),
                        ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: false,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password Confirmation',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                  const SizedBox(
                    height: 55,
                  ),
          Center(
            child: Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child:
              ElevatedButton(
                    onPressed: () {
                      setUsername(userNameController.text).then((bool committed) {
                      });
                      setPassword(passwordController.text).then((bool done) {
                      });
                      (passwordController.text);
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) => const LoginPage(),
                        ),
                      );
                      },
                      child: const Text(
                      'Register',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
            ),
          ),
                ],
              ),
            ],
          ),
    ),
    )
    );
  }
}

