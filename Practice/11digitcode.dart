import 'dart:io';
import 'dart:core';

void main() {
  String mobileNumber;
  do {
    print("Enter your mobile number:");
    mobileNumber = stdin.readLineSync() as String;
  } while (mobileNumber.isEmpty ||
      mobileNumber.length > 11 ||
      mobileNumber.substring(0, 2) != "03");
  print("Number Added Successfully: $mobileNumber");
  if (mobileNumber.length == 11) {
    print("Thank You");
  } else {
    print("Invalid Format");
  }
}
