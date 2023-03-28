//Create a class named “Student” with properties such as name, age, major, and GPA.
//Add getter and setter methods for each property. Also, add a method to calculate the student’s grade level based on their age.
void main(List<String> args) {
  var student1 = Student();
  var student2 = Student();
  student1.name = ("Muhammad Junaid");
  student1.age = 0;
  student1.major = ("Computer Science");
  student1.GPA = 2.2;

  student1.printInfo();
  student1.stdGrade();

  student2.name = ("Fayyaz Khan");
  student2.age = 18;
  student2.major = ("Computer Science");
  student2.GPA = 3.2;

  student2.printInfo();
  student2.stdGrade();
}

class Student {
  var _name;
  var _age;
  var _major;
  var _GPA;

  set name(String name) {
    _name = name;
  }

  String get name {
    return _name;
  }

  set age(int age) {
    if (age <= 0) {
      throw Exception("Zero or Negative Value Not Allowed");
    }
    _age = age;
  }

  int get age {
    return _age;
  }

  set major(String major) {
    _major = major;
  }

  String get major {
    return _major;
  }

  set GPA(double GPA) {
    _GPA = GPA;
  }

  double get GPA {
    return _GPA;
  }

  void printInfo() {
    print("\nName: $name");
    print("Age: $age");
    print("Major: $major");
    print("GPA: $GPA");
  }

  void stdGrade() {
    if (_age <= 16) {
      print("You are in School\n");
    } else if (_age <= 19) {
      print("You are in College\n");
    } else if (_age <= 35) {
      print("You are in University\n");
    }
  }
}
