//Create a Vehicle class with brand, model, and year properties, and a method called drive() that prints a message
//indicating that the vehicle is being driven. Then create a Car class that inherits from Vehicle and has a numDoors property.
//Override the drive() method in the Car class to print a message that includes the number of doors.
void main(List<String> args) {
  Vehicle vehicle1 = Vehicle("Toyota", "Century", 2018);
  Vehicle vehicle2 = Vehicle("Tesla", "Roadster", 2018);
  vehicle1.drive();
  vehicle2.drive();

  Car car1 = Car("Ferrari", "488 Pista", 2018, 2);
  Car car2 = Car("Ford", "GT", 2017, 2);
  car1.drive();
  car2.drive();
}

class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  void drive() {
    print("\nI have a $brand.\nModel: $model \nYear: $year");
  }
}

class Car extends Vehicle {
  int numDoors;

  Car(String brand, String model, int year, this.numDoors)
      : super(brand, model, year);

  void drive() {
    print(
        "\nI have a $brand.\nModel: $model \nYear: $year\nNumber of Doors: $numDoors\n");
  }
}
