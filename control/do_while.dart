import 'dart:io';

main() {
  int count = 0;
  String next = 'n';

  do {
    stdout.writeln('Contador en $count');
    stdout.writeln('Desea continuar?');
    next = stdin.readLineSync()?.toLowerCase() ?? 'n';
    count++;
  } while (next == 'y');

  stdout.writeln('El contador finalizo en $count');
}
