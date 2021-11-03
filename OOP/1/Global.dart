import 'dart:io';

class Global {
  String? mainMenu() {
    print("1. User Login \n2. Admin Login. \n Choose an option: ");
    return stdin.readLineSync();
  }
}
