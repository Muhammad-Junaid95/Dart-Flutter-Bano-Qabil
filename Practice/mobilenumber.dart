import 'dart:io';

void main(List<String> args) {
  bool validInput = false;

  while (!validInput) {
    print("Enter Your Mobile Number According to this format");
    print("03XXXXXXXXX");
    String input = stdin.readLineSync()?.replaceAll(" ", "") as String;

    if (input != (null) &&
        input.length == 11 &&
        input.startsWith("03") &&
        isNumeric(input)) {
      print("Your Number Added Successfully!!!");
      validInput = true;
    } else {
      print("Invalid Number!! Please Try Again.");
    }
  }
}

bool isNumeric(String input) {
  if (input == (null)) {
    return false;
  }
  return int.parse(input) != (null);
}
