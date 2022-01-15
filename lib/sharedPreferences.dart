import 'package:shared_preferences/shared_preferences.dart';

Future<bool> setUsername(String username) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString("username", username);
}


Future<bool> setPassword(String password) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  print("password set $password");
  return prefs.setString("password", password);
}

Future<bool> setLoginValue(String loginValue) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.setString("loginValue", loginValue);
}



Future<String> getUsername() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String username = prefs.getString("username").toString();
  return username;
}

Future<String> getPassword() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String password = prefs.getString("password").toString();
  return password;
}

Future<String> getLoginValue() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String loginValue = prefs.getString("loginValue").toString();
  return loginValue;
}

Future<bool> clearCache() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.clear();
}

