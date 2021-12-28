main() {
  firstLoop: //Etiquete del ciclo
  for (int i = 0; i < 5; i++) {
    print('Valor de i: $i');
    secondLoop: //Etiquete del ciclo
    for (int j = 0; j < 5; j++) {
      if (j == 3) {
        break secondLoop; //finaliza el ciclo interior
      }

      if (j == 4) {
        break firstLoop; //Finaliza el ciclo superior
      }
      print('Valor de j: $j');
    }
  }
}
