import 'dart:async';

main() {
  // final StreamController<String> streamController = new StreamController(); //Otra forma de declararlo
  final streamController =
      new StreamController<String>(); //Stream de una sola subscripcion

  final streamControllerMultiple = new StreamController<
      String>.broadcast(); //Stream de multiples subscripciones

  streamController.stream.listen(
    (data) {
      print('Data $data');
    },
    onError: (err) => print(err),
    onDone: () => print('Stream finish'),
    // cancelOnError: true
  ); //Si cancelOnError es true, onDone no se ejecutara en caso de error

  // streamController.stream.handleError((err) => print(err));

  streamControllerMultiple.stream.listen((event) {});
  streamControllerMultiple.stream.listen((event) {});
  streamControllerMultiple.stream.listen((event) {});

  streamController.sink.add('Datito 1');
  streamController.sink.add('Datito 2');
  streamController.sink.addError('Ups, errorcito!');
  streamController.sink.add('Datito 3');

  streamController.close();

  print('End main');
}
