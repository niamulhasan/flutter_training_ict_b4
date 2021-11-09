import 'dart:io';

import 'controllers/admin_controller.dart';
import 'controllers/user_controller.dart';
import 'views/menus.dart';

class Navigation {
  void navigator(String option) {
    if (option == "1") {
      //user login menu
      Map selectedOption = Menu().userLogin();
      UserController().login(selectedOption);
    } else if (option == "2") {
      //admin login menu
      Map selectedOption = Menu().adminLogin();
      AdminController().login(selectedOption);
      print(selectedOption);
    } else {
      print("Invalid Input");
    }
  }
}
