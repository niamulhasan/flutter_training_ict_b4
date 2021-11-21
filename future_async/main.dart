void main() async {
  print("rendering ui...");
  await Future.delayed(Duration(seconds: 3), () {
    print("loading data from api");
  });
  print("continue rendering ui....");
}
