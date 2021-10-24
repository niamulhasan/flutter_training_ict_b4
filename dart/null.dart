import 'dart:io';

void main() {
  print("Enter a number: ");
  String? input = stdin.readLineSync();
  int theNumber = int.parse(input!);
  print(theNumber + 5);
}
