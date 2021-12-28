main() {
  List<int> list1 = [1, 2, 3, 4, 5];
  List<int>? list2;
  List<int> list3 = [9, 2, 4, -3, 10];
  List<String> list4 = ['Yuji', 'Megumi', 'Nobara'];
  List<Map> list5 = [
    {'name': 'Yuji'},
    {'name': 'Megumi'},
    {'name': 'Nobara'}
  ];

  print('length: ${list1.length}');
  print('first: ${list3.first}');
  print('last: ${list3.last}');

  print('isEmpty: ${list3.isEmpty}');
  print('asMap: ${list3.asMap()}'); //Convierte la List en un Map
  print('indexOf: ${list4.indexOf('Nobara')}');
  print(
      'indexWhere: ${list5.indexWhere((element) => element['name'] == 'Nobara')}');
  print(
      'firstWhere: ${list5.firstWhere((element) => element['name'] == 'Megumi')}');
  print(
      'where: ${list5.where((element) => element['name'].indexOf('u') >= 0)}');
  print('remove: ${list4.remove('Megumi')}');

  list5.removeWhere((element) => element['name'] == 'Nobara');
  print('removeWhere: $list5');

  list3.shuffle(); //Desordena la lista
  print('shuffle: ${list3}');

  list3.sort(); //Ordena la lista
  print('sort: ${list3}');

  print('reversed: ${list3.reversed.toList()}');

  list4.forEach((element) => print('forEach: $element'));

  final newList = list4.map((e) => e.toUpperCase()).toList();
  print('map $newList');
}
