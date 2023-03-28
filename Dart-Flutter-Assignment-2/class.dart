// import 'dart:io';

// void main(List<String> args) {
//   var person = Person("Junaid", 27, "Male", 20000);
//   person.printInfo();
//   check();
// }

// class Person {
//   late String name;
//   late int age;
//   late String gender;
//   late int salary;

//   Person(String name, int age, String gender, int salary) {
//     this.name = name;
//     this.age = age;
//     this.gender = gender;
//     this.salary = salary;
//   }

//   void printInfo() {
//     print("Name: $name");
//     print("Age: $age");
//     print("Gender: $gender");
//     print("Salary: $salary");
//   }
// }

// void check() {
//   print("Which is the capital city of Pakistan?");
//   String input = stdin.readLineSync() as String;
//   if (input == "Karachi" || input == "karachi" || input == "KARACHI") {
//     return ret1();
//   } else {
//     return ret2();
//   }
// }

// void ret1() {
//   print("Fayyaz is a Good Boy");
//   return;
// }

// void ret2() {
//   print("Wrong Answer");
//   return;
// }

class Person {
  late String _name;
  late int _age;

  set age(int age) {
    if (age < 0) {
      throw Exception("Age cannot be negative.");
    }
    _age = age;
  }

  String get name {
    return _name.toLowerCase();
  }
}

void main() {
  var person = Person();
  person._name = "JUNAID";
  person.age = 30; // Throws an exception

  print("Name: ${person.name}");
  print("Age: ${person._age}");
}
