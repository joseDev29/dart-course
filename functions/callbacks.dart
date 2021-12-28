main() {
  findUser('200', (Map user) => print(user));
}

void findUser(String id, Function callback) {
  Map user = {'id': id, 'name': 'Pepe'};
  callback(user);
}
