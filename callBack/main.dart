void add(a, b, cb) {
  print("${a + b}");
  cb();
}

void customFun() {
  print("I am the code ${10 * 10}");
}

void main() {
  int n = 1;
  add(1, 2, customFun);
}
