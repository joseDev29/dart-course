main() {
  var a = 10;
  final int b = 10; //final es mas ligera en memoria
  const int c = 10; //const se asigna en tiempo de compilacion

  final int u; //final no puede cambiarse despues de ser asignada
  u = 30;

  //Late le comunica al compilador que aunque la variable al inicializarse no tenga un valor definido
  //en el momento en el que se use, esta ya tendra un valor asignado
  late double x;
  x = 10;
  x = 20;

  late final double y;
  y = 20;

  final peopleFinal = ['Juan', 'Pedro', 'Fernando'];
  const peopleConst = ['Juan', 'Pedro', 'Fernando'];
  List<String> peopleConst2 = const ['Juan', 'Pedro', 'Fernando'];

  peopleFinal.add('Maria'); //Este codigo se ejecutara sin problemas
  peopleConst.add('Maria'); //Esta funcion fallara en tiempo de compilacion
}
