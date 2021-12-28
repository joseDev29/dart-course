import 'dart:io';

main() {
  try {
    int count = 0;
    String next = 'y';

    while (next == 'y') {
      stdout.writeln('Contador $count');
      stdout.writeln('Desea continuar?');
      next = stdin.readLineSync()?.toLowerCase() ?? 'n';
      count++;
    }

    stdout.writeln('El contador finalizo en $count');
  } catch (e) {
    stdout.writeln('El valor ingresado no es valido');
  }
}
