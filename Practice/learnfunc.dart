import 'dart:io';

void main(List<String> args) {
  mobileNum();
}

void add() {
  int input1 = int.parse(stdin.readLineSync()!);
  int num1 = input1;
  int input2 = int.parse(stdin.readLineSync()!);
  int num2 = input2;
  int sum = num1 + num2;
  print(sum);
  return;
}

void mobileNum() {
  bool validInput = false;

  while (!validInput) {
    print("Enter Your Mobile Number According to this Format:");
    print("03XXXXXXXXX");
    String input = stdin.readLineSync()?.replaceAll(" ", "") as String;

    if (input != (null) &&
        input.length == 11 &&
        input.startsWith("03") &&
        isNumeric(input)) {
      print("Your Number Added Successfully");
      validInput = true;
    } else {
      print("Invalid Entry Try Again!!!");
    }
  }
}

bool isNumeric(String input) {
  if (input == (null)) {
    return false;
  }
  return int.parse(input) != (null);
}
