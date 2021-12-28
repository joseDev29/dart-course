import 'dart:io';

main() {
  // int count = 0;
  // for (int i = 0; i < 10; i++) {
  //   print('Hello ${i + 1}, index: $i, count: ${count += i}');
  // }
  try {
    stdout.writeln('Ingresa el numero base de la tabla: ');

    int number = int.parse(stdin.readLineSync() ?? '1');

    stdout.writeln('Tabla del $number');

    for (int i = 1; i <= 12; i++) {
      stdout.writeln('$number * $i = ${number * i}');
    }
  } catch (e) {
    stdout.writeln('El numero ingresado no es valido');
  }
}
