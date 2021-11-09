import '../data/admin.dart';

class AdminController {
  void login(Map option) {
    if (option["name"] == Admin().name &&
        option["password"] == Admin().password) {
      print('Login Successful');
    } else {
      print("Login failed");
    }
  }

  void showProfile() {
    print("User Name: ${Admin().name} \nEmail: ${Admin().email}");
  }
}
