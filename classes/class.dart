import 'Person.dart';

main() {
  final person = new Person(name: 'Eren');

  person.age = 15;
  person.bio = 'Attack titan';

  final person2 = new Person(name: 'Annie');

  person2
    ..age = 18
    ..bio = 'Male titan';

  final person3 = new Person.CustomPerson(name: 'Mikasa');
  person3.bio = 'Ackerman';

  print(person);
  print(person2);
  print(person3);
}
