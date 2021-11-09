import 'dart:io';

class Menu {
  String mainMenu() {
    print("Login as: \n 1. User\n 2. Admin. \nChoose Option");
    String? option = stdin.readLineSync()!;
    if (option == "1" || option == "2") {
      return option;
    }
    return "0";
  }

  Map userLogin() {
    print("User Login:");
    print("   User Name:");
    String inpUserName = stdin.readLineSync()!;
    print("   Password");
    String inpPass = stdin.readLineSync()!;

    return {
      "name": "$inpUserName",
      "password": "$inpPass",
    };
  }

  Map adminLogin() {
    print("Admin Login:");
    print("   User Name:");
    String inpUserName = stdin.readLineSync()!;
    print("   Password");
    String inpPass = stdin.readLineSync()!;

    return {
      "name": "$inpUserName",
      "password": "$inpPass",
    };
  }
}
