import '../data/user.dart';

class UserController {
  void login(Map option) {
    if (option["name"] == User().name &&
        option["password"] == User().password) {
      print('Login Successful');
    } else {
      print("Login failed");
    }
  }

  void showProfile() {
    print("User Name: ${User().name} \nEmail: ${User().email}");
  }
}
