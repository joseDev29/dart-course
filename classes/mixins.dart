//Los mixins no pueden tener constructores
mixin Logger {
  void printter(String text) {
    final today = DateTime.now();
    print('$today :::: $text');
  }
}

mixin Logger2 {
  void printter2(String text) {
    final today = DateTime.now();
    print('$today :::: $text');
  }
}

mixin Logger3 {
  void printter3(String text) {
    final today = DateTime.now();
    print('$today :::: $text');
  }
}

//Las clases pueden ser utilizadas como mixins
class Logger4 {
  void printter4(String text) {
    final today = DateTime.now();
    print('$today :::: $text');
  }
}

abstract class Astro with Logger, Logger2, Logger4 {
  String name;

  Astro({required this.name}) {
    printter('Init del astro');
  }

  void iExist() => printter('I am exist');
}

class Asteroid extends Astro with Logger3 {
  Asteroid({required String name}) : super(name: name);
}

//Los mixin no pueden ser instanciados
main() {
  final ceres = new Asteroid(name: 'Ceres');

  ceres.iExist();
  ceres.printter2('Print with Logger 2');
  ceres.printter3('Print with Logger 3');
  ceres.printter4('Print with Logger 4');
}
