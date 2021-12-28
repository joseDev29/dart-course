class Person {
  String name = '';
  int _age = 12;
  String _bio = ''; // _ convierte a una propiedad en privada

  String get bio => _bio;
  int get age {
    return _age;
  }

  set bio(String bio) => _bio = bio;
  set age(int age) => _age = age;

  // Person(String name) {
  //   this.name = name;
  // }

  //Implicitamente asigna los parametros a las propiedades indicadas
  // Person(this.name)

  Person({required this.name});

  //Constructor por nombre
  Person.CustomPerson({required this.name}) {
    _age = 50;
  }

  @override //Decorator que le dice al compilador que debe sobreescribir el metodo
  String toString() {
    return '$name $age $_bio'; //El this no es obligatorio
  }
}
