class Service {
  static final Service _singleton =
      new Service._private(); //Instancia unica y privada

  factory Service() =>
      _singleton; //El constructor factory que sera publico y siempre devolvera la misma instancia

  Service._private(); //Constructor privado. el _ lo hace privado

  String url = 'http://link.com';
  String key = 'abc123';
}
