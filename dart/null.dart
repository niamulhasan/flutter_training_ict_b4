class ClassOne {
  void metOne() {
    print("Met One from class one");
  }
}

class ClassTwo extends ClassOne {
  void boo() {
    print("boo");
  }

  @override
  void metOne() {
    // TODO: implement metOne
    super.metOne();
    print("MetOne from class two");
  }
}

void main() {
  ClassTwo().metOne();
}
