main() {
  String name = 'Eren';
  String lastname = 'Jeager';
  String completeName = '$name $lastname';
  String completeName2 = '$name' ' ' '$lastname';

  print(completeName);
  print(completeName2);

  print('length: ${completeName.length}');
  print('isEmpty: ${completeName.isEmpty}');

  //Recibe un patron o string, y busca coincidencias dentro del string,
  print('contains: ${completeName.contains("Eren")}');
  //Tambien puede recibir un indice, en ese caso verifica que la coincidencia se de en ese index o a partir de ese index
  print('contains index: ${completeName.contains("e", 2)}');

  print(
      'endsWith: ${completeName.endsWith("o")}'); //Verifica si el string termina en el parametro recibido

  //Agrega el valor del segundo parametro las veces que sea necesario para que el length del string llegue al valor del primer parametro
  //Aplica para padding left y right
  print('padLeft: ${completeName.padLeft(20, "...")}');
  print('padLeft: ${completeName.padRight(20, "...")}');

  print('operator []: ${completeName[5]}');

  print('operator *: ${completeName * 3}'); //Multiplica el valor del array

  //Reemplaza todas las coincidencias
  print('replaceAll: ${completeName.replaceAll('e', 'a')}');
  print('replaceAll regex: ${completeName.replaceAll(RegExp(r'e|E'), 'a')}');

  print('substring: ${completeName.substring(0, 5)}');
  print('indexOf: ${completeName.indexOf('J')}');

  print('split: ${completeName.split('')}');

  final String capitalizeLast =
      completeName[completeName.length - 1].toUpperCase();
  final String completeNameCapitalLast =
      completeName.substring(0, completeName.length - 1) + capitalizeLast;
  print('capitalize last:  $completeNameCapitalLast');
}
