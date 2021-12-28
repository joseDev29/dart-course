main() {
  int a = 10; //Asignacion
  int? b;
  b ??= 20; //Asigna el valor unicamente si la variable es null

  int c = 23;
  String res = c > 25 ? 'C es mayor a 25' : 'C es menor o igual a 25';

  int? f;
  int? e;
  int? r;

  int d = e ?? a; //Si e es null entonces use a
  int z = f ?? e ?? r ?? 100;

  bool j = a > b;
  bool x = d < z;
  bool k = a == d;
  bool t = a != b;
  bool p = a >= z;
  bool q = a <= d;

  int i = 10;
  String o = '10';

  bool isInt = i is int;
  bool isNotString = j is! String;
}
