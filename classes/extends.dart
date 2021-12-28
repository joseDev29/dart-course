class Vehicle {
  bool on = false;

  void turnOn() => on = true;
  void turnOff() => on = false;
}

class Car extends Vehicle {
  int mileage = 0;
}

main() {
  final ford = new Car();

  ford.turnOn();
  ford.turnOff();
}
