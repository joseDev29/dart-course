import 'dart:io';

main() async {
  String path = Directory.current.path + '\\non-common-types\\files\\users.txt';

  String text = await readFile(path);

  print(text);

  print('End main');
}

Future<String> readFile(String path) async {
  File file = new File(path);
  return file.readAsString();
}
