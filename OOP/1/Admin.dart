import 'dart:io';

class Admin {
  String name = "admin";
  String password = "12345";
  String secret = "Secret for the admin";

  void login() {
    print("Enter your admin name:");
    String? inputAdminName = stdin.readLineSync();
    print("Enter your password:");
    String? inputAdminPassword = stdin.readLineSync();

    if (name == inputAdminName && password == inputAdminPassword) {
      print("Login successful");
      print("Your secret is: $secret");
    } else {
      print("Login failed");
    }
  }
}
