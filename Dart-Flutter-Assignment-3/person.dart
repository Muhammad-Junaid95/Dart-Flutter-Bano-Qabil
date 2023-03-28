//Create a Person class with firstName and lastName properties, and a method called fullName() that returns the full name of the person.
//Then create a Student class that inherits from Person and has a major property.
//Override the fullName() method in the Student class to include the major in the full name.
void main() {
  Person person = Person("Muhammad", "Junaid");
  person.fullName();

  Student student = Student("Muhammad", "Junaid", "Computer Science");
  student.fullName();
}

class Person {
  String firstName;
  String lastName;

  Person(this.firstName, this.lastName);

  void fullName() {
    print("\n$firstName $lastName");
  }
}

class Student extends Person {
  String major;

  Student(String firstName, String lastName, this.major)
      : super(firstName, lastName);

  @override
  void fullName() {
    print("\n$firstName $lastName, $major\n");
  }
}
