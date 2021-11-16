abstract class User {
  String? name = "buyerName";
  String? password = "123";

  User(this.name, this.password);

  void showProfile() {
    print("Name: ${this.name}");
  }
}

class Buyer extends User {
  int? balance = 123;

  Buyer(name, pass, this.balance) : super(name, pass);

  void buy() {
    print("Buy");
  }
}

class PremiumBuyer extends Buyer {
  int? pBalance = 100;
  String? name;

  PremiumBuyer(this.name, pass, balance) : super(name, pass, balance);

  @override
  showProfile() {
    print("Cool Name: ${this.name}");
  }
}

class Admin extends User {
  String? email = "admin@email.com";

  Admin(name, pass, this.email) : super(name, pass);

  void deleteBuyer() {
    print("Deleting Buyer");
  }
}

abstract class MyCoolString {
  String? theString;
  int? theLength;
}

void main() {
  User ad1 = Admin("newName", "newPass", "new@mail.com");
  ad1.showProfile();
  Buyer buyer1 = Buyer("bname", "bpass", 111);
  buyer1.showProfile();
  User pbuyer1 = PremiumBuyer("name", "pass", 11);
  pbuyer1.showProfile();
}
