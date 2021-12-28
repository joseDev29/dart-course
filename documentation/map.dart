main() {
  final person = {'name': 'Yuji', 'lastname': 'Itadori'};

  final address = {'country': 'Japan', 'city': 'Tokyo'};

  print('length: ${person.length}');
  print('keys: ${person.keys.toList()}');
  print('values: ${person.values.toList()}');

  person.addAll(address);
  print('addAll: ${person}');

  person.remove('city');
  print('remove: $person');

  person.removeWhere((key, value) => key == 'country');
  print('removeWhere: $person');

  person.forEach((key, value) => print('forEach $key : $value'));

  print(
      'map: ${person.map((key, value) => MapEntry(key, value.toUpperCase()))}');
}
