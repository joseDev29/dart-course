String upperCase(String text) {
  text = text.toUpperCase();
  return text;
}

Map<String, String> upperCaseMap(Map<String, String> map) {
  map['name'] = map['name']!
      .toUpperCase(); //El ! fuerza el codigo a pesar de las advertencias del compilador
  return map;
}

//Loas argumentos primitivos son pasados por valor
main() {
  String name = 'Pepe';
  String name2 = upperCase(name);

  print(name);
  print(name2);

  Map<String, String> person = {'name': 'Eren Jeager'};
  Map<String, String> person2 = upperCaseMap(
      person); //Los valores compuestos se pasan por referencia, por lo tanto person 2 esta modificando directamente a person
  //Y aque ambos apuntan al mismo espacio en memoria
  Map<String, String> person3 =
      upperCaseMap({...person}); //Una de las forma de romper la referencia

  print(person);
  print(person2);
  print(person3);
}
