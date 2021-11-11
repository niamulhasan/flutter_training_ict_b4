class MyClass {
  String? name = "dname";
  String? password = "123";
  String? email = "demail";

  MyClass() {
    print("constructor");
  }

  void showProfile(String msg) {
    print("Profile: \n Name: $name \n Email: $email \n$msg");
  }
}

void main() {
  var ob1 = MyClass();
  ob1.name = "new_name";
  ob1.showProfile("Hello");
}
