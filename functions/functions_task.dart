import 'dart:io';

String input() => stdin.readLineSync() ?? '';

void output(String message) => stdout.writeln(message);

String ask(String message) {
  output(message);
  String result = input();
  return result;
}

double getDeductions(double salary, double deductionsPercentage) =>
    salary * deductionsPercentage;

double getNetSalary(double salary, double deductionsPercentage) =>
    salary - getDeductions(salary, deductionsPercentage);

Map getUser() {
  String name = ask('¿Cúal es su nombre?');

  String age = ask('¿Qué edad tienes?');

  String country = ask('¿En qué país naciste?');

  final Map user = {'name': name, 'age': age, 'country': country};

  double salary = 1500;
  double deductions = getDeductions(salary, 0.15);
  double netSalary = getNetSalary(salary, 0.15);

  user.addAll(
      {'salary': salary, 'deductions': deductions, 'netSalary': netSalary});

  return user;
}

List<Map> getUsers(int usersCount) {
  List<Map> users = [];

  for (int i = 1; i <= usersCount; i++) {
    output('=========== Usuario $i =============');
    Map user = getUser();
    output('Usuario $i');
    output(user.toString());
    users.add(user);
  }

  return users;
}

main() {
  getUsers(2);
}
