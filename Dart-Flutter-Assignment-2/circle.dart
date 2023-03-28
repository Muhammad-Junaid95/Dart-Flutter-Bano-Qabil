//Create a class named “Circle” with properties such as radius.
//Add getter and setter methods for the radius property. Also, add a method to calculate the circumference of the circle.
import 'dart:io';

void main() {
  var myCircle = Circle();
  print("Enter The Radius of Circle:");
  myCircle.radius = double.parse(stdin.readLineSync()!);

  print("Radius: ${myCircle.radius}");
  print("Circumference: ${myCircle.calculateCircumference()}");
}

class Circle {
  late double _radius;

  double get radius => _radius;

  set radius(double value) {
    if (value >= 0) {
      _radius = value;
    } else {
      throw Exception("Radius Cannot Be Negative");
    }
  }

  double calculateCircumference() {
    return 2 * 3.14159 * _radius;
  }
}
