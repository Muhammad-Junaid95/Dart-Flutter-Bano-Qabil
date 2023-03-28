import 'dart:io';

void main(List<String> args) {
  print("Enter Number:");
  int number = int.parse(stdin.readLineSync() as String);
  if (number > 0) {
    print("Positive");
  } else if (number == 0) {
    print("Zero");
  } else if (number == " " || number == "" || number == (null)) {
    print("Wrong Insertion");
  } else {
    print("Negative");
  }
}
