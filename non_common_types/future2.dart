import 'dart:io';

main() {
  File file =
      new File(Directory.current.path + '\\non-common-types\\files\\users.txt');

  Future<String> text = file.readAsString();

  String textSync = file.readAsStringSync();

  text.then(print);

  print('Sycn text\n' + textSync); // \n significa salto de linea

  print('End main');
}
