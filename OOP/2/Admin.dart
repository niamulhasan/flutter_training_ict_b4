import 'dart:io';

class Admin {
  String name = "admin";
  String pass = "123";
  String secret = "Ad secret";

  void login() {
    print("Admin Login: \n Name:");
    String? x = stdin.readLineSync();
    print(" Password:");
    String? y = stdin.readLineSync();
    if (x == name && y == pass) {
      print("Login successful! \n Secret: $secret");
    } else {
      print("Error");
    }
  }
}
