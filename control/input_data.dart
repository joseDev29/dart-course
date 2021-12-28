import 'dart:io';

main() {
  //Imprimir en terminal
  stdout.write('Hello world?');
  stdout.write('Hello world?\n'); //salto de linea
  stdout.writeln('Hello world?'); //salto de linea

  stdout.writeln('Ingresa tu nombre: ');

  //Leer informacion
  String name = stdin.readLineSync() ?? 'Usuario';
  String message = 'Hola ' + name;
  stdout.writeln(message);
}
