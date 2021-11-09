class User {
  String? name = "name";
  String? password = "123";

  User({String? name, String? p}) {
    this.name = name;
    this.password = p;
  }

  void showProfile() {
    print("${name} - ${password}");
  }
}

void main() {
  var user1 = User(name: "namechanged", p: "passwordStrong");
  user1.name = "dfdsf";
  user1.showProfile();
  var user2 = User(name: "namechanged2", p: "passwordStrong2");
  user2.showProfile();
}
