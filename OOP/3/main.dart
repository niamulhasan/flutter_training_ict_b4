import 'dart:io';

import 'views/menus.dart';
import 'navigation.dart';

void main() {
  while (true) {
    String option = Menu().mainMenu();
    Navigation().navigator(option);

    String? x = stdin.readLineSync();
    print("\x1B[2J\x1B[0;0H");
  }
}
