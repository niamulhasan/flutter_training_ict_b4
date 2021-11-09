import 'dart:io';

import 'Admin.dart';

void main() {
  var admin1 = Admin();
  admin1.name = "admin1changed";
  admin1.pass = "123changed";
  admin1.login();

  var admin2 = Admin();
  admin2.name = "n";
  admin2.login();
}
