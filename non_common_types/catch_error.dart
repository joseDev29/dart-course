main() {
  Future timeout = Future.delayed(Duration(seconds: 3), () {
    print('3 seconds later');
    throw 'Ohh, error!!!';
  });

  timeout
      .then((value) => 'Future then: $value')
      .then(print)
      .catchError((err) => print('Error: $err'));

  print('End main');
}
