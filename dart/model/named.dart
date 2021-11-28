class Boo {
  Boo() {
    print("I am the default constructor");
  }

  Boo.con1() {
    print("I am a named constructor");
  }
}

void main() {
  Boo.con1();
}
