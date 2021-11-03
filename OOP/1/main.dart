import 'dart:io';
import 'Global.dart';
import 'User.dart';
import 'Admin.dart';

void main() {
  String? option = Global().mainMenu();

  if (option == "1") {
    User().login();
  } else if (option == "2") {
    Admin().login();
  }
}
