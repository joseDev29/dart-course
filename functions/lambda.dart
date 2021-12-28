void main(List<String> args) {
  int a = 10, b = 40;

  int result = add(a, b);

  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0, 2, 4, 4, 5, 2];

  //Retorna una iterable con todos los valores que cumplan la condicion
  Iterable<int> newIterable = list.where((int number) => number % 2 == 0);

  Set<int> newSet = newIterable.toSet();

  list = newSet.toList();

  print(result);
}

int add(int a, int b) => a + b;
