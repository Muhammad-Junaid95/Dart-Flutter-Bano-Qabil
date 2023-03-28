// import 'dart:io';

// void main(List<String> args) {
//   print("Enter Table Number:");
//   int table = int.parse(stdin.readLineSync()!);
//   print("Lets Learn the Table of $table");
//   for (var i = 1; i <= 10; i++) {
//     print("$table * $i = ${table * i}");
//   }
// }
void main(List<String> args) {
  // for (var i = 1; i <= 10; i++) {
  //   if (i % 2 == 1) {
  //     print(i);
  //   }
  // }
  // var i = 1;
  // while (i <= 20) {
  //   if (i % 2 == 0) {
  //     print(i);
  //   }
  //   i++;
  // }
  // var i = 1;
  // do {
  //   if (i % 2 == 1) {
  //     print(i);
  //   }
  //   i++;
  // } while (i <= 20);
  // myOuterLoop:
  // for (var i = 1; i <= 3; i++) {
  //   for (var j = 1; j <= 3; j++) {
  //     print("$i $j");

  //     if (i == 2 && j == 2) {
  //       break myOuterLoop;
  //     }
  //   }
  // }
  for (var i = 1; i <= 3; i++) {
    for (var j = 1; j <= 3; j++) {
      if (i == 2 && j == 2) {
        continue;
      }
      print("$i $j");
    }
  }
}
