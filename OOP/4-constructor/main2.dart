class MyClass {
  String myProp = "prop value";

  MyClass() {
    print("i am a constructor");
  }

  void myFun1() {
    //data connection
    print("Function 1");
  }

  void myFun2() {
    //data connection
    print("Function 2");
  }
}

void main() {
  var ob1 = MyClass();
}
