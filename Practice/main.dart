import 'dart:io';

void main(List<String> args) {
  String q1 = ("Karachi is the city of Pakistan?");
  print(q1);
  String q1Ans = stdin.readLineSync() as String;
  var total = 10;
  var i;
  if (q1Ans == "y" || q1Ans == "Y" || q1Ans == "Yes" || q1Ans == "yes") {
    i = 2;
    print("Correct!!");
    print("2 Points !!");
  } else {
    print("Wrong Answer!!");
    i = 0;
  }
  String q2 = ("Islamabad is the Capital of Pakistan?");
  print(q2);
  String q2Ans = stdin.readLineSync() as String;
  if (q2Ans == "y" || q2Ans == "Y" || q2Ans == "Yes" || q2Ans == "yes") {
    if (i == 0) {
      i = 2;
    } else if (i == 2) {
      i = 4;
    } else {
      i = 0;
    }
    print("Correct!!");
    print("2 Points !!");
  } else {
    print("Wrong Answer!!");
    if (i == 2) {
      i = 2;
    } else {
      i = 0;
    }
  }
  String q3 = ("Bano Qabil Program is Al Khidmat Intiative?");
  print(q3);
  String q3Ans = stdin.readLineSync() as String;
  if (q3Ans == "y" || q3Ans == "Y" || q3Ans == "Yes" || q3Ans == "yes") {
    if (i == 0) {
      i = 2;
    } else if (i == 2) {
      i = 4;
    } else if (i == 4) {
      i = 6;
    } else {
      i = 0;
    }
    print("Correct!!");
    print("2 Points !!");
  } else {
    print("Wrong Answer!!");
    if (i == 2) {
      i = 2;
    } else if (i == 4) {
      i = 4;
    } else {
      i = 0;
    }
  }
  String q4 = ("Karachi is the highly populated city?");
  print(q4);
  String q4Ans = stdin.readLineSync() as String;
  if (q4Ans == "y" || q4Ans == "Y" || q4Ans == "Yes" || q4Ans == "yes") {
    if (i == 0) {
      i = 2;
    } else if (i == 2) {
      i = 4;
    } else if (i == 4) {
      i = 6;
    } else if (i == 6) {
      i = 8;
    } else {
      i = 0;
    }
    print("Correct!!");
    print("2 Points !!");
  } else {
    print("Wrong Answer!!");
    if (i == 2) {
      i = 2;
    } else if (i == 4) {
      i = 4;
    } else if (i == 6) {
      i = 6;
    } else {
      i = 0;
    }
  }
  String q5 = ("Pakistan has 5 Rivers?");
  print(q5);
  String q5Ans = stdin.readLineSync() as String;
  if (q5Ans == "y" || q5Ans == "Y" || q5Ans == "Yes" || q5Ans == "yes") {
    if (i == 0) {
      i = 2;
    } else if (i == 2) {
      i = 4;
    } else if (i == 4) {
      i = 6;
    } else if (i == 6) {
      i = 8;
    } else if (i == 8) {
      i = 10;
    } else {
      i = 0;
    }
    print("Correct!!");
    print("2 Points !!");
  } else {
    print("Wrong Answer!!");
    if (i == 2) {
      i = 2;
    } else if (i == 4) {
      i = 4;
    } else if (i == 6) {
      i = 6;
    } else if (i == 8) {
      i = 8;
    } else {
      i = 0;
    }
  }
  print("Total Points $total \nObtained Points $i");
}
