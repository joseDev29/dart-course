main() {
  Future timeout = Future.delayed(Duration(seconds: 3), () {
    print('3 seconds later');
    return 'Future text';
  });

  timeout
      .then((value) => 'Future then: $value')
      .then(print)
      .catchError((err) => print('Future error'));

  print('End main');
}
