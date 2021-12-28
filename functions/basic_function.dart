main() {
  final String message = hello('Pepe');
  final bool isActive = active('active');
  final int result = add(13, 15);

  int Function(int, int) reduce = (a, b) => a - b;

  printMessage('Test message');

  print(message);
  print(isActive);
  print(result);
  print(reduce(3, 4));
}

String hello(String name) => 'Hello $name';

bool active(String status) {
  return status == 'active';
}

void printMessage(String message) => print(message);

void alert(String message) {
  print(message);
}

int add(int a, int b) => a + b;
