class Buyer {
  int? balance = 123;
  Buyer() {
    print("I am the default constructor");
  }
  Buyer.gorib() {
    print("Gorib buyer's constructor");
  }

  Buyer.boroloks() {
    print("Boroloks buyer's constructor");
  }
}

void main() {
  Buyer b1 = Buyer.gorib();
}
