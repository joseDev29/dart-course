import 'dart:io';

main() {
  try {
    stdout.writeln('Cual es tu edad?');
    int edad = int.parse(stdin.readLineSync() ?? '0');

    String message = edad >= 18
        ? 'Eres una adulto'
        : edad > 12
            ? 'Eres un adolecente'
            : 'Eres un niño';

    // if (edad >= 18) {
    //   stdout.writeln('Eres un adulto');
    // } else if (edad > 12) {
    //   stdout.writeln('Eres un adolecente');
    // } else {
    //   stdout.writeln('Eres un niño');
    // }

    stdout.writeln(message);
  } catch (e) {
    stdout.writeln('La edad ingresa no es valida');
  }
}
