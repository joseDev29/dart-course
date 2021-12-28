class Person {
  String name;
  int age;

  Person({required this.name, required this.age});

  void printPerson() => print('Name: $name , Age: $age');
}

class Client extends Person {
  String address;
  List<String> orders;

  //Los : permiten ejecutar el codigo siguiente antes de generar la instancia de la clase
  Client(
      {required String name,
      required int age,
      required this.address,
      required this.orders})
      : super(name: name, age: age); // super inicializa la clase padre
}

main() {
  final me = new Client(
      name: 'Eren',
      age: 18,
      address: 'Shiganshina',
      orders: ['Hot dog', 'Pizza']);

  me.printPerson();
}
