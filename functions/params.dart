void main() {
  String Function(String) greet = (name) =>
      'Good morning $name'; //Funcion como variable, con argumento posicional

  print(greet("Pepe"));

  // f7(message: 'Hello', name: 'Pepe', age: 18);
  // f8(23, true, message: 'Hola', name: 'Pepe');
}

//Argumento posicional cuyo valor no es opcional, pero si puede ser null
void f(String message, String? name) {}

//Argumento posicional opcional que puede ser null
void f2(String message, [String? name]) {}

//Argumento posicional opcional con valor por defecto
void f3(String message, [String name = 'Name']) {}

//Agumento por nombre el opcional que puede ser null
void f5({String? message, String? name, int? age}) {}

//Argumento por nombre opcional con valor por defecto
void f6({String message = 'Hello', String name = 'user', int age = 10}) {}

//Argumento por nombre requerido
void f7({required String message, required String name, required int age}) {}

//Argumentos combinados, los posicionales deben ir antes de los por nombre
void f8(int age, bool isActive,
    {required String message, String name = 'user'}) {}
