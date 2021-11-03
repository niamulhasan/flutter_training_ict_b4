import 'dart:io';

class User {
  String name = "rahim";
  String password = "12345";
  String secret = "Secret for the user";

  void login() {
    print("Enter your user name:");
    String? inputName = stdin.readLineSync();
    print("Enter your password:");
    String? inputPassword = stdin.readLineSync();

    if (name == inputName && password == inputPassword) {
      print("Login successful");
      print("Your secret is: $secret");
    } else {
      print("Login failed");
    }
  }
}
