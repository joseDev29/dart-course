main() {
  double number = 3.1416;
  double number2 = -3.1416;
  double number3 = 0;
  double infinity = double.infinity;

  print('Sign: ${number.sign} :: $number');
  print('Sign: ${number2.sign} :: $number2');
  print('Sign: ${number3.sign} :: $number3');

  print('isFinite ${number.isFinite} :: $number');

  print('isFinite ${infinity.isFinite} :: $infinity');

  print('round ${number.round()} :: $number');
  print('roundToDouble ${number.roundToDouble()} :: $number');

  print(
      'clamp ${number.clamp(1, 3)} :: $number'); //Intenta ingresar el numero dentro del rango pasado en los parametros
}
