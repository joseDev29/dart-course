//No se pueden crear nuevas instancias de clases abstractas
//solo funcionan como base de clases hijas
abstract class Vehicle {
  bool on = false;

  void turnOn() => on = true;
  void turnOff() => on = false;

  //Esto hace que las clases hijas deban implementar
  //obligatoriamente un metodo checkEngine que retorne un bool
  bool checkEngine();
}

class Car extends Vehicle {
  int mileage = 0;

  @override
  bool checkEngine() => true;
}

main() {
  final ford = new Car();

  ford.turnOn();
  ford.turnOff();

  ford.checkEngine();
}
