//Create a class named “Course” with properties such as name, code, instructor, and credits.
//Add getter and setter methods for each property. Also, add a method to calculate the total
//cost of the course based on the number of credits and the cost per credit.

void main(List<String> args) {
  var student1 = Course();
  student1.courseName = ("Calculus & Analytical Geometry");
  student1.courseCode = ("MAT101");
  student1.courseInstructor = ("Syed Azeem Inam");
  student1.credits = 3;
  student1.printInfo();

  student1.courseName = ("Programming Fundamentals");
  student1.courseCode = ("CSC101");
  student1.courseInstructor = ("Syeda Nazia Ashraf");
  student1.credits = 3;
  student1.printInfo();

  student1.courseName = ("Physics");
  student1.courseCode = ("PHY101");
  student1.courseInstructor = ("Syed Khalid Hasssan");
  student1.credits = 3;
  student1.printInfo();

  student1.courseName = ("Pakistan Studies");
  student1.courseCode = ("HSE101");
  student1.courseInstructor = ("Inayatullah Magsi");
  student1.credits = 2;
  student1.printInfo();

  student1.courseName = ("Islamiyat");
  student1.courseCode = ("HSE102");
  student1.courseInstructor = ("Farkhanda Javed");
  student1.credits = 1;
  student1.printInfo();

  student1.courseName = ("English 1");
  student1.courseCode = ("ENG101");
  student1.courseInstructor = ("Dr Abdul Malik Abbasi");
  student1.credits = 3;
  student1.printInfo();

  student1.creditCost();
}

class Course {
  var _courseName;
  var _courseCode;
  var _courseInstructor;
  var _credits;

  set courseName(String courseName) {
    _courseName = courseName;
  }

  String get courseName {
    return _courseName;
  }

  set courseCode(String courseCode) {
    _courseCode = courseCode;
  }

  String get courseCode {
    return _courseCode;
  }

  set courseInstructor(String courseInstructor) {
    _courseInstructor = courseInstructor;
  }

  String get courseInstructor {
    return _courseInstructor;
  }

  set credits(int credits) {
    _credits = credits;
  }

  int get credits {
    return _credits;
  }

  void printInfo() {
    print("\nCourse Name: $courseName");
    print("Course Code: $courseCode");
    print("Course Instructor: $courseInstructor");
    print("Course Credit Hours: $credits\n");
  }

  void creditCost() {
    var perCreditCost = 5000 / 3;
    print("\nPer Credit Cost = Rs.$perCreditCost");

    var perCourseCreditCost = 5000;
    print("\nPer Course Credits Cost = Rs.$perCourseCreditCost");

    var totalCost = 5000 * 6;
    print("\nTotal Credits Cost = Rs.$totalCost");
  }
}
