import 'dart:collection';

main() {
  Queue<int> queue = new Queue();

  queue.addAll([10, 20, 30, 40, 50]);
  queue.add(60);

  print(queue);

  //Iterador de la cola
  Iterator i = queue.iterator;

  //moveNext retorna un booleano dependiendo de is aun hay valores por recorrer en la cola
  while (i.moveNext()) {
    //current hace referencia al valor actual en la cola
    print(i.current);
  }
}
