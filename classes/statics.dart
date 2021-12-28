class Tools {
  static const List<String> list = ['Hammer', 'Wrench', 'Screwdriver'];
  static List<String> listEdit = ['Hammer', 'Wrench', 'Screwdriver'];

  static printList() => print(list);
}

main() {
  Tools.listEdit.add('Tongs');
  Tools.listEdit.forEach(print);

  Tools.printList();
}
