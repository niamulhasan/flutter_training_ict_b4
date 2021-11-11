class User {
  String? name = "default_name";
  String? password = "default_passowrd";

  User(this.name);

  void showProfile() {
    print("$name");
  }
}

class Buyer extends User {
  String? email;

  Buyer(this.email, n) : super(n);

  void buy() {
    print("Buying");
  }
}

class Admin extends User {
  Admin(n) : super(n);

  void deleteBuyer() {
    print("Deleting buyer");
  }
}

void main() {
  var buyer1 = Buyer("new@email.com", "new_name");
  // buyer1.name = "b1";
  print(buyer1.name);
  buyer1.showProfile();
}
