import 'dart:math';

main() {
  int random = Random()
      .nextInt(7); //Retorna un entero positivo entre 0 y 7, sin incluir el 7

  switch (random) {
    case 0:
      print('Es lunes');
      break;
    case 1:
      print('Es martes');
      break;
    case 2:
      print('Es miercoles');
      break;
    case 3:
      print('Es jueves');
      break;
    case 4:
      print('Es viernes');
      break;
    case 5:
      print('Es sabado');
      break;
    case 6:
      print('Es domingo');
      break;
    default:
      print('No es un dia valido');
      break;
  }
}
